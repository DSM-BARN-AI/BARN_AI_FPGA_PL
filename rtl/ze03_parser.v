`timescale 1ns/1ps

module ze03_parser (
    input  wire        aclk,
    input  wire        aresetn,

    input  wire [7:0]  s_data,      // uart_rx.m_data
    input  wire        s_valid,     // uart_rx.m_valid (1클럭 펄스)

    output reg  [15:0] conc,        // 농도
    output reg  [7:0]  gas_type,
    output reg  [7:0]  unit,
    output reg  [7:0]  decimals,
    output reg  [15:0] range,       // 풀 레인지
    output reg         frame_valid, // 1클럭 펄스 (체크섬 통과)
    output reg         csum_err     // 1클럭 펄스 (체크섬 불일치)
);
    localparam [7:0] HDR = 8'hFF;

    localparam S_HUNT = 1'b0, S_BODY = 1'b1;

    reg        state;
    reg [2:0]  idx;         // 본문 바이트 번호 0~7 (프레임 바이트 1~8)
    reg [7:0]  sum;         // byte1~byte7 누산 (8비트 랩어라운드)

    // 임시 캡처 — 체크섬 통과해야 출력으로 옮김
    reg [7:0]  t_gas, t_unit, t_dec, t_ch, t_cl, t_rh, t_rl;

    always @(posedge aclk) begin
        if (!aresetn) begin
            state       <= S_HUNT;
            idx         <= 3'd0;
            sum         <= 8'd0;
            conc        <= 16'd0;
            gas_type    <= 8'd0;
            unit        <= 8'd0;
            decimals    <= 8'd0;
            range       <= 16'd0;
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
                    // 헤더 사냥 : 0xFF만 기다린다 (1바이트 헤더라 재동기 단순)
                    S_HUNT: if (s_data == HDR) begin
                        state <= S_BODY;
                        idx   <= 3'd0;
                        sum   <= 8'd0;   // 시작바이트는 합에서 제외
                    end

                    // 본문 데이터 수신
                    default: begin
                        if (idx == 3'd7) begin
                            // 마지막 = 체크섬 바이트 (sum + csum) & 0xFF == 0
                            state <= S_HUNT;
                            if (((sum + s_data) & 8'hFF) == 8'h00) begin
                                gas_type    <= t_gas;
                                unit        <= t_unit;
                                decimals    <= t_dec;
                                conc        <= {t_ch, t_cl};   // 상위 먼저
                                range       <= {t_rh, t_rl};
                                frame_valid <= 1'b1;
                            end
                            else begin
                                csum_err <= 1'b1;              // 출력 불변
                            end
                        end
                        else begin
                            sum <= sum + s_data;               // byte1~7만 누산
                            idx <= idx + 1'b1;
                            case (idx)
                                3'd0: t_gas  <= s_data;
                                3'd1: t_unit <= s_data;
                                3'd2: t_dec  <= s_data;
                                3'd3: t_ch   <= s_data;
                                3'd4: t_cl   <= s_data;
                                3'd5: t_rh   <= s_data;
                                default: t_rl <= s_data;       // idx == 6
                            endcase
                        end
                    end
                endcase
            end
        end
    end

endmodule
