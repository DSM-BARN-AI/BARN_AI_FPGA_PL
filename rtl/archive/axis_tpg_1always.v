`timescale 1ns/1ps

module axis_tpg #( // default parameters for 720p60으로
    parameter integer H_ACTIVE = 1280,
    parameter integer V_ACTIVE = 720
)(
    input  wire        aclk,
    input  wire        aresetn,        // 리셋 신호
    input  wire        enable,         // enable 신호
    input  wire [1:0]  pattern_sel,    // 패턴 선택 신호

    output reg [23:0]  m_axis_tdata,   // [23:16]=R [15:8]=G [7:0]=B 데이터
    output reg         m_axis_tvalid,  // 데이터 유효 신호
    input  wire        m_axis_tready,  // 데이터 수신 준비 신호
    output reg         m_axis_tuser,   // SOF: 첫 번째 픽셀
    output reg         m_axis_tlast    // EOL: 마지막 픽셀
);

localparam BAR_W = H_ACTIVE / 8; // 8개의 color bar

// 내부 레지스터 정의

reg [11:0] x; // 현재 픽셀 위치 x
reg [11:0] y; // y

reg [11:0] bar_pos; 
reg [2:0]  bar_index; // 현재 bar 인덱스

reg        enable_reg;
reg [1:0]  pattern_reg; // 현재 패턴 선택

wire load = !m_axis_tvalid || m_axis_tready;

wire frame_done = load && enable_reg && (x == H_ACTIVE - 1) && (y == V_ACTIVE - 1); // 끝났는지 확인

// 레지스터 업데이트

always @(posedge aclk) begin

    if(!aresetn) begin // 리셋 시 초기화
        enable_reg  <= 1'b0;
        pattern_reg <= 2'b00;
    end

    else if(frame_done || !enable_reg) begin
        enable_reg <= enable;
        pattern_reg <= pattern_sel;
    end

end

// TVALID

always @(posedge aclk) begin

    if(!aresetn) begin // 리셋 시 초기화
        m_axis_tvalid <= 1'b0;
    end

    else if(load) begin
        m_axis_tvalid <= enable_reg; // enable_reg을 m_axis_tvalid에 전달
    end

end

// XY 카운터

always @(posedge aclk) begin
 
    if(!aresetn) begin // 리셋 시 초기화

        x <= 0;
        y <= 0;

        bar_pos   <= 0;
        bar_index <= 0;

    end

    else if(load && enable_reg) begin

        if(x == H_ACTIVE - 1) begin // 초기화 및 다음 라인으로 이동

            x <= 0;

            bar_pos   <= 0;
            bar_index <= 0;

            if(y == V_ACTIVE - 1) begin
                y <= 0;
            end

            else begin
                y <= y + 1;
            end

        end

        else begin // 다음 픽셀로 이동

            x <= x + 1;

            if(bar_pos == BAR_W - 1) begin // 초기화 및 다음 bar(색)으로 이동
                bar_pos   <= 0;
                bar_index <= bar_index + 1;
            end

            else begin
                bar_pos <= bar_pos + 1;
            end

        end

    end

end

always @(posedge aclk) begin

    if(!aresetn) begin // 리셋 시 초기화
        m_axis_tdata <= 24'd0;
    end

    else if(load) begin // 출력 스테이지가 비어 있거나 이번 클럭에 소비될 때

        case(pattern_reg) // 패턴 선택에 따라 출력 데이터 결정

        2'b00: // Color Bar
            case(bar_index)

            3'd0: 
                m_axis_tdata <= 24'hFFFFFF; // 흰색
            3'd1: 
                m_axis_tdata <= 24'hFFFF00; // 노란색
            3'd2: 
                m_axis_tdata <= 24'h00FFFF; // 시안
            3'd3: 
                m_axis_tdata <= 24'h00FF00; // 초록색
            3'd4: 
                m_axis_tdata <= 24'hFF00FF; // 마젠타
            3'd5:
                m_axis_tdata <= 24'hFF0000; // 빨간색
            3'd6: 
                m_axis_tdata <= 24'h0000FF; // 파란색
            default:
                m_axis_tdata <= 24'h000000; // 검은색

            endcase

        2'b01: // X-RAMP
            m_axis_tdata <= {x[7:0], x[7:0], x[7:0]};

        2'b10: // Reserved
            m_axis_tdata <= 24'h000000;

        2'b11: // Solid Gray
            m_axis_tdata <= 24'h808080;

        endcase

    end

end

// SOF / EOL

always @(posedge aclk) begin

    if(!aresetn) begin // 리셋 시 초기화
        m_axis_tuser <= 1'b0;
        m_axis_tlast <= 1'b0;
    end

    else if(load) begin // 출력 스테이지가 비어 있거나 이번 클럭에 소비될 때
        m_axis_tuser <= (x == 0) && (y == 0); // 첫 번째 픽셀일 때 SOF 신호 활성화
        m_axis_tlast <= (x == H_ACTIVE - 1); // 마지막 픽셀일 때 EOL 신호 활성화
    end

end

endmodule