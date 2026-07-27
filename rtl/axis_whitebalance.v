`timescale 1ns/1ps
// ============================================================
// axis_whitebalance - Gray World auto white balance (step 8, docs/08)
//
// [교재 포인트 — 이 순서로 읽을 것]
//  1. 첫 "프레임 통계 피드백" 블록. gamma 같은 순수 스트리밍과 달리
//     게인이 프레임 전체 합에서 나오므로 2프레임 지연 (docs/08 §5):
//     frame N 출력 = gain(acc_{N-2}) 적용, frame 0/1 = unity.
//  2. R8: acc 누적은 accept(tvalid&&tready)에서만 — 백프레셔로 픽셀이
//     여러 사이클 머물러도 중복 누적 금지 (TPG 카운터 전진 원칙 재등장).
//  3. 게인은 SOF에서만 active로 승격 (R6: 프레임 내 색 불연속 방지).
//     pending(직전에 나눗셈 끝난 값)을 SOF마다 래치 -> 자연히 지연 정렬.
//  4. 나눗셈은 시퀀셜 restoring divider. 프레임 경계마다 2회(R,B)뿐이라
//     수백 사이클 여유 -> 조합 나눗셈(크고 느림) 대신 작은 순차 회로.
//  5. 게인 적용은 gamma와 같은 R1-safe 1단 + sat8 채도 클램프.
// ============================================================
module axis_whitebalance #(
    parameter integer GAIN_SHIFT = 8,
    parameter integer GAIN_MIN   = 64,     // 0.25x
    parameter integer GAIN_MAX   = 1023    // ~4.0x
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
    localparam [15:0] UNITY = 16'd1 << GAIN_SHIFT;  // 256

    wire out_ok = !m_axis_tvalid || m_axis_tready;
    assign s_axis_tready = out_ok;
    wire accept = s_axis_tvalid && s_axis_tready;
    wire sof    = accept && s_axis_tuser;

    wire [7:0] inR = s_axis_tdata[23:16];
    wire [7:0] inG = s_axis_tdata[15:8];
    wire [7:0] inB = s_axis_tdata[7:0];

    // ---- active gain (프레임 내 고정, SOF에서만 갱신) ----
    reg [15:0] active_gR, active_gB;
    reg [15:0] pending_gR, pending_gB;   // 나눗셈 결과 대기 (divider가 씀)

    // ---- 게인 적용 (gamma 스타일 1단 + sat8) ----
    // SOF 픽셀은 active<=pending 래치가 다음 사이클이라 아직 이전 게인.
    // 프레임 전체를 같은(새) 게인으로 처리하려면 SOF 사이클만 pending을
    // 조합으로 바로 사용 (1사이클 스큐 방지, R6/R7).
    wire [15:0] gR_now = sof ? pending_gR : active_gR;
    wire [15:0] gB_now = sof ? pending_gB : active_gB;
    wire [23:0] mulR = inR * gR_now;            // 8b * 16b
    wire [23:0] mulB = inB * gB_now;
    wire [15:0] shR  = mulR[23:GAIN_SHIFT];     // >> SHIFT
    wire [15:0] shB  = mulB[23:GAIN_SHIFT];
    wire [7:0]  outR = (|shR[15:8]) ? 8'hFF : shR[7:0];  // sat8
    wire [7:0]  outB = (|shB[15:8]) ? 8'hFF : shB[7:0];
    // G는 unity 항등 -> inG 그대로 통과

    always @(posedge aclk) begin
        if (!aresetn) begin
            m_axis_tvalid <= 1'b0;
            m_axis_tdata  <= 24'd0;
            m_axis_tuser  <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end else if (out_ok) begin
            m_axis_tvalid <= s_axis_tvalid;
            if (s_axis_tvalid) begin
                m_axis_tdata <= {outR, inG, outB};
                m_axis_tuser <= s_axis_tuser;
                m_axis_tlast <= s_axis_tlast;
            end
        end
    end

    // ---- 통계 누적 (R8: accept에서만) ----
    reg [31:0] acc_R, acc_G, acc_B;
    reg [31:0] snap_R, snap_G, snap_B;
    always @(posedge aclk) begin
        if (!aresetn) begin
            acc_R <= 0; acc_G <= 0; acc_B <= 0;
        end else if (accept) begin
            if (s_axis_tuser) begin            // SOF: 새 프레임 (리셋+첫픽셀)
                acc_R <= inR; acc_G <= inG; acc_B <= inB;
            end else begin
                acc_R <= acc_R + inR;
                acc_G <= acc_G + inG;
                acc_B <= acc_B + inB;
            end
        end
    end

    // ---- SOF: 직전 프레임 합 스냅샷 + active 래치 + 나눗셈 트리거 ----
    // sof 시점의 acc_* = 직전 프레임 전체 합 (이번 SOF 픽셀 누적 전 값)
    reg div_go;
    always @(posedge aclk) begin
        if (!aresetn) begin
            active_gR <= UNITY; active_gB <= UNITY;
            snap_R <= 0; snap_G <= 0; snap_B <= 0;
            div_go <= 1'b0;
        end else begin
            div_go <= 1'b0;
            if (sof) begin
                snap_R <= acc_R; snap_G <= acc_G; snap_B <= acc_B;
                active_gR <= pending_gR;        // = gain(acc_{N-2})  (R7 지연)
                active_gB <= pending_gB;
                div_go <= 1'b1;
            end
        end
    end

    // ---- 시퀀셜 restoring divider: gain = (snap_G<<SHIFT)/snap_ch ----
    //   R 먼저 -> B. 완료 시 pending 갱신. snap_ch==0 -> unity fallback.
    localparam D_IDLE = 2'd0, D_RUN = 2'd1, D_FIN = 2'd2;
    reg [1:0]  dstate;
    reg        dchan;                 // 0=R, 1=B
    reg [39:0] drem, dnum, dquot;
    reg [31:0] dden;
    reg        dzero;
    reg [5:0]  dcnt;

    wire [40:0] rem2 = {drem, 1'b0} | {40'd0, dnum[39]};   // (rem<<1)|msb
    wire        ge   = (rem2 >= {9'd0, dden});

    function [15:0] clampg;
        input [39:0] q;
        begin
            if (q > GAIN_MAX)          clampg = GAIN_MAX[15:0];
            else if (q < GAIN_MIN)     clampg = GAIN_MIN[15:0];
            else                       clampg = q[15:0];
        end
    endfunction

    always @(posedge aclk) begin
        if (!aresetn) begin
            dstate <= D_IDLE; dchan <= 1'b0;
            pending_gR <= UNITY; pending_gB <= UNITY;
            drem <= 0; dnum <= 0; dquot <= 0; dden <= 0; dcnt <= 0; dzero <= 0;
        end else begin
            case (dstate)
                D_IDLE: if (div_go) begin           // R 채널 시작
                    dnum  <= snap_G << GAIN_SHIFT;
                    dden  <= snap_R;
                    dzero <= (snap_R == 0);
                    drem  <= 0; dquot <= 0; dcnt <= 6'd40; dchan <= 1'b0;
                    dstate <= D_RUN;
                end
                D_RUN: begin                        // 1 restoring step / cycle
                    dnum  <= dnum << 1;
                    dquot <= ge ? ((dquot << 1) | 40'd1) : (dquot << 1);
                    drem  <= ge ? (rem2 - {9'd0, dden}) : rem2[39:0];
                    dcnt  <= dcnt - 1'b1;
                    if (dcnt == 6'd1) dstate <= D_FIN;
                end
                D_FIN: begin                        // dquot 확정
                    if (!dchan) begin
                        pending_gR <= dzero ? UNITY : clampg(dquot);
                        dnum  <= snap_G << GAIN_SHIFT;   // B 채널 시작
                        dden  <= snap_B;
                        dzero <= (snap_B == 0);
                        drem  <= 0; dquot <= 0; dcnt <= 6'd40; dchan <= 1'b1;
                        dstate <= D_RUN;
                    end else begin
                        pending_gB <= dzero ? UNITY : clampg(dquot);
                        dstate <= D_IDLE;
                    end
                end
                default: dstate <= D_IDLE;
            endcase
        end
    end

endmodule
