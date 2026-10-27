`timescale 1ns/1ps
// ============================================================
// tb_sensor_chain - 센서 파이프라인 **통합** TB (docs/12 §8)
//
//   rx(직렬) -> uart_rx -> parser -> axil_sensor_regs -> AXI-Lite 읽기
//
// 개별 블록은 각자 TB로 검증됐다. 여기서 확인하는 것은 **블록 사이의 계약**:
//   - uart_rx의 m_valid(1클럭 펄스)가 파서의 s_valid로 정확히 전달되는가
//   - 파서의 frame_valid 펄스가 레지스터 카운터에 1회만 반영되는가
//   - 직렬 비트에서 출발한 값이 AXI 읽기까지 변형 없이 도달하는가
//   - 두 센서가 **동시에** 들어와도 서로 간섭하지 않는가
//
// BAUD=625000 -> OSVW=10, 1비트=160클럭 (시뮬 단축용, 로직 동일)
// ============================================================
module tb_sensor_chain;

    localparam integer CLK_FREQ_HZ = 100_000_000;
    localparam integer BAUD        = 625_000;
    localparam integer BIT_CLKS    = CLK_FREQ_HZ / BAUD;   // 160

    localparam [31:0] MAGIC = 32'hBA51_1101;
    localparam [7:0]  A_ID = 8'h00, A_SNAP = 8'h04, A_ZE_CONC = 8'h08,
                      A_ZE_INFO = 8'h0C, A_ZE_CNT = 8'h10, A_ZE_UERR = 8'h14,
                      A_PM_A = 8'h18, A_PM_B = 8'h1C, A_PM_CNT = 8'h20,
                      A_PM_UERR = 8'h24;

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    reg ze_rx = 1'b1, pm_rx = 1'b1;      // 아이들 High
    integer err = 0;

    // ---- 체인: uart_rx -> parser (센서 2종) ----
    wire [7:0] ze_byte;   wire ze_bvalid, ze_ferr;
    wire [7:0] pm_byte;   wire pm_bvalid, pm_ferr;

    uart_rx #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .BAUD(BAUD), .OVERSAMPLE(16)) u_ze (
        .aclk(clk), .aresetn(rstn), .rx(ze_rx),
        .m_data(ze_byte), .m_valid(ze_bvalid), .frame_err(ze_ferr)
    );
    uart_rx #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .BAUD(BAUD), .OVERSAMPLE(16)) u_pm (
        .aclk(clk), .aresetn(rstn), .rx(pm_rx),
        .m_data(pm_byte), .m_valid(pm_bvalid), .frame_err(pm_ferr)
    );

    wire [15:0] ze_conc, ze_range;
    wire [7:0]  ze_gas, ze_unit, ze_dec;
    wire        ze_fv, ze_ce;
    ze03_parser p_ze (
        .aclk(clk), .aresetn(rstn),
        .s_data(ze_byte), .s_valid(ze_bvalid),
        .conc(ze_conc), .gas_type(ze_gas), .unit(ze_unit),
        .decimals(ze_dec), .range(ze_range),
        .frame_valid(ze_fv), .csum_err(ze_ce)
    );

    wire [15:0] pm1, pm2, pm10;
    wire        pm_fv, pm_ce;
    pms7003_parser p_pm (
        .aclk(clk), .aresetn(rstn),
        .s_data(pm_byte), .s_valid(pm_bvalid),
        .pm1_0(pm1), .pm2_5(pm2), .pm10(pm10),
        .frame_valid(pm_fv), .csum_err(pm_ce)
    );

    // ---- AXI-Lite 레지스터 ----
    reg  [7:0]  awaddr = 0;  reg awvalid = 0;  wire awready;
    reg  [31:0] wdata = 0;   reg [3:0] wstrb = 4'hF;  reg wvalid = 0;  wire wready;
    wire [1:0]  bresp;       wire bvalid;      reg bready = 0;
    reg  [7:0]  araddr = 0;  reg arvalid = 0;  wire arready;
    wire [31:0] rdata;       wire [1:0] rresp;  wire rvalid;  reg rready = 0;

    axil_sensor_regs #(.ADDR_WIDTH(8)) regs (
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
        .ze_frame_valid(ze_fv), .ze_csum_err(ze_ce), .ze_uart_frame_err(ze_ferr),
        .pm_pm1_0(pm1), .pm_pm2_5(pm2), .pm_pm10(pm10),
        .pm_frame_valid(pm_fv), .pm_csum_err(pm_ce), .pm_uart_frame_err(pm_ferr)
    );

    // ---- AXI-Lite BFM ----
    task axil_write(input [7:0] a, input [31:0] d);
        begin
            @(posedge clk);
            awaddr <= a; awvalid <= 1'b1; wdata <= d; wstrb <= 4'hF; wvalid <= 1'b1;
            @(posedge clk);
            while (!(awready && wready)) @(posedge clk);
            awvalid <= 1'b0; wvalid <= 1'b0; bready <= 1'b1;
            @(posedge clk);
            while (!bvalid) @(posedge clk);
            bready <= 1'b0;
            @(posedge clk);
        end
    endtask

    task axil_read(input [7:0] a, output [31:0] d);
        begin
            @(posedge clk);
            araddr <= a; arvalid <= 1'b1;
            @(posedge clk);
            while (!arready) @(posedge clk);
            arvalid <= 1'b0; rready <= 1'b1;
            @(posedge clk);
            while (!rvalid) @(posedge clk);
            d = rdata;
            rready <= 1'b0;
            @(posedge clk);
        end
    endtask

    // ---- 직렬 송신 (센서별 라인) ----
    task ze_ser(input [7:0] b, input stop_val);
        integer i;
        begin
            ze_rx <= 1'b0;  repeat (BIT_CLKS) @(posedge clk);
            for (i = 0; i < 8; i = i + 1) begin
                ze_rx <= b[i];  repeat (BIT_CLKS) @(posedge clk);
            end
            ze_rx <= stop_val;  repeat (BIT_CLKS) @(posedge clk);
            ze_rx <= 1'b1;
        end
    endtask

    task pm_ser(input [7:0] b, input stop_val);
        integer i;
        begin
            pm_rx <= 1'b0;  repeat (BIT_CLKS) @(posedge clk);
            for (i = 0; i < 8; i = i + 1) begin
                pm_rx <= b[i];  repeat (BIT_CLKS) @(posedge clk);
            end
            pm_rx <= stop_val;  repeat (BIT_CLKS) @(posedge clk);
            pm_rx <= 1'b1;
        end
    endtask

    // ---- 프레임 단위 직렬 전송 ----
    task ze_frame_ser(input [7:0] gas, input [7:0] un, input [7:0] dc,
                      input [15:0] cn, input [15:0] rg, input corrupt);
        reg [7:0] f [0:8];
        integer k, s;
        begin
            f[0]=8'hFF; f[1]=gas; f[2]=un; f[3]=dc;
            f[4]=cn[15:8]; f[5]=cn[7:0]; f[6]=rg[15:8]; f[7]=rg[7:0];
            s = 0;
            for (k = 1; k <= 7; k = k + 1) s = s + f[k];
            f[8] = (8'h00 - s[7:0]);
            if (corrupt) f[8] = f[8] ^ 8'h01;
            for (k = 0; k <= 8; k = k + 1) ze_ser(f[k], 1'b1);
        end
    endtask

    task pm_frame_ser(input [15:0] a, input [15:0] b, input [15:0] c);
        reg [7:0] f [0:31];
        integer k, s;
        begin
            f[0]=8'h42; f[1]=8'h4D; f[2]=8'h00; f[3]=8'd28;
            for (k = 4; k <= 9; k = k + 1) f[k] = 8'h00;
            f[10]=a[15:8]; f[11]=a[7:0];
            f[12]=b[15:8]; f[13]=b[7:0];
            f[14]=c[15:8]; f[15]=c[7:0];
            for (k = 16; k <= 29; k = k + 1) f[k] = 8'h00;
            s = 0;
            for (k = 0; k <= 29; k = k + 1) s = s + f[k];
            f[30] = s[15:8];  f[31] = s[7:0];
            for (k = 0; k <= 31; k = k + 1) pm_ser(f[k], 1'b1);
        end
    endtask

    task chk(input [8*20:1] name, input [31:0] got, input [31:0] exp);
        begin
            if (got !== exp) begin
                err = err + 1;
                $display("  FAIL %0s: got %08x exp %08x", name, got, exp);
            end else $display("  OK   %0s = %08x", name, got);
        end
    endtask

    reg [31:0] d;
    integer i;

    initial begin
        $dumpfile("tb_sensor_chain.vcd");
        $dumpvars(0, tb_sensor_chain);

        repeat (10) @(posedge clk);
        rstn <= 1'b1;
        repeat (10) @(posedge clk);

        // T0: 레지스터 살아있는지
        $display("--- T0: ID ---");
        axil_read(A_ID, d);  chk("ID", d, MAGIC);

        // T1: ZE03 직렬 3프레임 -> AXI로 확인
        $display("--- T1: ZE03 직렬 3프레임 ---");
        ze_frame_ser(8'h17, 8'h02, 8'h01, 16'h0064, 16'h07D0, 1'b0);
        ze_frame_ser(8'h17, 8'h02, 8'h01, 16'h0065, 16'h07D0, 1'b0);
        ze_frame_ser(8'h17, 8'h02, 8'h01, 16'h00C8, 16'h07D0, 1'b0);
        repeat (20) @(posedge clk);
        axil_write(A_SNAP, 32'h1);
        axil_read(A_ZE_CNT,  d);  chk("ZE_CNT",  d, 32'h0000_0003);
        axil_read(A_ZE_CONC, d);  chk("ZE_CONC", d, 32'h07D0_00C8);
        axil_read(A_ZE_INFO, d);  chk("ZE_INFO", d, 32'h0001_0217);

        // T2: PMS7003 직렬 2프레임
        $display("--- T2: PMS 직렬 2프레임 ---");
        pm_frame_ser(16'd11, 16'd22, 16'd33);
        pm_frame_ser(16'd12, 16'd25, 16'd40);
        repeat (20) @(posedge clk);
        axil_write(A_SNAP, 32'h1);
        axil_read(A_PM_CNT, d);  chk("PM_CNT", d, 32'h0000_0002);
        axil_read(A_PM_A,   d);  chk("PM_A",   d, 32'h0019_000C);   // {25, 12}
        axil_read(A_PM_B,   d);  chk("PM_B",   d, 32'h0000_0028);   // 40

        // T3: 체크섬 손상 프레임 -> csum_err만 증가, 값 불변
        $display("--- T3: ZE03 체크섬 손상 ---");
        ze_frame_ser(8'h17, 8'h02, 8'h01, 16'hDEAD, 16'hBEEF, 1'b1);
        repeat (20) @(posedge clk);
        axil_write(A_SNAP, 32'h1);
        axil_read(A_ZE_CNT,  d);  chk("ZE_CNT(csum)",  d, 32'h0001_0003); // {ce=1,fv=3}
        axil_read(A_ZE_CONC, d);  chk("ZE_CONC(불변)", d, 32'h07D0_00C8);

        // T4: 정지비트 불량 -> uart frame_err 카운터
        $display("--- T4: UART 프레이밍 에러 ---");
        ze_ser(8'h5A, 1'b0);                       // stop=0
        repeat (BIT_CLKS * 4) @(posedge clk);
        axil_write(A_SNAP, 32'h1);
        axil_read(A_ZE_UERR, d);  chk("ZE_UERR", d, 32'h0000_0001);

        // T5: **동시 수신** — 두 센서가 같이 들어와도 간섭 없어야 함
        $display("--- T5: 두 센서 동시 수신 ---");
        fork
            begin
                ze_frame_ser(8'h17, 8'h02, 8'h01, 16'h0190, 16'h07D0, 1'b0);
                ze_frame_ser(8'h17, 8'h02, 8'h01, 16'h01F4, 16'h07D0, 1'b0);
            end
            begin
                pm_frame_ser(16'd100, 16'd200, 16'd300);
            end
        join
        repeat (40) @(posedge clk);
        axil_write(A_SNAP, 32'h1);
        axil_read(A_ZE_CNT,  d);  chk("ZE_CNT(동시)",  d, 32'h0001_0005);
        axil_read(A_ZE_CONC, d);  chk("ZE_CONC(동시)", d, 32'h07D0_01F4);
        axil_read(A_PM_CNT,  d);  chk("PM_CNT(동시)",  d, 32'h0000_0003);
        axil_read(A_PM_A,    d);  chk("PM_A(동시)",    d, 32'h00C8_0064); // {200,100}
        axil_read(A_PM_B,    d);  chk("PM_B(동시)",    d, 32'h0000_012C); // 300

        repeat (20) @(posedge clk);
        if (err == 0) $display("TB PASS: 통합 체인 0 errors");
        else          $display("TB FAIL: err=%0d", err);
        $finish;
    end

    initial begin
        #200_000_000;
        $display("TB TIMEOUT");
        $finish;
    end

endmodule
