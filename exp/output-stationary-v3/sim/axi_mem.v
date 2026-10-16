// Simple AXI4 slave memory for simulation (INCR bursts only).
// Read : up to QD outstanding AR. A burst becomes eligible RD_LAT cycles after
//        its AR handshake; its beats then stream out at one per cycle.
// Write: AW and W accepted; B returned WR_LAT cycles after WLAST.
module axi_mem #(
    parameter DW     = 64,
    parameter BYTES  = 65536,
    parameter BASE   = 32'h0,
    parameter RD_LAT = 1,
    parameter WR_LAT = 1
)(
    input  wire            clk,
    input  wire            rst_n,
    input  wire            ARVALID,
    output wire            ARREADY,
    input  wire [31:0]     ARADDR,
    input  wire [7:0]      ARLEN,
    output reg             RVALID,
    input  wire            RREADY,
    output reg  [DW-1:0]   RDATA,
    output reg             RLAST,
    input  wire            AWVALID,
    output wire            AWREADY,
    input  wire [31:0]     AWADDR,
    input  wire [7:0]      AWLEN,
    input  wire            WVALID,
    output wire            WREADY,
    input  wire [DW-1:0]   WDATA,
    input  wire [DW/8-1:0] WSTRB,
    input  wire            WLAST,
    output reg             BVALID,
    input  wire            BREADY
);
    localparam NB = DW/8;
    localparam QD = 16;
    reg [7:0] mem [0:BYTES-1];

    reg [63:0] cyc;
    // read queue
    reg [31:0] qa [0:QD-1];
    reg [7:0]  ql [0:QD-1];
    reg [63:0] qt [0:QD-1];
    reg [4:0]  qw, qr;
    wire [4:0] qn = qw - qr;
    assign ARREADY = (qn < QD);
    // active burst
    reg        act;
    reg [31:0] aa;
    reg [7:0]  al;
    reg [8:0]  ab;
    integer b;

    always @(posedge clk) begin : rd
        reg        act_n;  reg [31:0] aa_n; reg [7:0] al_n; reg [8:0] ab_n;
        reg [4:0]  qr_n;
        if (!rst_n) begin
            cyc <= 0; qw <= 0; qr <= 0; act <= 0; RVALID <= 0; RLAST <= 0; ab <= 0;
        end else begin
            cyc <= cyc + 1;
            if (ARVALID && ARREADY) begin
                qa[qw[3:0]] <= ARADDR; ql[qw[3:0]] <= ARLEN; qt[qw[3:0]] <= cyc + RD_LAT;
                qw <= qw + 1;
            end
            act_n = act; aa_n = aa; al_n = al; ab_n = ab; qr_n = qr;
            if (!act_n && (qw != qr_n) && (qt[qr_n[3:0]] <= cyc)) begin
                act_n = 1; aa_n = qa[qr_n[3:0]]; al_n = ql[qr_n[3:0]]; ab_n = 0; qr_n = qr_n + 1;
            end
            if (!RVALID || RREADY) begin
                if (act_n) begin
                    for (b = 0; b < NB; b = b + 1)
                        RDATA[8*b +: 8] <= mem[(aa_n - BASE) + ab_n*NB + b];
                    RVALID <= 1;
                    RLAST  <= (ab_n == al_n);
                    if (ab_n == al_n) act_n = 0; else ab_n = ab_n + 1;
                end else begin
                    RVALID <= 0; RLAST <= 0;
                end
            end
            act <= act_n; aa <= aa_n; al <= al_n; ab <= ab_n; qr <= qr_n;
        end
    end

    // write side
    reg [31:0] wq [0:QD-1];
    reg [4:0]  wqw, wqr;
    reg [8:0]  wb;
    reg [63:0] bt [0:QD-1];
    reg [4:0]  bw, br;
    assign AWREADY = ((wqw - wqr) < QD);
    assign WREADY  = (wqw != wqr);
    always @(posedge clk) begin
        if (!rst_n) begin
            wqw <= 0; wqr <= 0; wb <= 0; bw <= 0; br <= 0; BVALID <= 0;
        end else begin
            if (AWVALID && AWREADY) begin wq[wqw[3:0]] <= AWADDR; wqw <= wqw + 1; end
            if (WVALID && WREADY) begin
                for (b = 0; b < NB; b = b + 1)
                    if (WSTRB[b]) mem[(wq[wqr[3:0]] - BASE) + wb*NB + b] <= WDATA[8*b +: 8];
                if (WLAST) begin
                    wb <= 0; wqr <= wqr + 1; bt[bw[3:0]] <= cyc + WR_LAT; bw <= bw + 1;
                end else wb <= wb + 1;
            end
            if (BVALID && BREADY) begin BVALID <= 0; br <= br + 1; end
            else if (!BVALID && (br != bw) && (bt[br[3:0]] <= cyc)) BVALID <= 1;
        end
    end
endmodule
