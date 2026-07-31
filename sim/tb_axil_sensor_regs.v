`timescale 1ns/1ps
// ============================================================
// tb_axil_sensor_regs - self-checking TB (docs/12)
// AXI-Lite 읽기/쓰기 + 카운터 + **스냅샷 일관성** 검증
// ============================================================
module tb_axil_sensor_regs;

    localparam [31:0] MAGIC = 32'hBA51_1101;
    localparam [31:0] BADRD = 32'hDEAD_BEEF;
    localparam [1:0]  OKAY  = 2'b00, SLVERR = 2'b10;

    localparam [7:0] A_ID = 8'h00, A_SNAP = 8'h04, A_ZE_CONC = 8'h08,
                     A_ZE_INFO = 8'h0C, A_ZE_CNT = 8'h10, A_ZE_UERR = 8'h14,
                     A_PM_A = 8'h18, A_PM_B = 8'h1C, A_PM_CNT = 8'h20,
                     A_PM_UERR = 8'h24, A_BAD = 8'h40;

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    // AXI-Lite
    reg  [7:0]  awaddr = 0;  reg awvalid = 0;  wire awready;
    reg  [31:0] wdata = 0;   reg [3:0] wstrb = 4'hF;  reg wvalid = 0;  wire wready;
    wire [1:0]  bresp;       wire bvalid;      reg bready = 0;
    reg  [7:0]  araddr = 0;  reg arvalid = 0;  wire arready;
    wire [31:0] rdata;       wire [1:0] rresp;  wire rvalid;  reg rready = 0;

    // 센서 입력
    reg [15:0] ze_conc = 0, ze_range = 0;
    reg [7:0]  ze_gas = 0, ze_unit = 0, ze_dec = 0;
    reg        ze_fv = 0, ze_ce = 0, ze_ue = 0;
    reg [15:0] pm1 = 0, pm2 = 0, pm10 = 0;
    reg        pm_fv = 0, pm_ce = 0, pm_ue = 0;

    integer err = 0;

    axil_sensor_regs #(.ADDR_WIDTH(8)) dut (
        .aclk(clk), .aresetn(rstn),
        .s_axil_awaddr(awaddr), .s_axil_awvalid(awvalid), .s_axil_awready(awready),
        .s_axil_wdata(wdata), .s_axil_wstrb(wstrb), .s_axil_wvalid(wvalid),
        .s_axil_wready(wready),
        .s_axil_bresp(bresp), .s_axil_bvalid(bvalid), .s_axil_bready(bready),
        .s_axil_araddr(araddr), .s_axil_arvalid(arvalid), .s_axil_arready(arready),
        .s_axil_rdata(rdata), .s_axil_rresp(rresp), .s_axil_rvalid(rvalid),
        .s_axil_rready(rready),
        .ze_conc(ze_conc), .ze_range(ze_range), .ze_gas_type(ze_gas),
        .ze_unit(ze_unit), .ze_decimals(ze_dec),
        .ze_frame_valid(ze_fv), .ze_csum_err(ze_ce), .ze_uart_frame_err(ze_ue),
        .pm_pm1_0(pm1), .pm_pm2_5(pm2), .pm_pm10(pm10),
        .pm_frame_valid(pm_fv), .pm_csum_err(pm_ce), .pm_uart_frame_err(pm_ue)
    );

    // ---- AXI-Lite BFM ----
    task axil_write(input [7:0] a, input [31:0] d, output [1:0] resp);
        begin
            @(posedge clk);
            awaddr <= a;  awvalid <= 1'b1;
            wdata  <= d;  wstrb <= 4'hF;  wvalid <= 1'b1;
            @(posedge clk);
            while (!(awready && wready)) @(posedge clk);
            awvalid <= 1'b0;  wvalid <= 1'b0;  bready <= 1'b1;
            @(posedge clk);
            while (!bvalid) @(posedge clk);
            resp = bresp;
            bready <= 1'b0;
            @(posedge clk);
        end
    endtask

    task axil_read(input [7:0] a, output [31:0] d, output [1:0] resp);
        begin
            @(posedge clk);
            araddr <= a;  arvalid <= 1'b1;
            @(posedge clk);
            while (!arready) @(posedge clk);
            arvalid <= 1'b0;  rready <= 1'b1;
            @(posedge clk);
            while (!rvalid) @(posedge clk);
            d = rdata;  resp = rresp;
            rready <= 1'b0;
            @(posedge clk);
        end
    endtask

    // ---- 센서 프레임 주입 ----
    task ze_frame(input [15:0] c, input [15:0] r,
                  input [7:0] g, input [7:0] u, input [7:0] dc);
        begin
            @(posedge clk);
            ze_conc <= c; ze_range <= r; ze_gas <= g; ze_unit <= u; ze_dec <= dc;
            ze_fv <= 1'b1;
            @(posedge clk);
            ze_fv <= 1'b0;
        end
    endtask

    task pm_frame(input [15:0] a, input [15:0] b, input [15:0] c);
        begin
            @(posedge clk);
            pm1 <= a; pm2 <= b; pm10 <= c;
            pm_fv <= 1'b1;
            @(posedge clk);
            pm_fv <= 1'b0;
        end
    endtask

    task pulse_ze_ce; begin @(posedge clk); ze_ce <= 1; @(posedge clk); ze_ce <= 0; end endtask
    task pulse_ze_ue; begin @(posedge clk); ze_ue <= 1; @(posedge clk); ze_ue <= 0; end endtask
    task pulse_pm_ce; begin @(posedge clk); pm_ce <= 1; @(posedge clk); pm_ce <= 0; end endtask
    task pulse_pm_ue; begin @(posedge clk); pm_ue <= 1; @(posedge clk); pm_ue <= 0; end endtask

    task chk(input [8*24:1] name, input [31:0] got, input [31:0] exp);
        begin
            if (got !== exp) begin
                err = err + 1;
                $display("  FAIL %0s: got %08x exp %08x", name, got, exp);
            end else $display("  OK   %0s = %08x", name, got);
        end
    endtask

    reg [31:0] d;  reg [1:0] rp;
    integer i;

    initial begin
        $dumpfile("tb_axil_sensor_regs.vcd");
        $dumpvars(0, tb_axil_sensor_regs);

        repeat (5) @(posedge clk);
        rstn <= 1'b1;
        repeat (5) @(posedge clk);

        // T1: ID
        $display("--- T1: ID ---");
        axil_read(A_ID, d, rp);
        chk("ID", d, MAGIC);
        if (rp !== OKAY) begin err = err + 1; $display("  FAIL: ID RRESP=%b", rp); end

        // T2: unmapped -> SLVERR
        $display("--- T2: unmapped ---");
        axil_read(A_BAD, d, rp);
        chk("BADRD", d, BADRD);
        if (rp !== SLVERR) begin err = err + 1; $display("  FAIL: unmapped RRESP=%b (기대 10)", rp); end
        axil_write(A_BAD, 32'h1234, rp);
        if (rp !== SLVERR) begin err = err + 1; $display("  FAIL: unmapped BRESP=%b", rp); end

        // T3: 센서 프레임 + 카운터
        $display("--- T3: 프레임/카운터 ---");
        ze_frame(16'h0064, 16'h07D0, 8'h17, 8'h02, 8'h01);  // conc=100 range=2000
        ze_frame(16'h0065, 16'h07D0, 8'h17, 8'h02, 8'h01);
        ze_frame(16'h0066, 16'h07D0, 8'h17, 8'h02, 8'h01);
        pulse_ze_ce; pulse_ze_ce;
        pulse_ze_ue;
        pm_frame(16'd11, 16'd22, 16'd33);
        pm_frame(16'd12, 16'd23, 16'd34);
        pulse_pm_ce;
        pulse_pm_ue; pulse_pm_ue; pulse_pm_ue;
        repeat (4) @(posedge clk);

        axil_write(A_SNAP, 32'h1, rp);                       // 스냅샷
        if (rp !== OKAY) begin err = err + 1; $display("  FAIL: SNAP BRESP"); end

        axil_read(A_ZE_CNT,  d, rp); chk("ZE_CNT",  d, 32'h0002_0003); // {ce=2, fv=3}
        axil_read(A_ZE_UERR, d, rp); chk("ZE_UERR", d, 32'h0000_0001);
        axil_read(A_PM_CNT,  d, rp); chk("PM_CNT",  d, 32'h0001_0002); // {ce=1, fv=2}
        axil_read(A_PM_UERR, d, rp); chk("PM_UERR", d, 32'h0000_0003);

        // T4: 필드 패킹/엔디안
        $display("--- T4: 필드 패킹 ---");
        axil_read(A_ZE_CONC, d, rp); chk("ZE_CONC", d, 32'h07D0_0066); // {range, conc}
        axil_read(A_ZE_INFO, d, rp); chk("ZE_INFO", d, 32'h0001_0217); // {0,dec,unit,gas}
        axil_read(A_PM_A,    d, rp); chk("PM_A",    d, 32'h0017_000C); // {pm2=23, pm1=12}
        axil_read(A_PM_B,    d, rp); chk("PM_B",    d, 32'h0000_0022); // {0, pm10=34}

        // T5: **스냅샷 일관성** — 스냅샷 없이 값이 바뀌어도 읽기는 불변
        $display("--- T5: 스냅샷 일관성 ---");
        ze_frame(16'hAAAA, 16'hBBBB, 8'hCC, 8'hDD, 8'hEE);
        pm_frame(16'h1111, 16'h2222, 16'h3333);
        repeat (4) @(posedge clk);
        axil_read(A_ZE_CONC, d, rp);
        if (d !== 32'h07D0_0066) begin
            err = err + 1;
            $display("  FAIL: 스냅샷 없이 값이 바뀜 %08x (기대 07D00066)", d);
        end else $display("  OK   스냅샷 전: 옛 값 유지 (tearing 방지)");
        axil_write(A_SNAP, 32'h0, rp);                       // 새 스냅샷
        axil_read(A_ZE_CONC, d, rp); chk("ZE_CONC(new)", d, 32'hBBBB_AAAA);
        axil_read(A_PM_A,    d, rp); chk("PM_A(new)",    d, 32'h2222_1111);
        axil_read(A_ZE_CNT,  d, rp); chk("ZE_CNT(new)",  d, 32'h0002_0004);

        // T6: RO 쓰기는 OKAY + 값 불변
        $display("--- T6: RO 쓰기 ---");
        axil_write(A_ZE_CONC, 32'hFFFF_FFFF, rp);
        if (rp !== OKAY) begin err = err + 1; $display("  FAIL: RO write BRESP=%b", rp); end
        axil_read(A_ZE_CONC, d, rp); chk("ZE_CONC(RO후)", d, 32'hBBBB_AAAA);

        // T7: 연속 읽기 (유령 비트 회귀 — axil_regfile에서 잡았던 버그)
        $display("--- T7: 연속 읽기 20회 ---");
        for (i = 0; i < 20; i = i + 1) begin
            axil_read(A_ID, d, rp);
            if (d !== MAGIC) begin
                err = err + 1;
                if (err < 5) $display("  FAIL: 연속읽기 %0d회차 %08x", i, d);
            end
        end
        if (err == 0) $display("  OK   20회 모두 MAGIC (유령 비트 없음)");

        repeat (10) @(posedge clk);
        if (err == 0) $display("TB PASS: 0 errors");
        else          $display("TB FAIL: err=%0d", err);
        $finish;
    end

    initial begin
        #2_000_000;
        $display("TB TIMEOUT");
        $finish;
    end

endmodule
