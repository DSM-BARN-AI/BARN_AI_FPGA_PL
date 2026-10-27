`timescale 1ns/1ps
// ============================================================
// tb_uart_rx - self-checking TB (verification infra), docs/10
//
// 파이썬 골든 불필요: TB가 직렬 파형을 직접 구동하므로 "보낸 바이트"가
// 곧 골든이다. send_byte()로 시작/데이터/정지 비트를 지정한 비트 시간에
// 흔들어 주고, DUT가 뱉은 바이트를 기대 큐와 대조한다.
//
// 시뮬 속도: BAUD=625000 -> OSVW_TICKS = 100e6/(625e3*16) = 10 (나눗셈 정확).
//            1비트 = 160클럭. 실제 9600 설정(OSVW=651)은 별도 스냅샷에서 확인.
// plusargs : +seed=N
// ============================================================
module tb_uart_rx;

    parameter integer CLK_FREQ_HZ = 100_000_000;
    parameter integer BAUD        = 625_000;      // xelab -generic_top로 변경
    parameter integer OVERSAMPLE  = 16;
    localparam integer BIT_CLKS   = CLK_FREQ_HZ / BAUD;   // 160 (nominal)

    reg clk = 1'b0, rstn = 1'b0;
    always #5 clk = ~clk;                          // 100 MHz

    reg  rx_line = 1'b1;                           // 아이들 High
    wire [7:0] m_data;
    wire       m_valid, frame_err;

    uart_rx #(
        .CLK_FREQ_HZ(CLK_FREQ_HZ), .BAUD(BAUD), .OVERSAMPLE(OVERSAMPLE)
    ) dut (
        .aclk(clk), .aresetn(rstn), .rx(rx_line),
        .m_data(m_data), .m_valid(m_valid), .frame_err(frame_err)
    );

    integer seed = 32'h0BA51, seed0;
    integer err = 0;
    // 반복 횟수 (실제 9600 설정은 비트당 10416클럭이라 +quick=1로 축약)
    integer NB1 = 128, NB2 = 64, NB3 = 32, NGL = 8, NRC = 8;

    // ---- 기대 큐 ----
    reg [7:0] exp_q [0:1023];
    integer wr_ptr = 0, rd_ptr = 0;

    // ---- 수신 체커 ----
    integer fe_cnt = 0, rx_cnt = 0;
    always @(posedge clk) if (rstn) begin
        if (m_valid) begin
            rx_cnt = rx_cnt + 1;
            if (rd_ptr >= wr_ptr) begin
                err = err + 1;
                $display("[%0t] FAIL: 예상 밖 바이트 %02x (기대 큐 비어있음)", $time, m_data);
            end else if (m_data !== exp_q[rd_ptr]) begin
                err = err + 1;
                if (err <= 10)
                    $display("[%0t] R3 FAIL: idx=%0d got %02x exp %02x",
                             $time, rd_ptr, m_data, exp_q[rd_ptr]);
            end
            rd_ptr = rd_ptr + 1;
        end
        if (frame_err) fe_cnt = fe_cnt + 1;
        // R5: 같은 클럭에 둘 다 뜨면 안 됨
        if (m_valid && frame_err) begin
            err = err + 1;
            $display("[%0t] R5 FAIL: m_valid와 frame_err 동시 assert", $time);
        end
    end

    // ---- 직렬 송신 태스크 ----
    //  bit_clks : 비트당 클럭 수 (보율 오차 주입용)
    //  stop_val : 정지비트 값 (0이면 프레이밍 에러 유발)
    //  push     : 1이면 기대 큐에 넣음 (에러 케이스는 0)
    task send_byte(input [7:0] b, input integer bit_clks,
                   input stop_val, input push);
        integer i;
        begin
            if (push) begin exp_q[wr_ptr] = b; wr_ptr = wr_ptr + 1; end
            rx_line <= 1'b0;                          // start
            repeat (bit_clks) @(posedge clk);
            for (i = 0; i < 8; i = i + 1) begin       // LSB first
                rx_line <= b[i];
                repeat (bit_clks) @(posedge clk);
            end
            rx_line <= stop_val;                      // stop
            repeat (bit_clks) @(posedge clk);
            rx_line <= 1'b1;                          // 아이들 복귀
        end
    endtask

    task gap(input integer n);
        begin rx_line <= 1'b1; repeat (n) @(posedge clk); end
    endtask

    // ---- main ----
    integer i, n, before, quick;
    reg [7:0] b;
    initial begin
        if (!$value$plusargs("seed=%d", seed)) seed = 32'h0BA51;
        if ($value$plusargs("quick=%d", quick) && quick != 0) begin
            NB1 = 12; NB2 = 8; NB3 = 4; NGL = 3; NRC = 3;
        end
        seed0 = seed;
        $dumpfile("tb_uart_rx.vcd");
        $dumpvars(0, tb_uart_rx);
        $display("BIT_CLKS=%0d (BAUD=%0d, OSVW=%0d)",
                 BIT_CLKS, BAUD, CLK_FREQ_HZ/(BAUD*OVERSAMPLE));

        repeat (10) @(posedge clk);
        rstn <= 1'b1;
        repeat (10) @(posedge clk);

        // T1: 랜덤 128바이트, 랜덤 갭 (R3 기본)
        $display("--- T1: 랜덤 128B + 랜덤 갭 ---");
        for (i = 0; i < NB1; i = i + 1) begin
            b = $random(seed);
            send_byte(b, BIT_CLKS, 1'b1, 1'b1);
            gap(({$random(seed)} % 400));
        end

        // T2: 백투백 (갭 0) — 센서는 32B를 붙여서 보냄
        $display("--- T2: 백투백 64B (갭 0) ---");
        for (i = 0; i < NB2; i = i + 1) begin
            b = $random(seed);
            send_byte(b, BIT_CLKS, 1'b1, 1'b1);
        end
        gap(BIT_CLKS * 4);

        // T3: 보율 +2% (송신이 빠름)
        $display("--- T3: baud +2%% ---");
        for (i = 0; i < NB3; i = i + 1) begin
            b = $random(seed);
            send_byte(b, (BIT_CLKS * 98) / 100, 1'b1, 1'b1);
            gap(BIT_CLKS * 2);
        end

        // T4: 보율 -2% (송신이 느림)
        $display("--- T4: baud -2%% ---");
        for (i = 0; i < NB3; i = i + 1) begin
            b = $random(seed);
            send_byte(b, (BIT_CLKS * 102) / 100, 1'b1, 1'b1);
            gap(BIT_CLKS * 2);
        end

        // T5: 프레이밍 에러 (정지비트 0) — frame_err만, 바이트 없음 (R4)
        $display("--- T5: frame_err 주입 x4 ---");
        before = fe_cnt;
        for (i = 0; i < 4; i = i + 1) begin
            send_byte(8'h5A, BIT_CLKS, 1'b0, 1'b0);   // push=0: 기대 안 함
            gap(BIT_CLKS * 4);
        end
        if (fe_cnt - before != 4) begin
            err = err + 1;
            $display("R4 FAIL: frame_err %0d회 (기대 4회)", fe_cnt - before);
        end else $display("  R4 OK: frame_err 4회 검출, 바이트 억제됨");

        // T6: 시작비트 글리치 — 오검출 없어야 함 (R1)
        $display("--- T6: start 글리치 주입 ---");
        before = rd_ptr;
        for (i = 0; i < NGL; i = i + 1) begin
            rx_line <= 1'b0;
            repeat (BIT_CLKS / 8) @(posedge clk);     // 1/8비트 짧은 low
            rx_line <= 1'b1;
            repeat (BIT_CLKS * 3) @(posedge clk);
        end
        if (rd_ptr != before) begin
            err = err + 1;
            $display("R1 FAIL: 글리치를 바이트로 오검출 (%0d개)", rd_ptr - before);
        end else $display("  R1 OK: 글리치 %0d회 전부 무시", NGL);

        // T7: 글리치 직후 정상 프레임 (복구 확인)
        $display("--- T7: 글리치 후 복구 ---");
        for (i = 0; i < NRC; i = i + 1) begin
            b = $random(seed);
            send_byte(b, BIT_CLKS, 1'b1, 1'b1);
            gap(BIT_CLKS * 2);
        end

        repeat (BIT_CLKS * 4) @(posedge clk);

        // ---- 요약 ----
        if (rd_ptr != wr_ptr) begin
            err = err + 1;
            $display("FAIL: 수신 누락 - 보냄 %0d, 받음 %0d", wr_ptr, rd_ptr);
        end
        if (err == 0)
            $display("TB PASS: %0d bytes ok, frame_err %0d, 0 errors (BAUD=%0d seed=%0d)",
                     rd_ptr, fe_cnt, BAUD, seed0);
        else
            $display("TB FAIL: err=%0d (보냄 %0d, 받음 %0d, seed=%0d)",
                     err, wr_ptr, rd_ptr, seed0);
        $finish;
    end

    initial begin
        #500_000_000;
        $display("TB TIMEOUT: 받음 %0d / 보냄 %0d", rd_ptr, wr_ptr);
        $finish;
    end

endmodule
