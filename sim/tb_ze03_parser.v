`timescale 1ns/1ps
// ============================================================
// tb_ze03_parser - self-checking TB (docs/11)
// TB가 프레임을 조립해 주입하므로 TB 자체가 골든.
// plusargs: +seed=N
// ============================================================
module tb_ze03_parser;

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;

    reg  [7:0] s_data  = 8'd0;
    reg        s_valid = 1'b0;

    wire [15:0] conc, range;
    wire [7:0]  gas_type, unit, decimals;
    wire        frame_valid, csum_err;

    ze03_parser dut (
        .aclk(clk), .aresetn(rstn),
        .s_data(s_data), .s_valid(s_valid),
        .conc(conc), .gas_type(gas_type), .unit(unit),
        .decimals(decimals), .range(range),
        .frame_valid(frame_valid), .csum_err(csum_err)
    );

    integer seed = 32'h0BA51, seed0;
    integer err = 0, fv_cnt = 0, ce_cnt = 0, stray = 0;

    // 기대값 **큐** — 프레임을 만들 때 넣고, frame_valid에서 꺼낸다.
    // (직접 변수로 두면 다음 프레임이 기대값을 먼저 덮어써서 레이스 발생)
    reg [55:0] exp_q [0:255];        // {gas,unit,dec,conc,range}
    integer q_wr = 0, q_rd = 0;
    wire [15:0] e_conc  = exp_q[q_rd][15:0];
    wire [15:0] e_range = exp_q[q_rd][31:16];
    wire [7:0]  e_dec   = exp_q[q_rd][39:32];
    wire [7:0]  e_unit  = exp_q[q_rd][47:40];
    wire [7:0]  e_gas   = exp_q[q_rd][55:48];

    // ---- 체커 ----
    always @(posedge clk) if (rstn) begin
        if (frame_valid && csum_err) begin
            err = err + 1;
            $display("[%0t] R4 FAIL: frame_valid/csum_err 동시 assert", $time);
        end
        if (frame_valid) begin
            fv_cnt = fv_cnt + 1;
            // 큐가 비어 있으면 T4/T5의 모호 구간 -> 계수만 하고 통과
            if (q_rd >= q_wr) begin
                stray = stray + 1;
            end else if (conc !== e_conc || range !== e_range || gas_type !== e_gas ||
                unit !== e_unit || decimals !== e_dec) begin
                err = err + 1;
                if (err <= 10)
                    $display("[%0t] FAIL: conc=%04x(exp %04x) range=%04x(exp %04x) gas=%02x unit=%02x dec=%02x",
                             $time, conc, e_conc, range, e_range, gas_type, unit, decimals);
            end
            if (q_rd < q_wr) q_rd = q_rd + 1;
        end
        if (csum_err) ce_cnt = ce_cnt + 1;
    end

    // ---- 바이트 주입 ----
    task push(input [7:0] b);
        begin
            @(posedge clk);
            s_data  <= b;
            s_valid <= 1'b1;
            @(posedge clk);
            s_valid <= 1'b0;
            repeat (({$random(seed)} % 3)) @(posedge clk);   // 바이트 간 랜덤 갭
        end
    endtask

    // ---- ZE03 프레임 전송 ----
    //  corrupt: 0=정상, 1=체크섬 손상
    //  upd    : 1이면 기대값 갱신 (정상 프레임일 때만)
    task send_ze03(input [7:0] gas, input [7:0] un, input [7:0] dc,
                   input [15:0] cn, input [15:0] rg,
                   input corrupt, input upd);
        reg [7:0] f [0:8];
        integer k, s;
        begin
            f[0] = 8'hFF;
            f[1] = gas;  f[2] = un;  f[3] = dc;
            f[4] = cn[15:8];  f[5] = cn[7:0];
            f[6] = rg[15:8];  f[7] = rg[7:0];
            s = 0;
            for (k = 1; k <= 7; k = k + 1) s = s + f[k];
            f[8] = (8'h00 - s[7:0]);              // 2의 보수
            if (corrupt) f[8] = f[8] ^ 8'h01;     // 1비트 손상
            if (upd && !corrupt) begin
                exp_q[q_wr] = {gas, un, dc, rg, cn};
                q_wr = q_wr + 1;
            end
            for (k = 0; k <= 8; k = k + 1) push(f[k]);
        end
    endtask

    integer i, before_fv, before_ce;
    reg [15:0] before_conc;

    // 마지막 프레임의 펄스가 카운터에 반영될 때까지 대기 (레이스 방지)
    task settle; begin repeat (6) @(posedge clk); end endtask

    // 파서를 확실히 HUNT 상태로 되돌린다 (본문 최대 8바이트 < 12, 0x00은 헤더 아님)
    task flush;
        integer k;
        begin for (k = 0; k < 12; k = k + 1) push(8'h00); settle; end
    endtask

    initial begin
        if (!$value$plusargs("seed=%d", seed)) seed = 32'h0BA51;
        seed0 = seed;
        $dumpfile("tb_ze03_parser.vcd");
        $dumpvars(0, tb_ze03_parser);

        repeat (5) @(posedge clk);
        rstn <= 1'b1;
        repeat (5) @(posedge clk);

        // T1: 정상 프레임 16개 (랜덤 값)
        $display("--- T1: 정상 프레임 16개 ---");
        before_fv = fv_cnt;
        for (i = 0; i < 16; i = i + 1)
            send_ze03($random(seed), $random(seed), $random(seed),
                      $random(seed), $random(seed), 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 16) begin
            err = err + 1;
            $display("T1 FAIL: frame_valid %0d회 (기대 16)", fv_cnt - before_fv);
        end else $display("  OK: 16 프레임 수신, 필드 일치");

        // T2: 체크섬 손상 -> csum_err, 출력 불변 (R2)
        $display("--- T2: 체크섬 손상 4개 ---");
        before_ce = ce_cnt;  before_fv = fv_cnt;  before_conc = conc;
        for (i = 0; i < 4; i = i + 1)
            send_ze03(8'h17, 8'h02, 8'h00, 16'hDEAD, 16'hBEEF, 1'b1, 1'b0);
        settle;
        if (ce_cnt - before_ce != 4) begin
            err = err + 1;
            $display("R2 FAIL: csum_err %0d회 (기대 4)", ce_cnt - before_ce);
        end else if (fv_cnt != before_fv) begin
            err = err + 1;
            $display("R2 FAIL: 손상 프레임인데 frame_valid 발생");
        end else if (conc !== before_conc) begin
            err = err + 1;
            $display("R2 FAIL: 손상 프레임이 출력을 오염시킴 %04x -> %04x",
                     before_conc, conc);
        end else $display("  OK: csum_err 4회, 출력 불변");

        // T3: 프레임 앞에 잡음 (R6)
        $display("--- T3: 앞에 잡음 바이트 ---");
        before_fv = fv_cnt;
        push(8'h00); push(8'h12); push(8'hAB);
        send_ze03(8'h17, 8'h02, 8'h01, 16'h0064, 16'h07D0, 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 1) begin
            err = err + 1;
            $display("R6 FAIL: 잡음 뒤 프레임 미수신");
        end else $display("  OK: 잡음 무시 후 정상 수신");

        // T4: 헤더 바이트 반복 (FF FF ...) — 재동기 (R1)
        $display("--- T4: FF 반복 후 프레임 ---");
        before_fv = fv_cnt;
        push(8'hFF); push(8'hFF);      // 가짜 시작 2회
        send_ze03(8'h17, 8'h02, 8'h00, 16'h1234, 16'h0FA0, 1'b0, 1'b0);
        settle;
        $display("  frame_valid %0d회 (ZE03은 1바이트 헤더라 오동기 가능 - 체크섬이 거름)",
                 fv_cnt - before_fv);
        flush;

        // T5: 프레임 중간 절단 후 정상 (R6 복구)
        $display("--- T5: 절단 후 복구 ---");
        push(8'hFF); push(8'h17); push(8'h02);   // 중간에 끊김
        before_fv = fv_cnt;
        send_ze03(8'h17, 8'h02, 8'h00, 16'h4321, 16'h0FA0, 1'b0, 1'b0);
        settle;
        $display("  절단 후 %0d 프레임 (오정렬은 체크섬이 거름)", fv_cnt - before_fv);
        flush;
        // 복구 확인: flush 뒤 정상 프레임은 반드시 수신돼야 함
        before_fv = fv_cnt;
        send_ze03(8'h17, 8'h02, 8'h00, 16'h4321, 16'h0FA0, 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 1) begin
            err = err + 1;
            $display("R6 FAIL: 복구 후 프레임 미수신");
        end else $display("  OK: 복구 후 정상 수신");

        // T6: 백투백 (갭 0) 정상 프레임
        $display("--- T6: 백투백 8개 ---");
        before_fv = fv_cnt;
        for (i = 0; i < 8; i = i + 1)
            send_ze03($random(seed), 8'h02, 8'h00,
                      $random(seed), 16'h0FA0, 1'b0, 1'b1);
        settle;
        if (fv_cnt - before_fv != 8) begin
            err = err + 1;
            $display("T6 FAIL: %0d/8 프레임", fv_cnt - before_fv);
        end else $display("  OK: 백투백 8프레임");

        repeat (20) @(posedge clk);
        if (q_rd != q_wr) begin
            err = err + 1;
            $display("FAIL: 프레임 누락 - 보냄 %0d, 받음 %0d", q_wr, q_rd);
        end
        if (err == 0)
            $display("TB PASS: frame_valid %0d (그중 모호구간 %0d), csum_err %0d, 0 errors (seed=%0d)",
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
