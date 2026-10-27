`timescale 1ns/1ps

module axis_gaussian #(
    parameter integer H_ACTIVE = 1280,
    parameter integer V_ACTIVE = 720
)(
    input  wire        aclk,
    input  wire        aresetn,
    input  wire [23:0] s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tuser,
    input  wire        s_axis_tlast,
    output reg  [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tuser,
    output reg         m_axis_tlast
);
    localparam [1:0] S_PREFILL = 2'd0, S_SCAN = 2'd1, S_FLUSH = 2'd2;

    reg [1:0]  state;
    reg [11:0] x_in, fc, cy;
    reg [1:0]  flush_cnt;

    wire out_ok     = !m_axis_tvalid || m_axis_tready;
    wire need_input = (state == S_PREFILL) ||
                      ((state == S_SCAN) && (cy < V_ACTIVE - 1) && (fc < H_ACTIVE));
    wire adv        = out_ok && (!need_input || s_axis_tvalid);
    assign s_axis_tready = out_ok && need_input;

    // 라인버퍼 2줄 (24b) + 2비트 지연 쓰기
    reg [23:0] buf0 [0:H_ACTIVE - 1];
    reg [23:0] buf1 [0:H_ACTIVE - 1];
    wire        wr_sel_now  = (state == S_PREFILL) ? 1'b0 : ~cy[0];
    wire [11:0] wr_addr_now = (state == S_PREFILL) ? x_in : fc;

    reg        wp0_v, wp1_v, wp0_s, wp1_s;
    reg [11:0] wp0_a, wp1_a;
    reg [23:0] wp0_d, wp1_d;

    wire [11:0] rd_addr = (fc >= H_ACTIVE - 1) ? H_ACTIVE - 1 : fc;
    reg  [23:0] q0, q1, t2_d;

    always @(posedge aclk) begin
        if (adv) begin
            if (wp1_v) begin
                if (wp1_s) begin
                    buf1[wp1_a] <= wp1_d;
                end
                else begin
                    buf0[wp1_a] <= wp1_d;
                end
            end
            wp1_v <= wp0_v;
            wp1_s <= wp0_s;
            wp1_a <= wp0_a;
            wp1_d <= wp0_d;
            wp0_v <= need_input;
            wp0_s <= wr_sel_now;
            wp0_a <= wr_addr_now;
            wp0_d <= s_axis_tdata;
            q0 <= buf0[rd_addr];
            q1 <= buf1[rd_addr];
            if (need_input) begin
                t2_d <= s_axis_tdata;
            end
        end
        if (!aresetn) begin
            wp0_v <= 1'b0;
            wp1_v <= 1'b0;
        end
    end

    // 스캔 FSM
    always @(posedge aclk) begin
        if (!aresetn) begin
            state     <= S_PREFILL;
            x_in      <= 0;
            fc        <= 0;
            cy        <= 0;
            flush_cnt <= 0;
        end
        else if (adv) begin
            case (state)
                S_PREFILL: begin
                    if (x_in == H_ACTIVE - 1) begin
                        state <= S_SCAN;
                        x_in  <= 0;
                        fc    <= 0;
                        cy    <= 0;
                    end
                    else begin
                        x_in <= x_in + 1;
                    end
                end
                S_SCAN: begin
                    if (fc == H_ACTIVE) begin
                        fc <= 0;
                        if (cy == V_ACTIVE - 1) begin
                            state     <= S_FLUSH;
                            flush_cnt <= 0;
                            cy        <= 0;
                        end
                        else begin
                            cy <= cy + 1;
                        end
                    end
                    else begin
                        fc <= fc + 1;
                    end
                end
                default: begin
                    if (flush_cnt == 2) begin
                        state <= S_PREFILL;
                    end
                    else begin
                        flush_cnt <= flush_cnt + 1;
                    end
                end
            endcase
        end
    end

    // 태그/셀렉트 파이프
    wire        cvalid_f = (state == S_SCAN) && (fc != 0);
    wire [11:0] ccx_f    = fc - 1;
    wire        t0_from_cur_f = (cy == 0);
    wire        t2_from_buf_f = (cy == V_ACTIVE - 1);
    wire        row_par_f     = cy[0];

    reg        p1_cvalid, p2_cvalid;
    reg [11:0] p1_ccx, p2_ccx, p1_ccy, p2_ccy;
    reg        p1_t0cur, p1_t2buf, p1_rpar;

    // 3x3 윈도우
    reg [23:0] w0 [0:2];
    reg [23:0] w1 [0:2];
    reg [23:0] w2 [0:2];

    wire [23:0] t1_val = p1_rpar ? q1 : q0;
    wire [23:0] t0_val = p1_t0cur ? t1_val : (p1_rpar ? q0 : q1);
    wire [23:0] t2_val = p1_t2buf ? t1_val : t2_d;

    always @(posedge aclk) begin
        if (adv) begin
            w0[2] <= t0_val;
            w0[1] <= w0[2];
            w0[0] <= w0[1];
            w1[2] <= t1_val;
            w1[1] <= w1[2];
            w1[0] <= w1[1];
            w2[2] <= t2_val;
            w2[1] <= w2[2];
            w2[0] <= w2[1];
            p1_cvalid <= cvalid_f;
            p2_cvalid <= p1_cvalid;
            p1_ccx    <= ccx_f;
            p2_ccx    <= p1_ccx;
            p1_ccy    <= cy;
            p2_ccy    <= p1_ccy;
            p1_t0cur  <= t0_from_cur_f;
            p1_t2buf  <= t2_from_buf_f;
            p1_rpar   <= row_par_f;
        end
        if (!aresetn) begin
            p1_cvalid <= 1'b0;
            p2_cvalid <= 1'b0;
        end
    end

    // 중심 조합: 채널별 3x3 가중합 (demosaic의 보간을 대체)
    wire lc = (p2_ccx == 0);  // 좌 클램프
    wire [23:0] TL = lc ? w0[1] : w0[0], TC = w0[1], TR = w0[2];  // 윗행
    wire [23:0] ML = lc ? w1[1] : w1[0], MC = w1[1], MR = w1[2];  // 센터행
    wire [23:0] BL = lc ? w2[1] : w2[0], BC = w2[1], BR = w2[2];  // 아랫행

    // 가중합 1,2,1 / 2,4,2 / 1,2,1 >> 4
    function [7:0] gauss8;
        input [7:0] tl, tc, tr, ml, mc, mr, bl, bc, br;
        reg [11:0] s;
        begin
            s = tl + (tc << 1) + tr
              + (ml << 1) + (mc << 2) + (mr << 1)
              + bl + (bc << 1) + br;
            gauss8 = s[11:4];
        end
    endfunction

    wire [7:0] r8 = gauss8(TL[23:16], TC[23:16], TR[23:16],
                           ML[23:16], MC[23:16], MR[23:16],
                           BL[23:16], BC[23:16], BR[23:16]);
    wire [7:0] g8 = gauss8(TL[15:8], TC[15:8], TR[15:8],
                           ML[15:8], MC[15:8], MR[15:8],
                           BL[15:8], BC[15:8], BR[15:8]);
    wire [7:0] b8 = gauss8(TL[7:0], TC[7:0], TR[7:0],
                           ML[7:0], MC[7:0], MR[7:0],
                           BL[7:0], BC[7:0], BR[7:0]);

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
                m_axis_tuser <= (p2_ccx == 0) && (p2_ccy == 0);
                m_axis_tlast <= (p2_ccx == H_ACTIVE - 1);
            end
        end
    end

endmodule
