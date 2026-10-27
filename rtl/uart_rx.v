`timescale 1ns/1ps

module uart_rx #(
    parameter integer CLK_FREQ_HZ = 100_000_000,
    parameter integer BAUD        = 9600,
    parameter integer OVERSAMPLE  = 16
)(
    input  wire       aclk,
    input  wire       aresetn,
    input  wire       rx,          // 비동기 외부 입력

    output reg  [7:0] m_data,      // 수신 바이트
    output reg        m_valid,     // 1클럭 펄스 (R5)
    output reg        frame_err    // 1클럭 펄스: 정지비트 불량 (R4)
);
    // 오버샘플 1틱당 클럭 수 100MHz/9600/16 = 651
    localparam integer OSVW_TICKS = CLK_FREQ_HZ / (BAUD * OVERSAMPLE);
    localparam integer HALF       = OVERSAMPLE / 2;
    localparam integer OSW        = (OSVW_TICKS <= 1) ? 1 : $clog2(OSVW_TICKS);
    localparam integer IDXW       = (OVERSAMPLE <= 1) ? 1 : $clog2(OVERSAMPLE);

    localparam [1:0] S_IDLE = 2'd0, S_START = 2'd1,
                     S_DATA = 2'd2, S_STOP  = 2'd3;

    // 2FF 동기화 + 에지 검출
    reg rx_meta, rx_sync, rx_sync_d;

    always @(posedge aclk) begin
        if (!aresetn) begin
            rx_meta   <= 1'b1;
            rx_sync   <= 1'b1;
            rx_sync_d <= 1'b1;
        end
        else begin
            rx_meta   <= rx;        // 메타스테이블 가능 — 여기서만 발생
            rx_sync   <= rx_meta;   // 안정화된 값
            rx_sync_d <= rx_sync;   // 에지 검출용
        end
    end
    wire fall = rx_sync_d && !rx_sync;   // 시작비트 하강 에지

    // FSM 상태 레지스터
    reg [1:0]      state;
    reg [IDXW-1:0] os_idx;    // 비트 내 오버샘플 위치
    reg [2:0]      bit_idx;   // 데이터 비트 번호 0~7
    reg [7:0]      shreg;

    // 오버샘플 틱 생성
    reg [OSW-1:0] os_cnt;
    wire os_tick = (os_cnt == OSVW_TICKS[OSW-1:0] - 1'b1);

    always @(posedge aclk) begin
        if (!aresetn) begin
            os_cnt <= 0;
        end
        else if (state == S_IDLE) begin
            os_cnt <= 0;   // 아이들엔 정지
        end
        else if (os_tick) begin
            os_cnt <= 0;
        end
        else begin
            os_cnt <= os_cnt + 1'b1;
        end
    end

    // 수신 FSM
    always @(posedge aclk) begin
        if (!aresetn) begin
            state     <= S_IDLE;
            os_idx    <= 0;
            bit_idx   <= 3'd0;
            shreg     <= 8'd0;
            m_data    <= 8'd0;
            m_valid   <= 1'b0;
            frame_err <= 1'b0;
        end
        else begin
            // 기본값 0 -> 1클럭 펄스 보장
            m_valid   <= 1'b0;
            frame_err <= 1'b0;

            // 상태별 동작
            case (state)
                // IDLE 상태 : 시작비트 하강 에지 대기
                S_IDLE: begin
                    os_idx <= 0;
                    if (fall) state <= S_START;
                end

                // 시작비트 중앙(8틱)에서 재확인 — 글리치면 복귀
                S_START: if (os_tick) begin
                    if (os_idx == HALF[IDXW-1:0] - 1'b1) begin
                        os_idx <= 0;   // 여기가 시작비트 중앙

                        if (rx_sync) begin
                            state <= S_IDLE;
                        end
                        else begin
                            state   <= S_DATA;
                            bit_idx <= 3'd0;
                        end
                    end
                    else begin
                        os_idx <= os_idx + 1'b1;
                    end
                end

                // 16틱마다 = 각 데이터 비트 중앙에서 샘플, LSB first
                S_DATA: if (os_tick) begin
                    if (os_idx == OVERSAMPLE[IDXW-1:0] - 1'b1) begin
                        os_idx <= 0;
                        shreg  <= {rx_sync, shreg[7:1]};

                        if (bit_idx == 3'd7) begin
                            state <= S_STOP;
                        end
                        else begin
                            bit_idx <= bit_idx + 1'b1;
                        end
                    end
                    else begin
                        os_idx <= os_idx + 1'b1;
                    end
                end

                // 정지비트 중앙 샘플 : 1이면 바이트 확정, 0이면 프레이밍 에러
                default: if (os_tick) begin
                    if (os_idx == OVERSAMPLE[IDXW-1:0] - 1'b1) begin
                        os_idx <= 0;
                        state  <= S_IDLE;

                        if (rx_sync) begin
                            m_data  <= shreg;
                            m_valid <= 1'b1;
                        end
                        else begin
                            frame_err <= 1'b1;    // 바이트는 폐기
                        end
                    end
                    else begin
                        os_idx <= os_idx + 1'b1;
                    end
                end
            endcase
        end
    end

endmodule
