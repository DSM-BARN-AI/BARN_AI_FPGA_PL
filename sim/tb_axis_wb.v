`timescale 1ns/1ps
// ============================================================
// tb_axis_wb - self-checking TB (verification infra)
// spec: docs/08_wb_spec.txt
//
// stimulus : wb_in.hex   expected : wb_exp.hex  (wb_golden.py)
// dump     : wb_out.hex
// plusargs : +valid_mode=0/1 +ready_mode=0/1 +frames=N +seed=N
// 골든이 2프레임 지연 모델을 담고 있으므로 TB는 인라인 비교만.
// ============================================================
module tb_axis_wb;

    localparam integer H   = 64;
    localparam integer V   = 48;
    localparam integer FPX = H * V;
    localparam integer MAXPX = 8 * FPX;      // frames<=8

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    reg  [23:0] s_tdata = 0;
    reg         s_tvalid = 0, s_tuser = 0, s_tlast = 0;
    wire        s_tready;
    wire [23:0] m_tdata;
    wire        m_tvalid, m_tuser, m_tlast;
    reg         m_tready = 0;

    integer valid_mode = 1, ready_mode = 1, frames = 5;
    integer seed = 32'h0BA51, seed0;
    integer err = 0, NPIX;

    axis_whitebalance #(
        .GAIN_SHIFT(8), .GAIN_MIN(64), .GAIN_MAX(1023)
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

    reg [23:0] mem_in  [0:MAXPX-1];
    reg [23:0] mem_exp [0:MAXPX-1];

    // ---- AXIS master (R1-safe, valid 랜덤) ----
    integer ip, nip;
    always @(posedge clk) begin
        if (!rstn) begin
            s_tvalid <= 0; ip = 0;
        end else begin
            nip = ip;
            if (s_tvalid && s_tready) nip = ip + 1;
            ip = nip;
            if (!s_tvalid || s_tready) begin
                if (nip < NPIX &&
                    (valid_mode == 0 || ({$random(seed)} % 100) < 70)) begin
                    s_tvalid <= 1;
                    s_tdata  <= mem_in[nip];
                    s_tuser  <= ((nip % FPX) == 0);
                    s_tlast  <= ((nip % H) == H - 1);
                end else s_tvalid <= 0;
            end
        end
    end

    always @(posedge clk) begin
        if (!rstn)                m_tready <= 0;
        else if (ready_mode == 0) m_tready <= 1;
        else                      m_tready <= (({$random(seed)} % 100) < 70);
    end

    // ---- 체커: 데이터(R5)/정렬(R3)/개수(R4) ----
    integer op = 0, fd;
    integer cyc = 0, out_first = -1, out_last = 0;
    always @(posedge clk) if (rstn) begin
        cyc = cyc + 1;
        if (m_tvalid && m_tready) begin
            if (m_tdata !== mem_exp[op]) begin
                err = err + 1;
                if (err <= 12)
                    $display("[%0t] R5 FAIL: op=%0d (fr=%0d) got %06x exp %06x",
                             $time, op, op / FPX, m_tdata, mem_exp[op]);
            end
            if (m_tuser !== ((op % FPX) == 0)) begin
                err = err + 1;
                $display("[%0t] R3 FAIL: tuser=%b op=%0d", $time, m_tuser, op);
            end
            if (m_tlast !== ((op % H) == H - 1)) begin
                err = err + 1;
                $display("[%0t] R3 FAIL: tlast=%b op=%0d", $time, m_tlast, op);
            end
            $fdisplay(fd, "%06x", m_tdata);
            if (out_first < 0) out_first = cyc;
            out_last = cyc;
            op = op + 1;
        end
    end

    // ---- R1 안정성 모니터 ----
    reg pend = 0;  reg [23:0] d_hold;  reg u_hold, l_hold;
    always @(posedge clk) begin
        if (!rstn) pend <= 0;
        else begin
            if (pend && !m_tvalid) begin
                err = err + 1;
                $display("[%0t] R1 FAIL: tvalid dropped before accept", $time);
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
        if (!$value$plusargs("valid_mode=%d", valid_mode)) valid_mode = 1;
        if (!$value$plusargs("ready_mode=%d", ready_mode)) ready_mode = 1;
        if (!$value$plusargs("frames=%d",     frames))     frames     = 5;
        if (!$value$plusargs("seed=%d",       seed))       seed = 32'h0BA51;
        seed0 = seed;
        NPIX  = frames * FPX;

        $readmemh("wb_in.hex",  mem_in);
        $readmemh("wb_exp.hex", mem_exp);
        fd = $fopen("wb_out.hex", "w");
        $dumpfile("tb_axis_wb.vcd");
        $dumpvars(0, tb_axis_wb);

        repeat (5) @(posedge clk);
        rstn <= 1;

        wait (op == NPIX);
        repeat (10) @(posedge clk);
        $fclose(fd);

        // R2: 풀스로틀이면 출력 무버블 (WB는 1단 통과)
        if (valid_mode == 0 && ready_mode == 0) begin
            if (out_last - out_first + 1 != NPIX) begin
                err = err + 1;
                $display("R2 FAIL: span %0d != %0d (bubbles)",
                         out_last - out_first + 1, NPIX);
            end else
                $display("R2 OK: %0d beats back-to-back", NPIX);
        end

        if (err == 0)
            $display("TB PASS: %0d frames, %0d px, 0 errors (valid=%0d ready=%0d seed=%0d)",
                     frames, op, valid_mode, ready_mode, seed0);
        else
            $display("TB FAIL: err=%0d (seed=%0d)", err, seed0);
        $finish;
    end

    initial begin
        #40_000_000;
        $display("TB TIMEOUT: output %0d/%0d", op, frames * FPX);
        $finish;
    end

endmodule
