`timescale 1ns/1ps

module axis_demosaic #(
    parameter integer H_ACTIVE    = 1280,
    parameter integer V_ACTIVE    = 720,
    parameter [1:0]   BAYER_PHASE = 2'b00   // (0,0)의 색: 00=R 01=G 10=Gb 11=B
)(
    input  wire        aclk,
    input  wire        aresetn,

    // slave: Bayer RAW8
    input  wire [7:0]  s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tuser,    // BD 연결용
    input  wire        s_axis_tlast,    // 미사용(카운터 기준)

    // master : RGB888
    output reg  [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tuser,
    output reg         m_axis_tlast
);

    // 상태
    localparam [1:0] S_PREFILL = 2'd0,   // 입력 행0 버퍼링 (출력 없음)
                     S_SCAN    = 2'd1,   // 센터 행 cy 처리 (fc=0~H)
                     S_FLUSH   = 2'd2;   // 파이프 꼬리 배출 (3비트)

    reg [1:0]  state;
    reg [11:0] x_in;                     // PREFILL 열
    reg [11:0] fc;                       // SCAN 전방 fetch 열 (0~H)
    reg [11:0] cy;                       // SCAN 센터 행 (0~V-1)
    reg [1:0]  flush_cnt;

    // out_ok : 출력 슬롯이 비어 있거나 이번 에지에 비워짐
    // need_input : 이번 fetch가 라이브 입력 샘플을 소비하는가
    // adv : 파이프라인 전체가 한 칸 전진
    wire out_ok     = !m_axis_tvalid || m_axis_tready;
    wire need_input = (state == S_PREFILL) || ((state == S_SCAN) && (cy < V_ACTIVE-1) && (fc < H_ACTIVE));
    wire adv        = out_ok && (!need_input || s_axis_tvalid);
    assign s_axis_tready = out_ok && need_input; // 백프레셔 전파

    // 라인버퍼 2줄 + 2비트 지연 쓰기
    // 행 r은 buf[r&1]에 저장. SCAN 중 소비되는 행은 cy+1 -> buf[~cy[0]]
    reg [7:0] buf0 [0:H_ACTIVE -1];
    reg [7:0] buf1 [0:H_ACTIVE - 1];

    wire        wr_sel_now  = (state == S_PREFILL) ? 1'b0 : ~cy[0];
    wire [11:0] wr_addr_now = (state == S_PREFILL) ? x_in : fc;

    reg        wp0_v, wp1_v; // 쓰기 파이프 (2단)
    reg        wp0_s, wp1_s;
    reg [11:0] wp0_a, wp1_a;
    reg [7:0]  wp0_d, wp1_d;

    // 읽기 주소: min(fc, H-1) - fc==H 비트가 열 H-1을 재fetch
    wire [11:0] rd_addr = (fc >= H_ACTIVE - 1) ? H_ACTIVE - 1 : fc;
    reg  [7:0]  q0, q1;                  // BRAM 읽기 레지스터
    reg  [7:0]  t2_d;                    // 라이브 샘플 1비트 지연

    always @(posedge aclk) begin

        if (adv) begin

            if (wp1_v) begin

                if (wp1_s) buf1[wp1_a] <= wp1_d;
                else       buf0[wp1_a] <= wp1_d;

            end

            wp1_v <= wp0_v;  wp1_s <= wp0_s;  wp1_a <= wp0_a;  wp1_d <= wp0_d;
            wp0_v <= need_input;
            wp0_s <= wr_sel_now;
            wp0_a <= wr_addr_now;
            wp0_d <= s_axis_tdata;

            q0 <= buf0[rd_addr];
            q1 <= buf1[rd_addr];
            if (need_input) t2_d <= s_axis_tdata;   // fc == H / 드레인 땐 홀드

        end

        if (!aresetn) begin
            wp0_v <= 1'b0;  wp1_v <= 1'b0;
        end

    end

    // 스캔 상태머신
    always @(posedge aclk) begin

        if (!aresetn) begin

            state <= S_PREFILL;
            x_in <= 0;
            fc <= 0;
            cy <= 0;
            flush_cnt <= 0;

        end

        else if (adv) begin

            case (state)
                S_PREFILL: begin

                    if (x_in == H_ACTIVE - 1) begin

                        state <= S_SCAN;  
                        x_in <= 0;  
                        fc <= 0;  
                        cy <= 0;

                    end 
                    
                    else x_in <= x_in + 1;

                end

                S_SCAN: begin

                    if (fc == H_ACTIVE) begin

                        fc <= 0;
                        if (cy == V_ACTIVE - 1) begin

                            state <= S_FLUSH;
                            flush_cnt <= 0;
                            cy <= 0;

                        end 
                        
                        else cy <= cy + 1;

                    end 
                    
                    else fc <= fc + 1;

                end

                default: begin           // S_FLUSH: 파이프 깊이(2) + 여유 1

                    if (flush_cnt == 2) state <= S_PREFILL;
                    else                flush_cnt <= flush_cnt + 1;

                end

            endcase

        end

    end

    // 태그 / 셀렉트 파이프
    // 윈도우에는 2비트 뒤 완성 -> 센터 (j-1) 태그를 두 번 레지스터
    wire        cvalid_f = (state == S_SCAN) && (fc != 0);
    wire [11:0] ccx_f    = fc - 1;

    // 행 클램프 셀렉트
    wire t0_from_cur_f = (cy == 0);              // 위 클램프: t0 := 행 cy
    wire t2_from_buf_f = (cy == V_ACTIVE - 1);   // 드레인:    t2 := 행 cy
    wire row_par_f     = cy[0];                  // 행 cy가 든 버퍼 번호

    reg        p1_cvalid, p2_cvalid;
    reg [11:0] p1_ccx,    p2_ccx;
    reg [11:0] p1_ccy,    p2_ccy;
    reg        p1_t0cur, p1_t2buf, p1_rpar;

    // 3x3 윈도우
    reg [7:0] w0 [0:2];                  // 윗행 
    reg [7:0] w1 [0:2];                  // 센터행 
    reg [7:0] w2 [0:2];                  // 아랫행

    wire [7:0] t1_val = p1_rpar  ? q1 : q0;             // 행 cy
    wire [7:0] t0_val = p1_t0cur ? t1_val
                                 : (p1_rpar ? q0 : q1); // 행 cy-1
    wire [7:0] t2_val = p1_t2buf ? t1_val : t2_d;       // 행 cy+1 or 클램프

    always @(posedge aclk) begin

        if (adv) begin

            w0[2] <= t0_val;  w0[1] <= w0[2];  w0[0] <= w0[1];
            w1[2] <= t1_val;  w1[1] <= w1[2];  w1[0] <= w1[1];
            w2[2] <= t2_val;  w2[1] <= w2[2];  w2[0] <= w2[1];

            p1_cvalid <= cvalid_f;   p2_cvalid <= p1_cvalid;
            p1_ccx    <= ccx_f;      p2_ccx    <= p1_ccx;
            p1_ccy    <= cy;         p2_ccy    <= p1_ccy;
            p1_t0cur  <= t0_from_cur_f;
            p1_t2buf  <= t2_from_buf_f;
            p1_rpar   <= row_par_f;

        end

        if (!aresetn) begin

            p1_cvalid <= 1'b0;  p2_cvalid <= 1'b0;

        end

    end

    // bilinear 조합
    wire lc = (p2_ccx == 0);             // 좌 클램프 : 왼쪽 탭 : 센터 열
    wire [7:0] L0 = lc ? w0[1] : w0[0],  C0 = w0[1],  R0 = w0[2];
    wire [7:0] L1 = lc ? w1[1] : w1[0],  C1 = w1[1],  R1 = w1[2];
    wire [7:0] L2 = lc ? w2[1] : w2[0],  C2 = w2[1],  R2 = w2[2];

    wire [9:0] sum_cross = L1 + R1 + C0 + C2;   // 좌 + 우 + 상 + 하
    wire [9:0] sum_diag  = L0 + R0 + L2 + R2;   // 대각 4

    wire [8:0] sum_lr    = L1 + R1;
    wire [8:0] sum_ud    = C0 + C2;
    wire [7:0] cross = sum_cross[9:2];         
    wire [7:0] diag  = sum_diag[9:2];
    wire [7:0] lr    = sum_lr[8:1];         
    wire [7:0] ud    = sum_ud[8:1];

    wire px = p2_ccx[0] ^ BAYER_PHASE[0];
    wire py = p2_ccy[0] ^ BAYER_PHASE[1];

    reg [7:0] r8, g8, b8;
    always @* begin

        case ({py, px})

            2'b00: begin r8 = C1;    g8 = cross; b8 = diag;  end // R 사이트
            2'b01: begin r8 = lr;    g8 = C1;    b8 = ud;    end // Gr
            2'b10: begin r8 = ud;    g8 = C1;    b8 = lr;    end // Gb
            default: begin r8 = diag; g8 = cross; b8 = C1;   end // B

        endcase

    end

    // 출력 레지스터 
    always @(posedge aclk) begin

        if (!aresetn) begin

            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 24'd0;
            m_axis_tuser  <= 1'b0;
            m_axis_tlast  <= 1'b0;

        end 

        else if (out_ok) begin

            m_axis_tvalid <= adv && p2_cvalid;
            if (adv) begin

                m_axis_tdata <= {r8, g8, b8};
                m_axis_tuser <= (p2_ccx == 0) && (p2_ccy == 0); // SOF
                m_axis_tlast <= (p2_ccx == H_ACTIVE - 1);       // EOL

            end

        end

    end

endmodule
