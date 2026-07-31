`timescale 1ns/1ps

module axis_tpg #(
    parameter integer H_ACTIVE = 1280,
    parameter integer V_ACTIVE = 720
)(
    input  wire        aclk,
    input  wire        aresetn,
    input  wire        enable,
    input  wire [1:0]  pattern_sel,

    output reg  [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tuser,
    output reg         m_axis_tlast
);

    localparam integer BAR_W = H_ACTIVE / 8;

    reg [11:0] x, y;
    reg [11:0] bar_pos;
    reg [2:0]  bar_index;
    reg        enable_reg;
    reg [1:0]  pattern_reg;

    wire load      = !m_axis_tvalid || m_axis_tready;
    wire step      = load && enable_reg;
    wire line_end  = (x == H_ACTIVE - 1);
    wire frame_end = line_end && (y == V_ACTIVE - 1);

    function [23:0] bar_color(input [2:0] idx);
        case (idx)
            3'd0:    bar_color = 24'hFFFFFF;
            3'd1:    bar_color = 24'hFFFF00;
            3'd2:    bar_color = 24'h00FFFF;
            3'd3:    bar_color = 24'h00FF00;
            3'd4:    bar_color = 24'hFF00FF;
            3'd5:    bar_color = 24'hFF0000;
            3'd6:    bar_color = 24'h0000FF;
            default: bar_color = 24'h000000;
        endcase
    endfunction

    reg [11:0] x_nxt, y_nxt, bar_pos_nxt;
    reg [2:0]  bar_index_nxt;
    reg        enable_nxt;
    reg [1:0]  pattern_nxt;
    reg [23:0] data_nxt;
    reg        valid_nxt, user_nxt, last_nxt;
    reg [23:0] bar_rgb;   // comb 임시 (함수 결과 비트선택용)

    always @* begin
        x_nxt         = x;
        y_nxt         = y;
        bar_pos_nxt   = bar_pos;
        bar_index_nxt = bar_index;
        enable_nxt    = enable_reg;
        pattern_nxt   = pattern_reg;
        valid_nxt     = m_axis_tvalid;
        data_nxt      = m_axis_tdata;
        user_nxt      = m_axis_tuser;
        last_nxt      = m_axis_tlast;
        bar_rgb       = bar_color(bar_index);

        if ((step && frame_end) || !enable_reg) begin
            enable_nxt  = enable;
            pattern_nxt = pattern_sel;
        end

        if (load) begin
            valid_nxt = enable_reg;
            case (pattern_reg)
                2'b00: data_nxt = bar_rgb;
                2'b01: data_nxt = {3{x[7:0]}};
                // 베이어 컬러바 (RGGB, docs / 04 §4) : 컬러바 RGB에서
                // (y[0], x[0]) 자리의 성분 하나를 [7:0]에 실어 출력
                2'b10: begin
                    case ({y[0], x[0]})
                        2'b00:   data_nxt = {16'h0000, bar_rgb[23:16]}; // R
                        2'b11:   data_nxt = {16'h0000, bar_rgb[7:0]};   // B
                        default: data_nxt = {16'h0000, bar_rgb[15:8]};  // G
                    endcase
                end
                2'b11: data_nxt = 24'h808080;
            endcase
            user_nxt = (x == 0) && (y == 0);
            last_nxt = line_end;
        end

        if (step) begin
            if (line_end) begin
                x_nxt         = 0;
                bar_pos_nxt   = 0;
                bar_index_nxt = 0;
                if (frame_end) begin
                    y_nxt = 0;
                end
                else begin
                    y_nxt = y + 1;
                end
            end
            else begin
                x_nxt = x + 1;
                if (bar_pos == BAR_W - 1) begin
                    bar_pos_nxt   = 0;
                    bar_index_nxt = bar_index + 1;
                end
                else begin
                    bar_pos_nxt = bar_pos + 1;
                end
            end
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            x             <= 0;
            y             <= 0;
            bar_pos       <= 0;
            bar_index     <= 0;
            enable_reg    <= 1'b0;
            pattern_reg   <= 2'b00;
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 24'd0;
            m_axis_tuser  <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end
        else begin
            x             <= x_nxt;
            y             <= y_nxt;
            bar_pos       <= bar_pos_nxt;
            bar_index     <= bar_index_nxt;
            enable_reg    <= enable_nxt;
            pattern_reg   <= pattern_nxt;
            m_axis_tvalid <= valid_nxt;
            m_axis_tdata  <= data_nxt;
            m_axis_tuser  <= user_nxt;
            m_axis_tlast  <= last_nxt;
        end
    end

endmodule
