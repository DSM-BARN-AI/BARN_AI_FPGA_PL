`timescale 1ns/1ps

module tb_axis_tpg;

    localparam integer H      = 64;   // small for sim speed
    localparam integer V      = 48;
    localparam integer FRAMES = 2;

    reg         clk  = 1'b0;
    reg         rstn = 1'b0;
    reg         enable = 1'b0;
    reg  [1:0]  pattern_sel = 2'd0;
    wire [23:0] tdata;
    wire        tvalid, tuser, tlast;
    reg         tready = 1'b0;

    integer ready_mode = 1;           // 0: always ready, 1: random 70%
    integer pat = 0;                  // +pattern=N  (0/1/3)
    integer seed = 32'h0BA51;
    integer fd;
    integer err = 0;
    integer x = 0, y = 0, frame = 0, px = 0;

    always #5 clk = ~clk;             // 100 MHz

    axis_tpg #(.H_ACTIVE(H), .V_ACTIVE(V)) dut (
        .aclk         (clk),
        .aresetn      (rstn),
        .enable       (enable),
        .pattern_sel  (pattern_sel),
        .m_axis_tdata (tdata),
        .m_axis_tvalid(tvalid),
        .m_axis_tready(tready),
        .m_axis_tuser (tuser),
        .m_axis_tlast (tlast)
    );

    // ---- tready driver ---------------------------------------------
    always @(posedge clk) begin
        if (!rstn)                tready <= 1'b0;
        else if (ready_mode == 0) tready <= 1'b1;
        else                      tready <= (({$random(seed)} % 100) < 70);
    end

    // ---- R1: tvalid hold / payload stability while stalled ---------
    reg        pend = 1'b0;
    reg [23:0] d_hold;
    reg        u_hold, l_hold;
    always @(posedge clk) begin
        if (!rstn) pend <= 1'b0;
        else begin
            if (pend && !tvalid) begin
                err = err + 1;
                $display("[%0t] R1 FAIL: tvalid deasserted before accept", $time);
                pend <= 1'b0;
            end else if (tvalid && !tready) begin
                if (pend && (tdata !== d_hold || tuser !== u_hold || tlast !== l_hold)) begin
                    err = err + 1;
                    $display("[%0t] R1 FAIL: payload changed while stalled (x=%0d y=%0d)",
                             $time, x, y);
                end
                pend   <= 1'b1;
                d_hold <= tdata;
                u_hold <= tuser;
                l_hold <= tlast;
            end else if (tvalid && tready) begin
                pend <= 1'b0;
            end
        end
    end

    // ---- capture + R2/R3 position checks ----------------------------
    always @(posedge clk) begin
        if (rstn && tvalid && tready && (frame < FRAMES)) begin
            if (tuser !== ((x == 0) && (y == 0))) begin
                err = err + 1;
                $display("[%0t] R2 FAIL: tuser=%b at x=%0d y=%0d", $time, tuser, x, y);
            end
            if (tlast !== (x == H-1)) begin
                err = err + 1;
                $display("[%0t] R3 FAIL: tlast=%b at x=%0d y=%0d", $time, tlast, x, y);
            end
            $fdisplay(fd, "%06x", tdata);
            px = px + 1;
            if (x == H-1) begin
                x = 0;
                if (y == V-1) begin
                    y = 0;
                    frame = frame + 1;
                    $display("[%0t] frame %0d captured", $time, frame);
                end else y = y + 1;
            end else x = x + 1;
        end
    end

    // ---- main --------------------------------------------------------
    initial begin
        if (!$value$plusargs("ready_mode=%d", ready_mode)) ready_mode = 1;
        if (!$value$plusargs("pattern=%d", pat))           pat = 0;
        pattern_sel = pat[1:0];
        fd = $fopen("tpg_out.hex", "w");
        $dumpfile("tb_axis_tpg.vcd");
        $dumpvars(0, tb_axis_tpg);

        repeat (5) @(posedge clk);
        rstn <= 1'b1;
        repeat (5) @(posedge clk);
        enable <= 1'b1;

        wait (frame == FRAMES);
        enable <= 1'b0;               // R5: DUT must stop at frame boundary
        repeat (50) @(posedge clk);

        $fclose(fd);
        if (err == 0 && px == FRAMES*H*V)
            $display("TB PASS: %0d frames, %0d pixels, 0 protocol errors (ready_mode=%0d)",
                     FRAMES, px, ready_mode);
        else
            $display("TB FAIL: err=%0d px=%0d expected=%0d", err, px, FRAMES*H*V);
        $finish;
    end

    // ---- watchdog ------------------------------------------------------
    initial begin
        #5_000_000;
        $display("TB TIMEOUT: DUT never completed %0d frames.", FRAMES);
        $display("  (tvalid stuck low? counters not advancing? see spec hint 7.3)");
        $finish;
    end

endmodule
