`timescale 1ns/1ps

module axis_vid_mux (
    input  wire        aclk,
    input  wire        aresetn,
    input  wire        sel,              // 0: s0, 1: s1 (regfile CTRL[1])

    input  wire [23:0] s0_axis_tdata,
    input  wire        s0_axis_tvalid,
    output wire        s0_axis_tready,
    input  wire        s0_axis_tuser,
    input  wire        s0_axis_tlast,

    input  wire [23:0] s1_axis_tdata,
    input  wire        s1_axis_tvalid,
    output wire        s1_axis_tready,
    input  wire        s1_axis_tuser,
    input  wire        s1_axis_tlast,

    output reg  [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tuser,
    output reg         m_axis_tlast
);

    reg sel_act;                         // 현재 선택된 입력
    reg pass;                            // 0=HUNT(SOF 사냥), 1=PASS(통과)

    // 선택 입력 먹스
    wire        in_tvalid = sel_act ? s1_axis_tvalid : s0_axis_tvalid;
    wire [23:0] in_tdata  = sel_act ? s1_axis_tdata  : s0_axis_tdata;
    wire        in_tuser  = sel_act ? s1_axis_tuser  : s0_axis_tuser;
    wire        in_tlast  = sel_act ? s1_axis_tlast  : s0_axis_tlast;

    wire out_ok      = !m_axis_tvalid || m_axis_tready;
    wire want_switch = (sel != sel_act);
    wire at_sof      = in_tvalid && in_tuser;          // 프레임 경계 표식
    wire hunt_retgt  = !pass && want_switch;           // HUNT 중 자유 전환

    wire sel_tready = pass ? (out_ok && !(want_switch && at_sof))
                           : (hunt_retgt ? 1'b0
                                         : (at_sof ? out_ok : 1'b1));

    assign s0_axis_tready = (!sel_act) ? sel_tready : 1'b0;   // 비선택 동결
    assign s1_axis_tready = ( sel_act) ? sel_tready : 1'b0;

    // 출력으로 나가는 수락: PASS의 모든 비트 + HUNT의 SOF 비트
    wire take = in_tvalid && sel_tready && (pass || in_tuser);

    always @(posedge aclk) begin
        if (!aresetn) begin
            sel_act       <= 1'b0;
            pass          <= 1'b0;       // 리셋 -> HUNT (R5)
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 24'd0;
            m_axis_tuser  <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end else begin
            // 상태 전이
            if (hunt_retgt)
                sel_act <= sel;                          // 프레임 없음, 즉시
            else if (pass && want_switch && at_sof) begin
                sel_act <= sel;                          // 경계 명중 (R3)
                pass    <= 1'b0;                         // 새 소스 SOF 사냥
            end else if (!pass && at_sof && out_ok)
                pass <= 1'b1;                            // SOF부터 통과 시작

            // 출력 레지스터 (R1-safe)
            if (out_ok) begin
                m_axis_tvalid <= take;
                if (take) begin
                    m_axis_tdata <= in_tdata;
                    m_axis_tuser <= in_tuser;
                    m_axis_tlast <= in_tlast;
                end
            end
        end
    end

endmodule
