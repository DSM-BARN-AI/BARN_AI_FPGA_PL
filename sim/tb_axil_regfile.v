`timescale 1ns/1ps
// ============================================================
// tb_axil_regfile - self-checking TB for the AXI4-Lite regfile
// (verification infra, provided complete - spec: docs/03)
//
// plusargs: +seed=N  +n_ops=N (random stress ops, default 200)
// Tests: reset values, WSTRB byte lanes, field masks (RAZ/WI),
//        RO write-ignore, unmapped SLVERR, AW/W ordering (R2),
//        read/write channel independence (R9), random stress
//        against a reference model, R1 stability monitors.
// ============================================================
module tb_axil_regfile;

    localparam integer TMO   = 200;        // per-transaction watchdog (cycles)
    localparam [31:0]  MAGIC = 32'hBA51_0301;
    localparam [31:0]  BADRD = 32'hDEAD_BEEF;
    localparam [1:0]   OKAY  = 2'b00, SLVERR = 2'b10;

    // register offsets (byte addresses)
    localparam [7:0] A_ID = 8'h00, A_SCR = 8'h04, A_CTRL = 8'h08,
                     A_TPG = 8'h0C, A_STAT = 8'h10,
                     A_UNMAP1 = 8'h14, A_UNMAP2 = 8'hFC;

    reg         clk = 1'b0;
    reg         rstn = 1'b0;
    always #5 clk = ~clk;                  // 100 MHz

    // ---- AXI4-Lite master-side signals ------------------------------
    reg  [7:0]  awaddr = 0;  reg awvalid = 0;  wire awready;
    reg  [31:0] wdata  = 0;  reg [3:0] wstrb = 0; reg wvalid = 0; wire wready;
    wire [1:0]  bresp;       wire bvalid;     reg bready = 0;
    reg  [7:0]  araddr = 0;  reg arvalid = 0; wire arready;
    wire [31:0] rdata;       wire [1:0] rresp; wire rvalid; reg rready = 0;

    wire        tpg_enable;
    wire [1:0]  pattern_sel;
    wire        mux_sel;               // v2
    reg  [31:0] status_in = 32'h0;

    integer seed  = 32'h0BA51;
    integer seed0 = 32'h0BA51;             // original (for reproducible report)
    integer n_ops = 200;
    integer err = 0;
    integer i;

    axil_regfile #(.ADDR_WIDTH(8)) dut (
        .aclk           (clk),
        .aresetn        (rstn),
        .s_axil_awaddr  (awaddr),
        .s_axil_awvalid (awvalid),
        .s_axil_awready (awready),
        .s_axil_wdata   (wdata),
        .s_axil_wstrb   (wstrb),
        .s_axil_wvalid  (wvalid),
        .s_axil_wready  (wready),
        .s_axil_bresp   (bresp),
        .s_axil_bvalid  (bvalid),
        .s_axil_bready  (bready),
        .s_axil_araddr  (araddr),
        .s_axil_arvalid (arvalid),
        .s_axil_arready (arready),
        .s_axil_rdata   (rdata),
        .s_axil_rresp   (rresp),
        .s_axil_rvalid  (rvalid),
        .s_axil_rready  (rready),
        .tpg_enable     (tpg_enable),
        .pattern_sel    (pattern_sel),
        .mux_sel        (mux_sel),
        .status_in      (status_in)
    );

    // ---- reference model --------------------------------------------
    reg [31:0] ref_scr, ref_ctrl, ref_tpg;

    function [31:0] strb_merge;            // per-byte WSTRB merge
        input [31:0] cur; input [31:0] nv; input [3:0] st;
        begin
            strb_merge[ 7: 0] = st[0] ? nv[ 7: 0] : cur[ 7: 0];
            strb_merge[15: 8] = st[1] ? nv[15: 8] : cur[15: 8];
            strb_merge[23:16] = st[2] ? nv[23:16] : cur[23:16];
            strb_merge[31:24] = st[3] ? nv[31:24] : cur[31:24];
        end
    endfunction

    function is_mapped;
        input [7:0] a;
        is_mapped = (a==A_ID) || (a==A_SCR) || (a==A_CTRL) ||
                    (a==A_TPG) || (a==A_STAT);
    endfunction

    task ref_write;                        // mirror of spec 4 semantics
        input [7:0] a; input [31:0] d; input [3:0] st;
        begin
            case (a)
                A_SCR:  ref_scr  = strb_merge(ref_scr,  d, st);
                A_CTRL: ref_ctrl = strb_merge(ref_ctrl, d, st) & 32'h0000_0003;  // v2
                A_TPG:  ref_tpg  = strb_merge(ref_tpg,  d, st) & 32'h0000_0003;
                default: ;                 // RO / unmapped: no state change
            endcase
        end
    endtask

    function [31:0] ref_read;
        input [7:0] a;
        begin
            case (a)
                A_ID:    ref_read = MAGIC;
                A_SCR:   ref_read = ref_scr;
                A_CTRL:  ref_read = ref_ctrl;
                A_TPG:   ref_read = ref_tpg;
                A_STAT:  ref_read = status_in;
                default: ref_read = BADRD;
            endcase
        end
    endfunction

    // ---- BFM: write (independent AW/W timing, spec-legal master) ----
    // aw_dly/w_dly: cycles before presenting each channel (not gated on
    // the other channel's ready - tests R2 orderings)
    task axil_write;
        input [7:0]  addr;
        input [31:0] data;
        input [3:0]  strb;
        input integer aw_dly;
        input integer w_dly;
        output [1:0] resp;
        integer t; reg aw_done, w_done, b_done;
        begin
            aw_done = 0; w_done = 0; b_done = 0; t = 0;
            if ({$random(seed)} % 2) bready <= 1'b1;   // sometimes pre-assert
            while (!(aw_done && w_done && b_done)) begin
                @(posedge clk);
                if (awvalid && awready && !aw_done) begin
                    awvalid <= 1'b0; aw_done = 1;
                end
                if (wvalid && wready && !w_done) begin
                    wvalid <= 1'b0; w_done = 1;
                end
                if (bvalid && bready && !b_done) begin
                    resp = bresp; bready <= 1'b0; b_done = 1;
                end
                if (!aw_done && !awvalid && t >= aw_dly) begin
                    awaddr <= addr; awvalid <= 1'b1;
                end
                if (!w_done && !wvalid && t >= w_dly) begin
                    wdata <= data; wstrb <= strb; wvalid <= 1'b1;
                end
                if (bvalid && !bready && !b_done)
                    if (({$random(seed)} % 100) < 60) bready <= 1'b1;
                t = t + 1;
                if (t > TMO) begin
                    err = err + 1;
                    $display("[%0t] WRITE TIMEOUT addr=%02x aw=%b w=%b b=%b - R2 deadlock or no B resp (R4)?",
                             $time, addr, aw_done, w_done, b_done);
                    awvalid <= 0; wvalid <= 0; bready <= 0;
                    resp = 2'bxx; aw_done = 1; w_done = 1; b_done = 1;
                end
            end
        end
    endtask

    // ---- BFM: read ----------------------------------------------------
    task axil_read;
        input  [7:0]  addr;
        input  integer ar_dly;
        output [31:0] data;
        output [1:0]  resp;
        integer t; reg ar_done, r_done;
        begin
            ar_done = 0; r_done = 0; t = 0;
            if ({$random(seed)} % 2) rready <= 1'b1;
            while (!(ar_done && r_done)) begin
                @(posedge clk);
                if (arvalid && arready && !ar_done) begin
                    arvalid <= 1'b0; ar_done = 1;
                end
                if (rvalid && rready && !r_done) begin
                    data = rdata; resp = rresp; rready <= 1'b0; r_done = 1;
                end
                if (!ar_done && !arvalid && t >= ar_dly) begin
                    araddr <= addr; arvalid <= 1'b1;
                end
                if (rvalid && !rready && !r_done)
                    if (({$random(seed)} % 100) < 60) rready <= 1'b1;
                t = t + 1;
                if (t > TMO) begin
                    err = err + 1;
                    $display("[%0t] READ TIMEOUT addr=%02x ar=%b r=%b - ARREADY/RVALID stuck (R5/R8)?",
                             $time, addr, ar_done, r_done);
                    arvalid <= 0; rready <= 0;
                    data = 32'hxxxx_xxxx; resp = 2'bxx; ar_done = 1; r_done = 1;
                end
            end
        end
    endtask

    // ---- checked wrappers ---------------------------------------------
    reg [31:0] got;  reg [1:0] gresp;

    task wr_chk;                           // write + resp check + model update
        input [7:0] a; input [31:0] d; input [3:0] st;
        input integer awd; input integer wd;
        reg [1:0] exp;
        begin
            exp = is_mapped(a) ? OKAY : SLVERR;
            axil_write(a, d, st, awd, wd, gresp);
            if (gresp !== exp) begin
                err = err + 1;
                $display("[%0t] R4 FAIL: BRESP=%b expected %b (addr=%02x)", $time, gresp, exp, a);
            end
            ref_write(a, d, st);
            @(posedge clk);                // settle: commit NBA fully applied
            // R10: outputs must reflect committed state once B completed
            if (tpg_enable !== ref_ctrl[0]) begin
                err = err + 1;
                $display("[%0t] R10 FAIL: tpg_enable=%b expected %b", $time, tpg_enable, ref_ctrl[0]);
            end
            if (mux_sel !== ref_ctrl[1]) begin
                err = err + 1;
                $display("[%0t] R10 FAIL: mux_sel=%b expected %b", $time, mux_sel, ref_ctrl[1]);
            end
            if (pattern_sel !== ref_tpg[1:0]) begin
                err = err + 1;
                $display("[%0t] R10 FAIL: pattern_sel=%b expected %b", $time, pattern_sel, ref_tpg[1:0]);
            end
        end
    endtask

    task rd_chk;                           // read + data/resp check
        input [7:0] a;
        reg [31:0] exp; reg [1:0] expr;
        begin
            exp  = ref_read(a);
            expr = is_mapped(a) ? OKAY : SLVERR;
            axil_read(a, {$random(seed)} % 3, got, gresp);
            if (got !== exp) begin
                err = err + 1;
                $display("[%0t] R5 FAIL: rd %02x = %08x expected %08x", $time, a, got, exp);
            end
            if (gresp !== expr) begin
                err = err + 1;
                $display("[%0t] R5 FAIL: RRESP=%b expected %b (addr=%02x)", $time, gresp, expr, a);
            end
        end
    endtask

    // ---- R1 stability monitors (B and R channels) ---------------------
    reg        bpend = 0;  reg [1:0]  bhold;
    reg        rpend = 0;  reg [31:0] dhold;  reg [1:0] rhold;
    always @(posedge clk) begin
        if (!rstn) begin bpend <= 0; rpend <= 0; end
        else begin
            // B channel
            if (bpend && !bvalid) begin
                err = err + 1;
                $display("[%0t] R1 FAIL: BVALID dropped before BREADY", $time);
                bpend <= 0;
            end else if (bvalid && !bready) begin
                if (bpend && bresp !== bhold) begin
                    err = err + 1;
                    $display("[%0t] R1 FAIL: BRESP changed while stalled", $time);
                end
                bpend <= 1; bhold <= bresp;
            end else if (bvalid && bready) bpend <= 0;
            // R channel
            if (rpend && !rvalid) begin
                err = err + 1;
                $display("[%0t] R1 FAIL: RVALID dropped before RREADY", $time);
                rpend <= 0;
            end else if (rvalid && !rready) begin
                if (rpend && (rdata !== dhold || rresp !== rhold)) begin
                    err = err + 1;
                    $display("[%0t] R1 FAIL: RDATA/RRESP changed while stalled", $time);
                end
                rpend <= 1; dhold <= rdata; rhold <= rresp;
            end else if (rvalid && rready) rpend <= 0;
        end
    end

    // ---- R4/R5 response accounting ------------------------------------
    integer naw = 0, nw = 0, nb = 0, nar = 0, nr = 0;
    always @(posedge clk) if (rstn) begin
        if (awvalid && awready) naw = naw + 1;
        if (wvalid  && wready)  nw  = nw  + 1;
        if (bvalid  && bready)  begin
            nb = nb + 1;
            if (nb > naw || nb > nw) begin
                err = err + 1;
                $display("[%0t] R4 FAIL: B resp #%0d before AW/W accepted (naw=%0d nw=%0d)",
                         $time, nb, naw, nw);
            end
        end
        if (arvalid && arready) nar = nar + 1;
        if (rvalid  && rready)  begin
            nr = nr + 1;
            if (nr > nar) begin
                err = err + 1;
                $display("[%0t] R5 FAIL: R beat #%0d before AR accepted", $time, nr);
            end
        end
    end

    // ---- stress helpers ------------------------------------------------
    reg [7:0]  s_addr; reg [31:0] s_data; reg [3:0] s_strb;
    integer    s_op, s_sel, t9;

    function [7:0] pick_addr;
        input integer sel;
        case (sel)
            0: pick_addr = A_ID;    1: pick_addr = A_SCR;
            2: pick_addr = A_CTRL;  3: pick_addr = A_TPG;
            4: pick_addr = A_STAT;  5: pick_addr = A_UNMAP1;
            default: pick_addr = A_UNMAP2;
        endcase
    endfunction

    // ---- main ------------------------------------------------------------
    initial begin
        if (!$value$plusargs("seed=%d",  seed))  seed  = 32'h0BA51;
        if (!$value$plusargs("n_ops=%d", n_ops)) n_ops = 200;
        seed0 = seed;
        $dumpfile("tb_axil_regfile.vcd");
        $dumpvars(0, tb_axil_regfile);
        ref_scr = 0; ref_ctrl = 0; ref_tpg = 0;
        status_in = 32'hCAFE_0123;

        repeat (5) @(posedge clk);
        rstn <= 1'b1;
        repeat (5) @(posedge clk);

        // T1: reset values + sanity
        $display("--- T1: reset readback ---");
        rd_chk(A_ID); rd_chk(A_SCR); rd_chk(A_CTRL); rd_chk(A_TPG); rd_chk(A_STAT);
        if (tpg_enable !== 1'b0 || pattern_sel !== 2'b00 || mux_sel !== 1'b0) begin
            err = err + 1;
            $display("R7 FAIL: outputs not at reset values");
        end

        // T2: scratch full write + WSTRB byte-lane walk
        $display("--- T2: SCRATCH + WSTRB lanes ---");
        wr_chk(A_SCR, 32'hAABB_CCDD, 4'b1111, 0, 0); rd_chk(A_SCR);
        for (i = 0; i < 4; i = i + 1) begin
            wr_chk(A_SCR, 32'h1111_1111 * (i+1), 4'b0001 << i, 1, 0);
            rd_chk(A_SCR);
        end
        wr_chk(A_SCR, 32'hFFFF_FFFF, 4'b0000, 0, 1);   // no-op write (R3)
        rd_chk(A_SCR);

        // T3: field masks (RAZ/WI) + output ports
        $display("--- T3: CTRL/TPG_CFG masks + R10 outputs ---");
        wr_chk(A_CTRL, 32'hFFFF_FFFF, 4'b1111, 0, 0); rd_chk(A_CTRL);
        wr_chk(A_TPG,  32'hFFFF_FFFE, 4'b1111, 0, 0); rd_chk(A_TPG);
        wr_chk(A_TPG,  32'h0000_0000, 4'b1110, 0, 0); rd_chk(A_TPG); // byte0 gated
        wr_chk(A_CTRL, 32'h0000_0000, 4'b1111, 0, 0); rd_chk(A_CTRL);
        wr_chk(A_TPG,  32'h0000_0003, 4'b0001, 0, 0); rd_chk(A_TPG);

        // T4: RO write-ignore (OKAY resp, no state change)
        $display("--- T4: RO write-ignore ---");
        wr_chk(A_ID,   32'h1234_5678, 4'b1111, 0, 0); rd_chk(A_ID);
        wr_chk(A_STAT, 32'h0BAD_0BAD, 4'b1111, 0, 0); rd_chk(A_STAT);
        status_in = 32'h5EED_BEEF;                      // RO follows input
        @(posedge clk); rd_chk(A_STAT);

        // T5: unmapped -> SLVERR
        $display("--- T5: unmapped SLVERR ---");
        rd_chk(A_UNMAP1); rd_chk(A_UNMAP2);
        wr_chk(A_UNMAP1, 32'h1111_2222, 4'b1111, 0, 0);
        rd_chk(A_SCR);                                  // neighbors unharmed

        // T6: AW/W orderings (R2) - AW-first, W-first, same-cycle
        $display("--- T6: AW/W ordering ---");
        wr_chk(A_SCR, 32'h0001_0001, 4'b1111, 0, 3); rd_chk(A_SCR);
        wr_chk(A_SCR, 32'h0002_0002, 4'b1111, 3, 0); rd_chk(A_SCR);
        wr_chk(A_SCR, 32'h0003_0003, 4'b1111, 0, 0); rd_chk(A_SCR);

        // T7: R9 - stalled read (RREADY=0) must not block a write
        $display("--- T7: read/write independence ---");
        araddr <= A_SCR; arvalid <= 1'b1; rready <= 1'b0;
        t9 = 0;
        begin: T7_ARLOOP
            while (!(arvalid && arready)) begin
                @(posedge clk);
                t9 = t9 + 1;
                if (t9 > TMO) begin
                    err = err + 1;
                    $display("[%0t] R9 FAIL: ARREADY never asserted", $time);
                    disable T7_ARLOOP;
                end
            end
        end
        arvalid <= 1'b0;
        t9 = 0;                                          // wait RVALID (held, not accepted)
        while (!rvalid && t9 <= TMO) begin @(posedge clk); t9 = t9 + 1; end
        if (!rvalid) begin
            err = err + 1;
            $display("[%0t] R9 FAIL: RVALID never asserted", $time);
        end
        wr_chk(A_CTRL, 32'h0000_0001, 4'b1111, 0, 0);    // write while read stalled
        repeat (3) @(posedge clk);
        rready <= 1'b1;                                  // now drain the read
        @(posedge clk);
        while (!(rvalid && rready)) @(posedge clk);
        if (rdata !== ref_scr) begin
            err = err + 1;
            $display("[%0t] R9 FAIL: stalled RDATA=%08x expected %08x", $time, rdata, ref_scr);
        end
        rready <= 1'b0;
        rd_chk(A_CTRL);

        // T8: random stress vs reference model
        $display("--- T8: random stress (%0d ops) ---", n_ops);
        for (i = 0; i < n_ops; i = i + 1) begin
            s_op   = {$random(seed)} % 2;
            s_sel  = {$random(seed)} % 7;
            s_addr = pick_addr(s_sel);
            s_data = $random(seed);
            s_strb = {$random(seed)} % 16;
            if (s_op == 0)
                wr_chk(s_addr, s_data, s_strb,
                       {$random(seed)} % 4, {$random(seed)} % 4);
            else
                rd_chk(s_addr);
        end

        // summary
        if (err == 0)
            $display("TB PASS: all directed tests + %0d random ops, 0 errors (seed=%0d)",
                     n_ops, seed0);
        else
            $display("TB FAIL: err=%0d (seed=%0d)", err, seed0);
        $finish;
    end

    // ---- global watchdog ------------------------------------------------
    initial begin
        #20_000_000;
        $display("TB TIMEOUT (global): slave stuck - no READY/VALID progress?");
        $display("  (R2 deadlock? RVALID gated on RREADY (R8)? see spec hints 6.1/6.3)");
        $finish;
    end

endmodule
