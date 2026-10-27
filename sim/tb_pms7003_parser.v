`timescale 1ns/1ps
// ============================================================
// tb_pms7003_parser - self-checking TB (docs/11)
// plusargs: +seed=N
// ============================================================
module tb_pms7003_parser;

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    reg  [7:0] s_data  = 8'd0;
    reg        s_valid = 1'b0;

    wire [15:0] pm1_0, pm2_5, pm10;
    wire        frame_valid, csum_err;

    pms7003_parser dut (
        .aclk(clk), .aresetn(rstn),
        .s_data(s_data), .s_valid(s_valid),
        .pm1_0(pm1_0), .pm2_5(pm2_5), .pm10(pm10),
        .frame_valid(frame_valid), .csum_err(csum_err)
    );

    integer seed = 32'h0BA51, seed0;
    integer err = 0, fv_cnt = 0, ce_cnt = 0, stray = 0;
    // 기대값 **큐** (직접 변수는 다음 프레임이 먼저 덮어써 레이스 발생)
    reg [47:0] exp_q [0:255];              // {pm1, pm2, pm10}
    integer q_wr = 0, q_rd = 0;
    wire [15:0] e_pm10 = exp_q[q_rd][15:0];
    wire [15:0] e_pm2  = exp_q[q_rd][31:16];
    wire [15:0] e_pm1  = exp_q[q_rd][47:32];

    // ---- 체커 ----
    always @(posedge clk) if (rstn) begin
        if (frame_valid && csum_err) begin
            err = err + 1;
            $display("[%0t] R4 FAIL: 두 펄스 동시 assert", $time);
        end
        if (frame_valid) begin
            fv_cnt = fv_cnt + 1;
            if (q_rd >= q_wr) begin
                stray = stray + 1;          // 모호 구간(T5) — 계수만
            end else if (pm1_0 !== e_pm1 || pm2_5 !== e_pm2 || pm10 !== e_pm10) begin
                err = err + 1;
                if (err <= 10)
                    $display("[%0t] FAIL: pm1=%04x(exp %04x) pm2.5=%04x(exp %04x) pm10=%04x(exp %04x)",
                             $time, pm1_0, e_pm1, pm2_5, e_pm2, pm10, e_pm10);
            end
            if (q_rd < q_wr) q_rd = q_rd + 1;
        end
        if (csum_err) ce_cnt = ce_cnt + 1;
    end

    task push(input [7:0] b);
        begin
            @(posedge clk);
            s_data  <= b;
            s_valid <= 1'b1;
            @(posedge clk);
            s_valid <= 1'b0;
            repeat (({$random(seed)} % 3)) @(posedge clk);
        end
    endtask

    // ---- PMS7003 32바이트 프레임 ----
    task send_pms(input [15:0] p1, input [15:0] p2, input [15:0] p10,
                  input corrupt, input upd);
        reg [7:0] f [0:31];
        integer k, s;
        begin
            f[0] = 8'h42;  f[1] = 8'h4D;
            f[2] = 8'h00;  f[3] = 8'd28;             // 길이
            // 표준입자 (임의값 — 파서가 무시하는 영역)
            for (k = 4; k <= 9; k = k + 1) f[k] = $random(seed);
            // 대기환경 PM (상위 먼저)
            f[10] = p1[15:8];   f[11] = p1[7:0];
            f[12] = p2[15:8];   f[13] = p2[7:0];
            f[14] = p10[15:8];  f[15] = p10[7:0];
            // 입자 개수 + 예약 (임의값)
            for (k = 16; k <= 29; k = k + 1) f[k] = $random(seed);
            s = 0;
            for (k = 0; k <= 29; k = k + 1) s = s + f[k];
            f[30] = s[15:8];
            f[31] = s[7:0];
            if (corrupt) f[31] = f[31] ^ 8'h01;
            if (upd && !corrupt) begin
                exp_q[q_wr] = {p1, p2, p10};
                q_wr = q_wr + 1;
            end
            for (k = 0; k <= 31; k = k + 1) push(f[k]);
        end
    endtask

    integer i, before_fv, before_ce;
    reg [15:0] before_pm1;

    task settle; begin repeat (6) @(posedge clk); end endtask
    // 본문 최대 30바이트 < 40, 0x00은 헤더(0x42) 아님 -> 확실히 HUNT 복귀
    task flush;
        integer k;
        begin for (k = 0; k < 40; k = k + 1) push(8'h00); settle; end
    endtask

    initial begin
        if (!$value$plusargs("seed=%d", seed)) seed = 32'h0BA51;
        seed0 = seed;
        $dumpfile("tb_pms7003_parser.vcd");
        $dumpvars(0, tb_pms7003_parser);

        repeat (5) @(posedge clk);
        rstn <= 1'b1;
        repeat (5) @(posedge clk);

        // T1: 정상 프레임 12개
        $display("--- T1: 정상 프레임 12개 ---");
        before_fv = fv_cnt;
        for (i = 0; i < 12; i = i + 1)
            send_pms($random(seed), $random(seed), $random(seed), 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 12) begin
            err = err + 1;
            $display("T1 FAIL: %0d/12 프레임", fv_cnt - before_fv);
        end else $display("  OK: 12프레임, PM 필드·엔디안 일치");

        // T2: 체크섬 손상 (R2)
        $display("--- T2: 체크섬 손상 4개 ---");
        before_ce = ce_cnt;  before_fv = fv_cnt;  before_pm1 = pm1_0;
        for (i = 0; i < 4; i = i + 1)
            send_pms(16'hDEAD, 16'hBEEF, 16'hCAFE, 1'b1, 1'b0);
        settle;
        if (ce_cnt - before_ce != 4) begin
            err = err + 1;
            $display("R2 FAIL: csum_err %0d회 (기대 4)", ce_cnt - before_ce);
        end else if (fv_cnt != before_fv) begin
            err = err + 1;
            $display("R2 FAIL: 손상인데 frame_valid 발생");
        end else if (pm1_0 !== before_pm1) begin
            err = err + 1;
            $display("R2 FAIL: 출력 오염 %04x -> %04x", before_pm1, pm1_0);
        end else $display("  OK: csum_err 4회, 출력 불변");

        // T3: 앞에 잡음 (R6)
        $display("--- T3: 앞에 잡음 ---");
        before_fv = fv_cnt;
        push(8'h00); push(8'h99); push(8'h4D);   // 0x4D 단독 = 가짜
        send_pms(16'd10, 16'd25, 16'd40, 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 1) begin
            err = err + 1;
            $display("R6 FAIL: 잡음 뒤 프레임 미수신");
        end else $display("  OK");

        // T4: **핵심** 42 42 4D 재동기 (R1)
        $display("--- T4: 0x42 반복 후 프레임 (R1 재동기) ---");
        before_fv = fv_cnt;
        push(8'h42);                              // 가짜 0x42 하나
        send_pms(16'd11, 16'd22, 16'd33, 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 1) begin
            err = err + 1;
            $display("R1 FAIL: 42 42 4D 재동기 실패 - 프레임 놓침!");
        end else $display("  OK: 42 다음 42를 새 헤더로 인식 (재동기 성공)");

        // T5: 절단 후 복구
        $display("--- T5: 절단 후 복구 ---");
        push(8'h42); push(8'h4D); push(8'h00); push(8'd28); push(8'h01);
        before_fv = fv_cnt;
        send_pms(16'd44, 16'd55, 16'd66, 1'b0, 1'b0);   // 소실 가능 -> 큐 제외
        settle;
        $display("  절단 후 %0d 프레임 (오정렬은 체크섬이 거름)", fv_cnt - before_fv);
        flush;
        before_fv = fv_cnt;
        send_pms(16'd44, 16'd55, 16'd66, 1'b0, 1'b1);   // 복구 후엔 반드시 수신
        settle;
        if (fv_cnt - before_fv != 1) begin
            err = err + 1;
            $display("R6 FAIL: 복구 후 프레임 미수신");
        end else $display("  OK: 복구 후 정상 수신");

        // T6: 백투백
        $display("--- T6: 백투백 6개 ---");
        before_fv = fv_cnt;
        for (i = 0; i < 6; i = i + 1)
            send_pms($random(seed), $random(seed), $random(seed), 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 6) begin
            err = err + 1;
            $display("T6 FAIL: %0d/6", fv_cnt - before_fv);
        end else $display("  OK: 백투백 6프레임");

        repeat (20) @(posedge clk);
        if (q_rd != q_wr) begin
            err = err + 1;
            $display("FAIL: 프레임 누락 - 큐 %0d, 수신 %0d", q_wr, q_rd);
        end
        if (err == 0)
            $display("TB PASS: frame_valid %0d (모호구간 %0d), csum_err %0d, 0 errors (seed=%0d)",
                     fv_cnt, stray, ce_cnt, seed0);
        else
            $display("TB FAIL: err=%0d (seed=%0d)", err, seed0);
        $finish;
    end

    initial begin
        #10_000_000;
        $display("TB TIMEOUT");
        $finish;
    end

endmodule
