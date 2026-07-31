`timescale 1ns/1ps

module axis_gamma #(
    parameter LUT_FILE = "gamma_lut.mem"
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

    reg [7:0] lut [0:255]; // 256x8
    initial $readmemh(LUT_FILE, lut);

    // R1-safe 1단 : 출력 슬롯이 비면(s_tvalid 여부와 무관하게) 새로 적재
    // s_tvalid = 0이면 tvalid <= 0 같은 데이터 2회 제시 방지
    // 유령 비트, demosaic 굶김 처리와 같은 원칙의 최소형
    wire out_ok = !m_axis_tvalid || m_axis_tready;
    assign s_axis_tready = out_ok;

    always @(posedge aclk) begin
        if (!aresetn) begin
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 24'd0;
            m_axis_tuser  <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end
        else if (out_ok) begin
            m_axis_tvalid <= s_axis_tvalid;
            if (s_axis_tvalid) begin
                m_axis_tdata <= {
                    lut[s_axis_tdata[23:16]],   // R
                    lut[s_axis_tdata[15:8]],    // G
                    lut[s_axis_tdata[7:0]]      // B
                };
                m_axis_tuser <= s_axis_tuser;
                m_axis_tlast <= s_axis_tlast;
            end
        end
    end

endmodule
