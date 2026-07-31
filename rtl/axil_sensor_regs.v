`timescale 1ns/1ps

module axil_sensor_regs #(
    parameter integer ADDR_WIDTH = 8
)(
    input  wire                  aclk,
    input  wire                  aresetn,

    // AXI4-Lite slave
    input  wire [ADDR_WIDTH-1:0] s_axil_awaddr,
    input  wire                  s_axil_awvalid,
    output reg                   s_axil_awready,
    input  wire [31:0]           s_axil_wdata,
    input  wire [3:0]            s_axil_wstrb,
    input  wire                  s_axil_wvalid,
    output reg                   s_axil_wready,
    output reg  [1:0]            s_axil_bresp,
    output reg                   s_axil_bvalid,
    input  wire                  s_axil_bready,
    input  wire [ADDR_WIDTH-1:0] s_axil_araddr,
    input  wire                  s_axil_arvalid,
    output reg                   s_axil_arready,
    output reg  [31:0]           s_axil_rdata,
    output reg  [1:0]            s_axil_rresp,
    output reg                   s_axil_rvalid,
    input  wire                  s_axil_rready,

    // ZE03 (가스)
    input  wire [15:0] ze_conc,
    input  wire [15:0] ze_range,
    input  wire [7:0]  ze_gas_type,
    input  wire [7:0]  ze_unit,
    input  wire [7:0]  ze_decimals,
    input  wire        ze_frame_valid,    // 1클럭 펄스
    input  wire        ze_csum_err,       // 1클럭 펄스
    input  wire        ze_uart_frame_err, // 1클럭 펄스 (uart_rx)

    // PMS7003 (미세먼지)
    input  wire [15:0] pm_pm1_0,
    input  wire [15:0] pm_pm2_5,
    input  wire [15:0] pm_pm10,
    input  wire        pm_frame_valid,
    input  wire        pm_csum_err,
    input  wire        pm_uart_frame_err
);
    // 레지스터 맵 (워드 인덱스 = addr[7:2])
    localparam [5:0] W_ID       = 6'd0;   // 0x00 RO  매직
    localparam [5:0] W_SNAPSHOT = 6'd1;   // 0x04 WO  쓰면 그림자 갱신
    localparam [5:0] W_ZE_CONC  = 6'd2;   // 0x08 RO  {range, conc}
    localparam [5:0] W_ZE_INFO  = 6'd3;   // 0x0C RO  {0, dec, unit, gas}
    localparam [5:0] W_ZE_CNT   = 6'd4;   // 0x10 RO  {csum_err, frame}
    localparam [5:0] W_ZE_UERR  = 6'd5;   // 0x14 RO  {0, uart_frame_err}
    localparam [5:0] W_PM_A     = 6'd6;   // 0x18 RO  {pm2_5, pm1_0}
    localparam [5:0] W_PM_B     = 6'd7;   // 0x1C RO  {0, pm10}
    localparam [5:0] W_PM_CNT   = 6'd8;   // 0x20 RO  {csum_err, frame}
    localparam [5:0] W_PM_UERR  = 6'd9;   // 0x24 RO  {0, uart_frame_err}

    localparam [31:0] MAGIC = 32'hBA51_1101;
    localparam [31:0] BADRD = 32'hDEAD_BEEF;
    localparam [1:0]  OKAY  = 2'b00, SLVERR = 2'b10;

    // 라이브 카운터 (펄스에서 증가, 래핑)
    reg [15:0] ze_fcnt, ze_ecnt, ze_ucnt;
    reg [15:0] pm_fcnt, pm_ecnt, pm_ucnt;

    always @(posedge aclk) begin
        if (!aresetn) begin
            ze_fcnt <= 0;
            ze_ecnt <= 0;
            ze_ucnt <= 0;
            pm_fcnt <= 0;
            pm_ecnt <= 0;
            pm_ucnt <= 0;
        end
        else begin
            if (ze_frame_valid) begin
                ze_fcnt <= ze_fcnt + 1'b1;
            end
            if (ze_csum_err) begin
                ze_ecnt <= ze_ecnt + 1'b1;
            end
            if (ze_uart_frame_err) begin
                ze_ucnt <= ze_ucnt + 1'b1;
            end
            if (pm_frame_valid) begin
                pm_fcnt <= pm_fcnt + 1'b1;
            end
            if (pm_csum_err) begin
                pm_ecnt <= pm_ecnt + 1'b1;
            end
            if (pm_uart_frame_err) begin
                pm_ucnt <= pm_ucnt + 1'b1;
            end
        end
    end

    // 그림자 레지스터 (SNAPSHOT 쓰기 시 일괄 복사)
    reg [15:0] s_conc, s_range, s_pm1, s_pm2, s_pm10;
    reg [7:0]  s_gas, s_unit, s_dec;
    reg [15:0] s_zf, s_ze, s_zu, s_pf, s_pe, s_pu;

    // AXI 쓰기 채널 (axil_regfile과 동일 구조)
    wire wr_fire = !s_axil_bvalid && s_axil_awvalid && s_axil_wvalid;
    wire wr_snap = wr_fire && (s_axil_awaddr[7:2] == W_SNAPSHOT);

    always @(posedge aclk) begin
        if (!aresetn) begin
            s_axil_awready <= 1'b0;
            s_axil_wready  <= 1'b0;
            s_axil_bvalid  <= 1'b0;
            s_axil_bresp   <= OKAY;
            s_conc <= 0;
            s_range <= 0;
            s_gas <= 0;
            s_unit <= 0;
            s_dec <= 0;
            s_pm1 <= 0;
            s_pm2 <= 0;
            s_pm10 <= 0;
            s_zf <= 0;
            s_ze <= 0;
            s_zu <= 0;
            s_pf <= 0;
            s_pe <= 0;
            s_pu <= 0;
        end
        else begin
            s_axil_awready <= 1'b0;          // 기본 0 -> 1클럭 펄스
            s_axil_wready  <= 1'b0;

            if (s_axil_bvalid && s_axil_bready) begin
                s_axil_bvalid <= 1'b0;
            end

            if (wr_fire) begin
                s_axil_awready <= 1'b1;
                s_axil_wready  <= 1'b1;
                s_axil_bvalid  <= 1'b1;
                // 매핑된 주소면 OKAY (RO에 써도 OKAY, 값만 안 변함)
                case (s_axil_awaddr[7:2])
                    W_ID, W_SNAPSHOT, W_ZE_CONC, W_ZE_INFO, W_ZE_CNT,
                    W_ZE_UERR, W_PM_A, W_PM_B, W_PM_CNT, W_PM_UERR: begin
                        s_axil_bresp <= OKAY;
                    end
                    default: begin
                        s_axil_bresp <= SLVERR;
                    end
                endcase

                // 스냅샷 : 그 순간의 모든 값을 한 번에 얼린다 (tearing 방지)
                if (wr_snap) begin
                    s_conc  <= ze_conc;
                    s_range <= ze_range;
                    s_gas   <= ze_gas_type;
                    s_unit  <= ze_unit;
                    s_dec   <= ze_decimals;
                    s_pm1   <= pm_pm1_0;
                    s_pm2   <= pm_pm2_5;
                    s_pm10  <= pm_pm10;
                    s_zf    <= ze_fcnt;
                    s_ze    <= ze_ecnt;
                    s_zu    <= ze_ucnt;
                    s_pf    <= pm_fcnt;
                    s_pe    <= pm_ecnt;
                    s_pu    <= pm_ucnt;
                end
            end
        end
    end

    // AXI 읽기 채널 (axil_regfile의 2단 규율 그대로)
    // 억셉트 결정: 슬롯이 비었고 아직 펄스 안 냈을 때만 arready 1클럭
    // 소비: 핸드셰이크 에지에서 정확히 1회 적재
    always @(posedge aclk) begin
        if (!aresetn) begin
            s_axil_arready <= 1'b0;
            s_axil_rvalid  <= 1'b0;
            s_axil_rresp   <= OKAY;
            s_axil_rdata   <= 32'd0;
        end
        else begin
            s_axil_arready <= 1'b0;

            if (s_axil_arvalid && !s_axil_arready &&
                (!s_axil_rvalid || s_axil_rready)) begin
                s_axil_arready <= 1'b1;
            end

            if (s_axil_arvalid && s_axil_arready) begin
                s_axil_rvalid <= 1'b1;
                s_axil_rresp  <= OKAY;
                case (s_axil_araddr[7:2])
                    W_ID:       s_axil_rdata <= MAGIC;
                    W_SNAPSHOT: s_axil_rdata <= 32'd0;             // WO -> 0
                    W_ZE_CONC:  s_axil_rdata <= {s_range, s_conc};
                    W_ZE_INFO:  s_axil_rdata <= {8'd0, s_dec, s_unit, s_gas};
                    W_ZE_CNT:   s_axil_rdata <= {s_ze, s_zf};
                    W_ZE_UERR:  s_axil_rdata <= {16'd0, s_zu};
                    W_PM_A:     s_axil_rdata <= {s_pm2, s_pm1};
                    W_PM_B:     s_axil_rdata <= {16'd0, s_pm10};
                    W_PM_CNT:   s_axil_rdata <= {s_pe, s_pf};
                    W_PM_UERR:  s_axil_rdata <= {16'd0, s_pu};
                    default: begin
                        s_axil_rdata <= BADRD;
                        s_axil_rresp <= SLVERR;
                    end
                endcase
            end
            else if (s_axil_rvalid && s_axil_rready) begin
                s_axil_rvalid <= 1'b0;
            end
        end
    end

endmodule
