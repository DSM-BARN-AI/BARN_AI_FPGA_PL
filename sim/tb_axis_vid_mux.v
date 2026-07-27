`timescale 1ns/1ps
// ============================================================
// tb_axis_vid_mux - self-checking TB (verification infra)
// spec: docs/05_gamma_mux_spec.md section C
//
// 스티뮬러스 = 검증된 axis_tpg 2개 실인스턴스:
//   s0: pattern 0 (컬러바) / s1: pattern 3 (단색 0x808080)
// 파이썬 골든 불필요 - 프레임 단위 자가검사:
//   R2 완전 프레임(지오메트리 정렬), 프레임 내 단일 소스, R1 안정성
//
// plusargs: +ready_mode=0/1  +sel_mode=0(고정0)/1(고정1)/2(랜덤 토글)
//           +frames=N (수집할 출력 프레임 수, 기본 8)  +seed=N
// ============================================================
module tb_axis_vid_mux;

    localparam integer H   = 64;
    localparam integer V   = 48;
    localparam integer FPX = H * V;
    localparam [23:0]  GRAY = 24'h808080;

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    integer ready_mode = 1, sel_mode = 2, frames = 8;
    integer seed = 32'h0BA51, seed0;
    integer err = 0;

    // ---- 소스 TPG 2개 ----
    reg tpg_en = 1'b0;
    wire [23:0] t0_data, t1_data;
    wire t0_v, t0_r, t0_u, t0_l;
    wire t1_v, t1_r, t1_u, t1_l;

    axis_tpg #(.H_ACTIVE(H), .V_ACTIVE(V)) tpg_bars (
        .aclk(clk), .aresetn(rstn), .enable(tpg_en), .pattern_sel(2'b00),
        .m_axis_tdata(t0_data), .m_axis_tvalid(t0_v), .m_axis_tready(t0_r),
        .m_axis_tuser(t0_u), .m_axis_tlast(t0_l)
    );
    axis_tpg #(.H_ACTIVE(H), .V_ACTIVE(V)) tpg_gray (
        .aclk(clk), .aresetn(rstn), .enable(tpg_en), .pattern_sel(2'b11),
        .m_axis_tdata(t1_data), .m_axis_tvalid(t1_v), .m_axis_tready(t1_r),
        .m_axis_tuser(t1_u), .m_axis_tlast(t1_l)
    );

    // ---- DUT ----
    reg  sel_r = 1'b0;
    wire [23:0] m_tdata;
    wire m_tvalid, m_tuser, m_tlast;
    reg  m_tready = 1'b0;

    axis_vid_mux dut (
        .aclk(clk), .aresetn(rstn), .sel(sel_r),
        .s0_axis_tdata(t0_data), .s0_axis_tvalid(t0_v), .s0_axis_tready(t0_r),
        .s0_axis_tuser(t0_u), .s0_axis_tlast(t0_l),
        .s1_axis_tdata(t1_data), .s1_axis_tvalid(t1_v), .s1_axis_tready(t1_r),
        .s1_axis_tuser(t1_u), .s1_axis_tlast(t1_l),
        .m_axis_tdata(m_tdata), .m_axis_tvalid(m_tvalid), .m_axis_tready(m_tready),
        .m_axis_tuser(m_tuser), .m_axis_tlast(m_tlast)
    );

    // ---- sel 드라이버 ----
    integer tnext = 2000;
    always @(posedge clk) begin
        if (!rstn) sel_r <= 0;
        else case (sel_mode)
            0: sel_r <= 0;
            1: sel_r <= 1;
            default: begin                        // 프레임 위치 무관 랜덤 토글
                tnext = tnext - 1;
                if (tnext <= 0) begin
                    sel_r <= ~sel_r;
                    tnext = 1000 + {$random(seed)} % 2000;
                end
            end
        endcase
    end

    // ---- m_tready 드라이버 ----
    always @(posedge clk) begin
        if (!rstn)                m_tready <= 0;
        else if (ready_mode == 0) m_tready <= 1;
        else                      m_tready <= (({$random(seed)} % 100) < 70);
    end

    // ---- 자가검사 ----
    function [23:0] bar_px(input integer xx);
        case (xx / (H/8))
            0: bar_px = 24'hFFFFFF;  1: bar_px = 24'hFFFF00;
            2: bar_px = 24'h00FFFF;  3: bar_px = 24'h00FF00;
            4: bar_px = 24'hFF00FF;  5: bar_px = 24'hFF0000;
            6: bar_px = 24'h0000FF;  default: bar_px = 24'h000000;
        endcase
    endfunction

    integer op = 0;
    integer gray_frames = 0, bars_frames = 0;
    reg frame_gray = 0;
    reg [23:0] expd;
    always @(posedge clk) if (rstn && m_tvalid && m_tready) begin
        // R2/R3: 지오메트리 정렬 - 부분 프레임이 나가면 여기서 어긋난다
        if (m_tuser !== ((op % FPX) == 0)) begin
            err = err + 1;
            $display("[%0t] R2 FAIL: tuser=%b at op=%0d (partial frame?)",
                     $time, m_tuser, op);
        end
        if (m_tlast !== ((op % H) == H - 1)) begin
            err = err + 1;
            $display("[%0t] R2 FAIL: tlast=%b at op=%0d", $time, m_tlast, op);
        end
        // 프레임 첫 픽셀에서 소스 판정, 이후 프레임 전체 단일 소스 검사
        if ((op % FPX) == 0) begin
            frame_gray = (m_tdata === GRAY);
            if (m_tdata !== GRAY && m_tdata !== 24'hFFFFFF) begin
                err = err + 1;
                $display("[%0t] DATA FAIL: frame head %06x is neither source",
                         $time, m_tdata);
            end
            if (frame_gray) gray_frames = gray_frames + 1;
            else            bars_frames = bars_frames + 1;
        end
        expd = frame_gray ? GRAY : bar_px(op % H);
        if (m_tdata !== expd) begin
            err = err + 1;
            if (err <= 10)
                $display("[%0t] DATA FAIL: op=%0d got %06x exp %06x (frame mixed sources? R3)",
                         $time, op, m_tdata, expd);
        end
        op = op + 1;
    end

    // ---- R1 안정성 모니터 ----
    reg pend = 0;  reg [23:0] d_hold;  reg u_hold, l_hold;
    always @(posedge clk) begin
        if (!rstn) pend <= 0;
        else begin
            if (pend && !m_tvalid) begin
                err = err + 1;
                $display("[%0t] R1 FAIL: tvalid deasserted before accept", $time);
                pend <= 0;
            end else if (m_tvalid && !m_tready) begin
                if (pend && (m_tdata !== d_hold || m_tuser !== u_hold ||
                             m_tlast !== l_hold)) begin
                    err = err + 1;
                    $display("[%0t] R1 FAIL: payload changed while stalled", $time);
                end
                pend <= 1; d_hold <= m_tdata; u_hold <= m_tuser; l_hold <= m_tlast;
            end else if (m_tvalid && m_tready) pend <= 0;
        end
    end

    // ---- main ----
    initial begin
        if (!$value$plusargs("ready_mode=%d", ready_mode)) ready_mode = 1;
        if (!$value$plusargs("sel_mode=%d",   sel_mode))   sel_mode   = 2;
        if (!$value$plusargs("frames=%d",     frames))     frames     = 8;
        if (!$value$plusargs("seed=%d",       seed))       seed = 32'h0BA51;
        seed0 = seed;
        $dumpfile("tb_axis_vid_mux.vcd");
        $dumpvars(0, tb_axis_vid_mux);

        repeat (5) @(posedge clk);
        rstn <= 1;
        repeat (5) @(posedge clk);
        tpg_en <= 1;

        wait (op == frames * FPX);
        repeat (20) @(posedge clk);

        // sel 모드별 상식 체크
        if (sel_mode == 0 && gray_frames != 0) begin
            err = err + 1; $display("SEL FAIL: sel=0 fixed but %0d gray frames", gray_frames);
        end
        if (sel_mode == 1 && bars_frames != 0) begin
            err = err + 1; $display("SEL FAIL: sel=1 fixed but %0d bars frames", bars_frames);
        end
        if (sel_mode == 2 && (gray_frames == 0 || bars_frames == 0))
            $display("NOTE: toggle run saw bars=%0d gray=%0d (전환 미발생 - seed 바꿔볼 것)",
                     bars_frames, gray_frames);

        if (err == 0)
            $display("TB PASS: %0d frames (bars=%0d gray=%0d), 0 errors (sel_mode=%0d ready=%0d seed=%0d)",
                     frames, bars_frames, gray_frames, sel_mode, ready_mode, seed0);
        else
            $display("TB FAIL: err=%0d (seed=%0d)", err, seed0);
        $finish;
    end

    initial begin
        #30_000_000;
        $display("TB TIMEOUT: output %0d/%0d (HUNT에서 SOF 못 찾음? tready 데드락?)",
                 op, frames * FPX);
        $finish;
    end

endmodule
