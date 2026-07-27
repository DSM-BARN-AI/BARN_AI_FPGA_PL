`timescale 1ns/1ps
// ============================================================
// tb_axis_demosaic - self-checking TB (verification infra)
// spec: docs/04_demosaic_spec.md
//
// stimulus : bayer_in.hex  (demosaic_golden.py --gen)
// expected : rgb_exp.hex   (demosaic_golden.py --exp)
// dump     : dem_out.hex   (python --compare 2차 대조용)
//
// plusargs : +valid_mode=0/1  입력 valid (0 항상, 1 랜덤 70%) ← 새 차원!
//            +ready_mode=0/1  출력 ready (0 항상, 1 랜덤 70%)
//            +frames=N        프레임 수 (기본 1, 최대 4)
//            +seed=N
// PHASE는 엘라보 파라미터: xelab -generic_top "PHASE=3" (BGGR)
// ============================================================
module tb_axis_demosaic;

    parameter integer PHASE = 0;          // xelab -generic_top로 오버라이드

    localparam integer H   = 64;
    localparam integer V   = 48;
    localparam integer FPX = H * V;
    localparam integer MAXPX = 4 * FPX;   // frames<=4

    reg         clk = 1'b0;
    reg         rstn = 1'b0;
    always #5 clk = ~clk;                 // 100 MHz

    // ---- DUT I/O ----
    reg  [7:0]  s_tdata = 0;
    reg         s_tvalid = 0, s_tuser = 0, s_tlast = 0;
    wire        s_tready;
    wire [23:0] m_tdata;
    wire        m_tvalid, m_tuser, m_tlast;
    reg         m_tready = 0;

    integer valid_mode = 1, ready_mode = 1, frames = 1;
    integer seed = 32'h0BA51, seed0;
    integer err = 0;
    integer NPIX;

    axis_demosaic #(
        .H_ACTIVE   (H),
        .V_ACTIVE   (V),
        .BAYER_PHASE(PHASE[1:0])
    ) dut (
        .aclk          (clk),
        .aresetn       (rstn),
        .s_axis_tdata  (s_tdata),
        .s_axis_tvalid (s_tvalid),
        .s_axis_tready (s_tready),
        .s_axis_tuser  (s_tuser),
        .s_axis_tlast  (s_tlast),
        .m_axis_tdata  (m_tdata),
        .m_axis_tvalid (m_tvalid),
        .m_axis_tready (m_tready),
        .m_axis_tuser  (m_tuser),
        .m_axis_tlast  (m_tlast)
    );

    // ---- stimulus / expected memories ----
    reg [7:0]  mem_in  [0:MAXPX-1];
    reg [23:0] mem_exp [0:MAXPX-1];

    // ---- AXIS master driver (R1-safe source, valid 랜덤화) -----------
    // TPG와 같은 (!valid || ready) 템플릿. ip = 다음 제시할 샘플 인덱스.
    integer ip, nip;
    always @(posedge clk) begin
        if (!rstn) begin
            s_tvalid <= 0; ip = 0;
        end else begin
            nip = ip;
            if (s_tvalid && s_tready) nip = ip + 1;   // 방금 억셉트됨
            ip = nip;
            if (!s_tvalid || s_tready) begin
                if (nip < NPIX &&
                    (valid_mode == 0 || ({$random(seed)} % 100) < 70)) begin
                    s_tvalid <= 1;
                    s_tdata  <= mem_in[nip];
                    s_tuser  <= ((nip % FPX) == 0);
                    s_tlast  <= ((nip % H) == H - 1);
                end else begin
                    s_tvalid <= 0;
                end
            end
        end
    end

    // ---- m_axis ready 드라이버 ----------------------------------------
    always @(posedge clk) begin
        if (!rstn)                m_tready <= 0;
        else if (ready_mode == 0) m_tready <= 1;
        else                      m_tready <= (({$random(seed)} % 100) < 70);
    end

    // ---- 출력 체커: 데이터/위치(R3)/개수(R4) ---------------------------
    integer op = 0, fd;
    integer cyc = 0, cyc_start = -1, cyc_end = 0, last_prog = 0;
    always @(posedge clk) if (rstn) begin
        cyc = cyc + 1;
        if (s_tvalid && s_tready) begin
            if (cyc_start < 0) cyc_start = cyc;
            last_prog = cyc;
        end
        if (m_tvalid && m_tready) begin
            if (m_tdata !== mem_exp[op]) begin
                err = err + 1;
                if (err <= 10)
                    $display("[%0t] DATA FAIL: op=%0d (x=%0d y=%0d) got %06x exp %06x",
                             $time, op, (op % FPX) % H, (op % FPX) / H,
                             m_tdata, mem_exp[op]);
            end
            if (m_tuser !== ((op % FPX) == 0)) begin
                err = err + 1;
                $display("[%0t] R3 FAIL: tuser=%b at op=%0d", $time, m_tuser, op);
            end
            if (m_tlast !== ((op % H) == H - 1)) begin
                err = err + 1;
                $display("[%0t] R3 FAIL: tlast=%b at op=%0d", $time, m_tlast, op);
            end
            $fdisplay(fd, "%06x", m_tdata);
            op = op + 1;
            cyc_end = cyc;
            last_prog = cyc;
        end
        // R4 드레인 감시: 입력 다 끝났는데 출력이 5000cyc 정체
        if (ip >= NPIX && !s_tvalid && op < NPIX && (cyc - last_prog) > 5000) begin
            $display("[%0t] R4 FAIL: DRAIN STUCK - input done, output %0d/%0d",
                     $time, op, NPIX);
            $display("TB FAIL: err=%0d (seed=%0d)", err + 1, seed0);
            $finish;
        end
    end

    // ---- R1 안정성 모니터 (m_axis) ------------------------------------
    reg        pend = 0;
    reg [23:0] d_hold;
    reg        u_hold, l_hold;
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

    // ---- main ------------------------------------------------------------
    integer lim;
    initial begin
        if (!$value$plusargs("valid_mode=%d", valid_mode)) valid_mode = 1;
        if (!$value$plusargs("ready_mode=%d", ready_mode)) ready_mode = 1;
        if (!$value$plusargs("frames=%d",     frames))     frames     = 1;
        if (!$value$plusargs("seed=%d",       seed))       seed = 32'h0BA51;
        seed0 = seed;
        NPIX  = frames * FPX;

        $readmemh("bayer_in.hex", mem_in);
        $readmemh("rgb_exp.hex",  mem_exp);
        fd = $fopen("dem_out.hex", "w");
        $dumpfile("tb_axis_demosaic.vcd");
        $dumpvars(0, tb_axis_demosaic);

        repeat (5) @(posedge clk);
        rstn <= 1;

        wait (op == NPIX);
        repeat (20) @(posedge clk);
        $fclose(fd);

        // R2: 풀스로틀 모드에서 사이클 예산 (행당 1버블 + 프레임당 플러시 3)
        if (valid_mode == 0 && ready_mode == 0) begin
            lim = frames * (H + V * (H + 1) + 3) + 32;
            if (cyc_end - cyc_start + 1 > lim) begin
                err = err + 1;
                $display("R2 FAIL: %0d cycles > budget %0d",
                         cyc_end - cyc_start + 1, lim);
            end else
                $display("R2 OK: %0d cycles (budget %0d)",
                         cyc_end - cyc_start + 1, lim);
        end

        if (err == 0)
            $display("TB PASS: %0d frames, %0d pixels, 0 errors (PHASE=%0d valid=%0d ready=%0d seed=%0d)",
                     frames, op, PHASE, valid_mode, ready_mode, seed0);
        else
            $display("TB FAIL: err=%0d (seed=%0d)", err, seed0);
        $finish;
    end

    // ---- global watchdog ------------------------------------------------
    initial begin
        #20_000_000;
        $display("TB TIMEOUT: output %0d/%0d pixels. (tready 데드락? 드레인 미구현?)",
                 op, frames * FPX);
        $finish;
    end

endmodule
