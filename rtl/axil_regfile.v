`timescale 1ns/1ps

module axil_regfile #(
    parameter integer ADDR_WIDTH = 8
)(
    input  wire                  aclk,
    input  wire                  aresetn,

    // write address channel
    input  wire [ADDR_WIDTH-1:0] s_axil_awaddr,
    input  wire                  s_axil_awvalid,
    output reg                   s_axil_awready,

    // write data channel
    input  wire [31:0]           s_axil_wdata,
    input  wire [3:0]            s_axil_wstrb,
    input  wire                  s_axil_wvalid,
    output reg                   s_axil_wready,

    // write response channel
    output reg  [1:0]            s_axil_bresp,
    output reg                   s_axil_bvalid,
    input  wire                  s_axil_bready,

    // read address channel
    input  wire [ADDR_WIDTH-1:0] s_axil_araddr,
    input  wire                  s_axil_arvalid,
    output reg                   s_axil_arready,

    // read data channel
    output reg  [31:0]           s_axil_rdata,
    output reg  [1:0]            s_axil_rresp,
    output reg                   s_axil_rvalid,
    input  wire                  s_axil_rready,

    // register-mapped I/O
    output wire                  tpg_enable,
    output wire [1:0]            pattern_sel,
    output wire                  mux_sel,     // v2: CTRL[1] (docs/05 D)
    input  wire [31:0]           status_in
);

    localparam [5:0] W_ID      = 6'd0;   // 0x00 RO
    localparam [5:0] W_SCRATCH = 6'd1;   // 0x04 RW
    localparam [5:0] W_CTRL    = 6'd2;   // 0x08 RW (bit0=tpg_en, bit1=mux_sel)
    localparam [5:0] W_TPG     = 6'd3;   // 0x0C RW (bit[1:0]만)
    localparam [5:0] W_STATUS  = 6'd4;   // 0x10 RO

    localparam [31:0] MAGIC  = 32'hBA51_0301;
    localparam [31:0] BADRD  = 32'hDEAD_BEEF;
    localparam [1:0]  OKAY   = 2'b00,  SLVERR = 2'b10;

    // register storage
    reg [31:0] scratch_reg;
    reg [31:0] ctrl_reg;      // bit[1:0]만 유효하게 저장 (v2)
    reg [31:0] tpg_reg;       // bit[1:0]만 유효

    assign tpg_enable  = ctrl_reg[0];
    assign mux_sel     = ctrl_reg[1];
    assign pattern_sel = tpg_reg[1:0];

    integer i;
    reg [31:0] tmp;

    always @(posedge aclk) begin

        if(!aresetn) begin

            scratch_reg <= 0;
            ctrl_reg    <= 0;
            tpg_reg     <= 0;

            s_axil_awready <= 0;
            s_axil_wready  <= 0;
            s_axil_bvalid  <= 0;
            s_axil_bresp   <= OKAY;

            s_axil_arready <= 0;
            s_axil_rvalid  <= 0;
            s_axil_rresp   <= OKAY;
            s_axil_rdata   <= 0;

        end

        else begin

        // 기본 ready는 펄스
        s_axil_awready <= 0;
        s_axil_wready  <= 0;
        s_axil_arready <= 0;

        // B channel
        if(s_axil_bvalid && s_axil_bready) begin
            s_axil_bvalid <= 0;
        end

        // Write
        if(!s_axil_bvalid && s_axil_awvalid && s_axil_wvalid) begin

            s_axil_awready <= 1;
            s_axil_wready  <= 1;

            tmp = 32'b0;

            case(s_axil_awaddr[7:2])

                W_SCRATCH:
                begin
                    tmp = scratch_reg;
                    for(i = 0; i < 4; i = i + 1)
                        if(s_axil_wstrb[i])
                            tmp[8 * i + : 8] = s_axil_wdata[8 * i + : 8];
                    scratch_reg <= tmp;
                    s_axil_bresp <= OKAY;
                end

                W_CTRL:
                begin
                    tmp = ctrl_reg;
                    for(i = 0; i < 4; i = i + 1)
                        if(s_axil_wstrb[i])
                            tmp[8 * i + : 8] = s_axil_wdata[8 * i + : 8];

                    ctrl_reg <= tmp & 32'h3;   // v2: bit1=mux_sel 추가
                    s_axil_bresp <= OKAY;
                end

                W_TPG:
                begin
                    tmp = tpg_reg;
                    for(i = 0; i < 4; i = i + 1)
                        if(s_axil_wstrb[i])
                            tmp[8 * i + : 8] = s_axil_wdata[8 * i + : 8];

                    tpg_reg <= tmp & 32'h3;
                    s_axil_bresp <= OKAY;
                end

                W_ID, W_STATUS:
                begin
                    s_axil_bresp <= OKAY;
                end

                default:
                begin
                    s_axil_bresp <= SLVERR;
                end

            endcase

            s_axil_bvalid <= 1;

        end

        if (s_axil_arvalid && !s_axil_arready && (!s_axil_rvalid || s_axil_rready))
            s_axil_arready <= 1;

        if (s_axil_arvalid && s_axil_arready) begin

            s_axil_rvalid <= 1;

            case(s_axil_araddr[7:2])

                W_ID:
                begin
                    s_axil_rdata <= MAGIC;
                    s_axil_rresp <= OKAY;
                end

                W_SCRATCH:
                begin
                    s_axil_rdata <= scratch_reg;
                    s_axil_rresp <= OKAY;
                end

                W_CTRL:
                begin
                    s_axil_rdata <= ctrl_reg;
                    s_axil_rresp <= OKAY;
                end

                W_TPG:
                begin
                    s_axil_rdata <= tpg_reg;
                    s_axil_rresp <= OKAY;
                end

                W_STATUS:
                begin
                    s_axil_rdata <= status_in;
                    s_axil_rresp <= OKAY;
                end

                default:
                begin
                    s_axil_rdata <= BADRD;
                    s_axil_rresp <= SLVERR;
                end

            endcase

        end
        else if (s_axil_rvalid && s_axil_rready) begin
            s_axil_rvalid <= 0;    // 비트 소비 완료, 새 적재 없으면 내림
        end

    end

end

endmodule