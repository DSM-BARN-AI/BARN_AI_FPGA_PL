`timescale 1ns/1ps

module pms7003_parser (
    input  wire        aclk,
    input  wire        aresetn,

    input  wire [7:0]  s_data,      // uart_rx.m_data
    input  wire        s_valid,     // uart_rx.m_valid (1클럭 펄스)

    output reg  [15:0] pm1_0,       // 대기환경 기준
    output reg  [15:0] pm2_5,
    output reg  [15:0] pm10,
    output reg         frame_valid, // 1클럭 펄스
    output reg         csum_err     // 1클럭 펄스
);
    localparam [7:0] HDR0 = 8'h42, HDR1 = 8'h4D;
    localparam integer BODY_LEN = 30;          // byte2..byte31

    localparam [1:0] S_H0 = 2'd0, S_H1 = 2'd1, S_BODY = 2'd2;

    reg [1:0]  state;
    reg [4:0]  idx;        // 본문 바이트 번호 0~29
    reg [15:0] sum;        // byte0~byte29 누산 (16비트)
    reg [7:0]  csum_hi;    // byte30

    // 임시 캡처 (체크섬 통과 시에만 출력으로)
    reg [7:0] t_1h, t_1l, t_2h, t_2l, t_10h, t_10l;

    always @(posedge aclk) begin
        if (!aresetn) begin
            state       <= S_H0;
            idx         <= 5'd0;
            sum         <= 16'd0;
            csum_hi     <= 8'd0;
            pm1_0       <= 16'd0;
            pm2_5       <= 16'd0;
            pm10        <= 16'd0;
            frame_valid <= 1'b0;
            csum_err    <= 1'b0;
        end
        else begin
            // 기본값 0 -> 1클럭 펄스 보장
            frame_valid <= 1'b0;
            csum_err    <= 1'b0;

            if (s_valid) begin
                // 상태별 파싱 동작
                case (state)
                    // 헤더 0: 0x42 대기
                    S_H0: if (s_data == HDR0) begin
                        state <= S_H1;
                        sum   <= {8'd0, HDR0};      // 시작바이트도 합에 포함
                    end

                    // R1 재동기 : 0x4D면 진행, 0x42면 여기 머묾
                    S_H1: begin
                        if (s_data == HDR1) begin
                            state <= S_BODY;
                            idx   <= 5'd0;
                            sum   <= sum + {8'd0, HDR1};
                        end
                        else if (s_data == HDR0) begin
                            state <= S_H1;          // 0x42 0x42 4D ...
                            sum   <= {8'd0, HDR0};
                        end
                        else begin
                            state <= S_H0;
                        end
                    end

                    // 본문 데이터 수신
                    default: begin
                        if (idx == BODY_LEN - 1) begin
                            // 마지막 = 체크섬 하위 바이트
                            state <= S_H0;
                            if (sum == {csum_hi, s_data}) begin
                                pm1_0       <= {t_1h,  t_1l};    // 상위 먼저
                                pm2_5       <= {t_2h,  t_2l};
                                pm10        <= {t_10h, t_10l};
                                frame_valid <= 1'b1;
                            end
                            else begin
                                csum_err <= 1'b1;                // 출력 불변
                            end
                        end
                        else begin
                            idx <= idx + 1'b1;
                            // byte30(idx=28)까지만 합에 넣는다 (체크섬 자신 제외)
                            if (idx != BODY_LEN - 2) sum <= sum + {8'd0, s_data};
                            case (idx)
                                5'd8:  t_1h  <= s_data;   // byte10 PM1.0 대기 상위
                                5'd9:  t_1l  <= s_data;   // byte11
                                5'd10: t_2h  <= s_data;   // byte12 PM2.5 상위
                                5'd11: t_2l  <= s_data;   // byte13
                                5'd12: t_10h <= s_data;   // byte14 PM10 상위
                                5'd13: t_10l <= s_data;   // byte15
                                5'd28: csum_hi <= s_data; // byte30 체크섬 상위
                                default: ;                // 나머지는 합에만 기여
                            endcase
                        end
                    end
                endcase
            end
        end
    end

endmodule
