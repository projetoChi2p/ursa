`timescale 1ns/1ps
// Testbench for the URSA v3 HLS IP (mxm_execute_ursa), Icarus Verilog.
// Parameters (override with -D): SA, P, Q, M, RDLAT, WRLAT
//
// Layouts (same as tb/simple_mxm/tb_main.cpp, the C reference):
//   A word (it*KW + w), byte l*SA + i = A[it*SA + i][w*LANES + l]
//   B word (jt*KW + w), byte l*SA + j = B[w*LANES + l][jt*SA + j]
//   C tile n = it*(Q/SA) + jt, int32 at element i*SA + j  (row-major tile)
//
// Register offsets: 32-bit m_axi addresses (m_axi_addr64=0), as in v2:
// A 0x10, B 0x18, C 0x20. Build with -DADDR64 for an IP synthesized with
// 64-bit addresses (A 0x10/0x14, B 0x1c/0x20, C 0x28/0x2c).
`ifndef SA
 `define SA 8
`endif
`ifndef P
 `define P 16
`endif
`ifndef Q
 `define Q 32
`endif
`ifndef M
 `define M 144
`endif
`ifndef RDLAT
 `define RDLAT 1
`endif
`ifndef WRLAT
 `define WRLAT 1
`endif
`ifdef ADDR64
 `define OFS_A 6'h10
 `define OFS_B 6'h1c
 `define OFS_C 6'h28
`else
 `define OFS_A 6'h10
 `define OFS_B 6'h18
 `define OFS_C 6'h20
`endif
`ifndef OFS_P
 `define OFS_P 6'h18
`endif
`ifndef OFS_Q
 `define OFS_Q 6'h20
`endif
`ifndef OFS_M
 `define OFS_M 6'h28
`endif

module tb;
    localparam SA = `SA, P = `P, Q = `Q, M = `M, RDL = `RDLAT, WRL = `WRLAT;
    localparam WB    = (SA < 4) ? 4 : SA;            // WORD_BYTES
    localparam LANES = WB / SA;
    localparam KW    = (M + LANES - 1) / LANES;      // words per tile
    localparam ABW   = 8 * WB;                       // A/B port width
    localparam A_BASE = 32'h1000_0000, B_BASE = 32'h2000_0000, C_BASE = 32'h3000_0000;

    reg clk = 0, rst_n = 1;
    initial #2 rst_n = 0;            // ap_rst_n_inv is in always @(*): needs an edge
    always #5 clk = ~clk;            // 100 MHz

    // ---- AXI-Lite masters (ap and control) ----
    reg        ap_awv=0, ap_wv=0, ap_bready=1, ap_arv=0, ap_rready=1;
    reg  [5:0] ap_awaddr=0, ap_araddr=0;  reg [31:0] ap_wdata=0;
    wire       ap_awr, ap_wr, ap_bv, ap_arr, ap_rv; wire [31:0] ap_rdata; wire [1:0] ap_rresp, ap_bresp;
    reg        ct_awv=0, ct_wv=0, ct_bready=1, ct_arv=0, ct_rready=1;
    reg  [5:0] ct_awaddr=0, ct_araddr=0;  reg [31:0] ct_wdata=0;
    wire       ct_awr, ct_wr, ct_bv, ct_arr, ct_rv; wire [31:0] ct_rdata; wire [1:0] ct_rresp, ct_bresp;
    wire       interrupt;

`define MAXI_WIRES(p, WIDTH) \
    wire p``_AWVALID, p``_AWREADY, p``_WVALID, p``_WREADY, p``_WLAST, p``_BVALID, p``_BREADY; \
    wire p``_ARVALID, p``_ARREADY, p``_RVALID, p``_RREADY, p``_RLAST; \
    wire [31:0] p``_AWADDR, p``_ARADDR; wire [7:0] p``_AWLEN, p``_ARLEN; \
    wire [WIDTH-1:0] p``_WDATA, p``_RDATA; wire [WIDTH/8-1:0] p``_WSTRB;
    `MAXI_WIRES(aw, ABW)
    `MAXI_WIRES(bi, ABW)
    `MAXI_WIRES(ca, 64)

    mxm_execute_ursa dut (
        .ap_clk(clk), .ap_rst_n(rst_n),
`define MAXI_PORTS(p) \
        .m_axi_``p``_AWVALID(p``_AWVALID), .m_axi_``p``_AWREADY(p``_AWREADY), .m_axi_``p``_AWADDR(p``_AWADDR), \
        .m_axi_``p``_AWID(), .m_axi_``p``_AWLEN(p``_AWLEN), .m_axi_``p``_AWSIZE(), .m_axi_``p``_AWBURST(), \
        .m_axi_``p``_AWLOCK(), .m_axi_``p``_AWCACHE(), .m_axi_``p``_AWPROT(), .m_axi_``p``_AWQOS(), \
        .m_axi_``p``_AWREGION(), .m_axi_``p``_AWUSER(), \
        .m_axi_``p``_WVALID(p``_WVALID), .m_axi_``p``_WREADY(p``_WREADY), .m_axi_``p``_WDATA(p``_WDATA), \
        .m_axi_``p``_WSTRB(p``_WSTRB), .m_axi_``p``_WLAST(p``_WLAST), .m_axi_``p``_WID(), .m_axi_``p``_WUSER(), \
        .m_axi_``p``_ARVALID(p``_ARVALID), .m_axi_``p``_ARREADY(p``_ARREADY), .m_axi_``p``_ARADDR(p``_ARADDR), \
        .m_axi_``p``_ARID(), .m_axi_``p``_ARLEN(p``_ARLEN), .m_axi_``p``_ARSIZE(), .m_axi_``p``_ARBURST(), \
        .m_axi_``p``_ARLOCK(), .m_axi_``p``_ARCACHE(), .m_axi_``p``_ARPROT(), .m_axi_``p``_ARQOS(), \
        .m_axi_``p``_ARREGION(), .m_axi_``p``_ARUSER(), \
        .m_axi_``p``_RVALID(p``_RVALID), .m_axi_``p``_RREADY(p``_RREADY), .m_axi_``p``_RDATA(p``_RDATA), \
        .m_axi_``p``_RLAST(p``_RLAST), .m_axi_``p``_RID(1'b0), .m_axi_``p``_RUSER(1'b0), .m_axi_``p``_RRESP(2'b00), \
        .m_axi_``p``_BVALID(p``_BVALID), .m_axi_``p``_BREADY(p``_BREADY), .m_axi_``p``_BRESP(2'b00), \
        .m_axi_``p``_BID(1'b0), .m_axi_``p``_BUSER(1'b0),
        `MAXI_PORTS(aw)
        `MAXI_PORTS(bi)
        `MAXI_PORTS(ca)
        .s_axi_ap_AWVALID(ap_awv), .s_axi_ap_AWREADY(ap_awr), .s_axi_ap_AWADDR(ap_awaddr),
        .s_axi_ap_WVALID(ap_wv), .s_axi_ap_WREADY(ap_wr), .s_axi_ap_WDATA(ap_wdata), .s_axi_ap_WSTRB(4'hf),
        .s_axi_ap_ARVALID(ap_arv), .s_axi_ap_ARREADY(ap_arr), .s_axi_ap_ARADDR(ap_araddr),
        .s_axi_ap_RVALID(ap_rv), .s_axi_ap_RREADY(ap_rready), .s_axi_ap_RDATA(ap_rdata), .s_axi_ap_RRESP(ap_rresp),
        .s_axi_ap_BVALID(ap_bv), .s_axi_ap_BREADY(ap_bready), .s_axi_ap_BRESP(ap_bresp),
        .interrupt(interrupt),
        .s_axi_control_AWVALID(ct_awv), .s_axi_control_AWREADY(ct_awr), .s_axi_control_AWADDR(ct_awaddr),
        .s_axi_control_WVALID(ct_wv), .s_axi_control_WREADY(ct_wr), .s_axi_control_WDATA(ct_wdata), .s_axi_control_WSTRB(4'hf),
        .s_axi_control_ARVALID(ct_arv), .s_axi_control_ARREADY(ct_arr), .s_axi_control_ARADDR(ct_araddr),
        .s_axi_control_RVALID(ct_rv), .s_axi_control_RREADY(ct_rready), .s_axi_control_RDATA(ct_rdata), .s_axi_control_RRESP(ct_rresp),
        .s_axi_control_BVALID(ct_bv), .s_axi_control_BREADY(ct_bready), .s_axi_control_BRESP(ct_bresp)
    );

`define MEM(p, WIDTH, BASEV) \
    axi_mem #(.DW(WIDTH), .BYTES(65536), .BASE(BASEV), .RD_LAT(RDL), .WR_LAT(WRL)) mem_``p ( \
        .clk(clk), .rst_n(rst_n), \
        .ARVALID(p``_ARVALID), .ARREADY(p``_ARREADY), .ARADDR(p``_ARADDR), .ARLEN(p``_ARLEN), \
        .RVALID(p``_RVALID), .RREADY(p``_RREADY), .RDATA(p``_RDATA), .RLAST(p``_RLAST), \
        .AWVALID(p``_AWVALID), .AWREADY(p``_AWREADY), .AWADDR(p``_AWADDR), .AWLEN(p``_AWLEN), \
        .WVALID(p``_WVALID), .WREADY(p``_WREADY), .WDATA(p``_WDATA), .WSTRB(p``_WSTRB), .WLAST(p``_WLAST), \
        .BVALID(p``_BVALID), .BREADY(p``_BREADY));
    `MEM(aw, ABW, A_BASE)
    `MEM(bi, ABW, B_BASE)
    `MEM(ca, 64,  C_BASE)

    // ---- AXI-Lite write tasks ----
    task ap_write(input [5:0] a, input [31:0] d);
        begin
            @(negedge clk); ap_awaddr = a; ap_awv = 1;
            @(posedge clk); while (!ap_awr) @(posedge clk);
            #1 ap_awv = 0; ap_wdata = d; ap_wv = 1;
            @(posedge clk); while (!ap_wr) @(posedge clk);
            #1 ap_wv = 0;
            @(posedge clk); while (!ap_bv) @(posedge clk);
        end
    endtask
    task ct_write(input [5:0] a, input [31:0] d);
        begin
            @(negedge clk); ct_awaddr = a; ct_awv = 1;
            @(posedge clk); while (!ct_awr) @(posedge clk);
            #1 ct_awv = 0; ct_wdata = d; ct_wv = 1;
            @(posedge clk); while (!ct_wr) @(posedge clk);
            #1 ct_wv = 0;
            @(posedge clk); while (!ct_bv) @(posedge clk);
        end
    endtask

    // ---- data ----
    integer i, j, k, w, l, it, jt, n, e, errs, seed;
    reg signed [7:0] A [0:P-1][0:M-1];
    reg        [7:0] B [0:M-1][0:Q-1];
    reg signed [31:0] Cref, Cgot;

    // ---- trace: one line per cycle with the AXI handshakes ----
    // Columns: valid/handshake pairs (e.g. "11" = valid and accepted).
    integer f, cycle;
    integer a_first, a_last, b_first, b_last, c_first, c_last;
    integer a_beats, b_beats, c_beats;
    reg running;
    always @(posedge clk) begin
        if (running) begin
            $fwrite(f, "%0d,%0d%0d,%0d%0d,%0d%0d,%0d%0d,%0d%0d,%0d%0d\n", cycle,
                aw_ARVALID, aw_ARVALID & aw_ARREADY, aw_RVALID, aw_RVALID & aw_RREADY,
                bi_ARVALID, bi_ARVALID & bi_ARREADY, bi_RVALID, bi_RVALID & bi_RREADY,
                ca_AWVALID, ca_AWVALID & ca_AWREADY, ca_WVALID, ca_WVALID & ca_WREADY);
            if (aw_RVALID & aw_RREADY) begin if (a_first < 0) a_first = cycle; a_last = cycle; a_beats = a_beats + 1; end
            if (bi_RVALID & bi_RREADY) begin if (b_first < 0) b_first = cycle; b_last = cycle; b_beats = b_beats + 1; end
            if (ca_WVALID & ca_WREADY) begin if (c_first < 0) c_first = cycle; c_last = cycle; c_beats = c_beats + 1; end
            cycle = cycle + 1;
        end
    end

    initial begin
        seed = 7; errs = 0; running = 0; cycle = 0;
        a_first = -1; b_first = -1; c_first = -1; a_beats = 0; b_beats = 0; c_beats = 0;
        f = $fopen("trace_v3.csv", "w");
        $fwrite(f, "cyc,a_ar,a_r,b_ar,b_r,c_aw,c_w\n");
        // operands small enough that the 20-bit accumulator never wraps
        for (i = 0; i < P; i = i + 1) for (k = 0; k < M; k = k + 1) A[i][k] = $random(seed) % 8;
        for (k = 0; k < M; k = k + 1) for (j = 0; j < Q; j = j + 1) B[k][j] = $unsigned($random(seed)) % 16;
        // pack A and B tile-major (zero past m)
        for (it = 0; it < P/SA; it = it + 1)
            for (w = 0; w < KW; w = w + 1)
                for (l = 0; l < LANES; l = l + 1)
                    for (i = 0; i < SA; i = i + 1) begin
                        k = w*LANES + l;
                        mem_aw.mem[(it*KW + w)*WB + l*SA + i] = (k < M) ? A[it*SA + i][k] : 8'd0;
                    end
        for (jt = 0; jt < Q/SA; jt = jt + 1)
            for (w = 0; w < KW; w = w + 1)
                for (l = 0; l < LANES; l = l + 1)
                    for (j = 0; j < SA; j = j + 1) begin
                        k = w*LANES + l;
                        mem_bi.mem[(jt*KW + w)*WB + l*SA + j] = (k < M) ? B[k][jt*SA + j] : 8'd0;
                    end

        repeat (5) @(posedge clk); rst_n = 1; repeat (5) @(posedge clk);

        ct_write(`OFS_A, A_BASE); ct_write(`OFS_B, B_BASE); ct_write(`OFS_C, C_BASE);
`ifdef ADDR64
        ct_write(`OFS_A + 4, 0); ct_write(`OFS_B + 4, 0); ct_write(`OFS_C + 4, 0);
`endif
        ap_write(`OFS_P, P); ap_write(`OFS_Q, Q); ap_write(`OFS_M, M);
        @(negedge clk); running = 1;
        ap_write(6'h00, 32'h1);           // ap_start
        wait (dut.ap_done == 1'b1);
        @(posedge clk); running = 0;

        $display("DONE cycles=%0d  SA=%0d P=%0d Q=%0d M=%0d RDLAT=%0d WRLAT=%0d tiles=%0d",
                 cycle, SA, P, Q, M, RDL, WRL, (P/SA)*(Q/SA));
        $display("  A beats %0d  [%0d..%0d]", a_beats, a_first, a_last);
        $display("  B beats %0d  [%0d..%0d]", b_beats, b_first, b_last);
        $display("  C beats %0d  [%0d..%0d]", c_beats, c_first, c_last);
        $display("  ideal MAC cycles = tiles*M = %0d  -> %0.1f %% of total",
                 (P/SA)*(Q/SA)*M, 100.0*(P/SA)*(Q/SA)*M/cycle);

        for (it = 0; it < P/SA; it = it + 1)
            for (jt = 0; jt < Q/SA; jt = jt + 1)
                for (i = 0; i < SA; i = i + 1)
                    for (j = 0; j < SA; j = j + 1) begin
                        Cref = 0;
                        for (k = 0; k < M; k = k + 1)
                            Cref = Cref + A[it*SA + i][k] * $signed({1'b0, B[k][jt*SA + j]});
                        n = it*(Q/SA) + jt; e = i*SA + j;
                        Cgot = {mem_ca.mem[(n*SA*SA + e)*4 + 3], mem_ca.mem[(n*SA*SA + e)*4 + 2],
                                mem_ca.mem[(n*SA*SA + e)*4 + 1], mem_ca.mem[(n*SA*SA + e)*4]};
                        if (Cgot !== Cref) begin
                            errs = errs + 1;
                            if (errs < 5) $display("MISMATCH C[%0d][%0d] got %0d ref %0d",
                                                   it*SA + i, jt*SA + j, Cgot, Cref);
                        end
                    end
        $display("CHECK %s (%0d errors)", errs == 0 ? "PASS" : "FAIL", errs);
        $fclose(f);
        $finish;
    end
    initial begin #50_000_000; $display("TIMEOUT"); $finish; end
endmodule
