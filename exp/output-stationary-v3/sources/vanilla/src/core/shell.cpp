#include "shell.h"
#include "hls_stream.h"

//===============================================
// URSA v3 shell
//
// UM: 15/10/26
// Cycle-accurate simulation of the v2 RTL (8x8, m=144) showed one tile taking
// ~620 cycles for 144 cycles of MACs (23 %, with a 1-cycle memory):
//   LOAD_B   227  one AXI read per row of B: the rows are q bytes apart,
//                 so HLS cannot infer a burst ("Stride is incompatible")
//   STREAM_K 163
//   idle      48  empty FSM states between STREAM_K and sa_store
//   sa_store 179  64 single int32 writes, one 8-beat burst per PE row,
//                 with the adapter stalling between rows
// and none of it overlapped. v3 removes the three causes:
//
// 1. LAYOUT. A and B are tile-major, one word per reduction step:
//      A, row tile it, word w : lane l, byte i = A[it*SA + i][w*LANES + l]
//      B, col tile jt, word w : lane l, byte j = B[w*LANES + l][jt*SA + j]
//    A row tile is KW contiguous words; the B tiles of a row of tiles are
//    call_b*KW contiguous words. Every read is a linear burst.
//      C, tile n = it*call_b + jt, word w : int32 (i, j) with
//      i*SA + j = w*C_PER_WORD + s, s = slot inside the 64-bit word.
//    The tiles of C are written in the order they are produced, so the whole
//    of C is one linear stream of writes.
//
// 2. OVERLAP. Four processes in a DATAFLOW region, linked by FIFOs:
//      read_a  -> s_a -+
//                      +-> compute -> s_c -> write_c
//      read_b  -> s_b -+
//    B of tile j+1 is read while tile j is computed and tile j-1 is written.
//
// 3. SKEW IN REGISTERS. v2 kept B in an on-chip buffer and read it with the
//    skewed, reversed index m-1-(t-j). v3 feeds the steps in increasing k and
//    delays row i of A (and column j of B) by i (j) cycles in a shift
//    register. PE (i, j) still sees A[i][k] and B[k][j] at the same cycle,
//    k + i + j, so the array, the PE and the arithmetic are those of v2.
//    At the last cycle of a tile the accumulators are copied, in one cycle,
//    into a shadow register array and cleared. The shadow leaves one PE row
//    per cycle during the first SA_SIZE cycles of the next tile (T >= SA_SIZE
//    always), so the array never stops for the store, and write_c turns each
//    row into ROW_C_WORDS beats of C.
//===============================================

#if (MAX_M % LANES) != 0
    #error "MAX_M must be a multiple of LANES"
#endif
#define KW_MAX (MAX_M / LANES)          /* words per tile, at most */

//-----------------------------------------------
// read_a: per row of tiles, the KW words of A are read in one burst and
// forwarded to the array as they arrive (first column tile), while a copy is
// kept on chip; the copy is replayed for the other call_b - 1 column tiles.
// UM: 15/10/26 - the first version loaded the whole burst before the first
// word left, so every row of tiles paid KW extra cycles: on the board (8x8,
// one tile) the time grew by ~2 cycles per k instead of 1.
//-----------------------------------------------
static void read_a(const a_word_t *a, hls::stream<row_t> &s_a,
                   uint16_t call_a, uint16_t call_b, uint16_t kw)
{
    a_word_t a_buf[KW_MAX];
    #pragma HLS BIND_STORAGE variable=a_buf type=ram_2p impl=lutram

    uint32_t off = 0;
    RA_ROW: for (uint16_t it = 0; it < call_a; it++) {
        // Tripcounts: 4 rows x 16 column tiles, m=144 (64 tiles), so the
        // estimates of read_a, read_b, compute and write_c describe one call.
        #pragma HLS LOOP_TRIPCOUNT min=1 max=4 avg=2

        RA_FIRST: for (uint16_t w = 0; w < kw; w++) {
            #pragma HLS PIPELINE II=LANES
            #pragma HLS LOOP_TRIPCOUNT min=36 max=144 avg=144
            const a_word_t word = a[off + w];
            a_buf[w] = word;
            for (int l = 0; l < LANES; l++) {
                #pragma HLS UNROLL
                s_a.write((row_t)word.range(8*SA_SIZE*(l+1) - 1, 8*SA_SIZE*l));
            }
        }
        off += kw;

        const uint32_t n_words = (uint32_t)(call_b - 1) * kw;
        uint16_t w = 0;
        RA_REPLAY: for (uint32_t n = 0; n < n_words; n++) {
            #pragma HLS PIPELINE II=LANES
            #pragma HLS LOOP_TRIPCOUNT min=0 max=2160 avg=2160
            const a_word_t word = a_buf[w];
            for (int l = 0; l < LANES; l++) {
                #pragma HLS UNROLL
                s_a.write((row_t)word.range(8*SA_SIZE*(l+1) - 1, 8*SA_SIZE*l));
            }
            w = (w == kw - 1) ? (uint16_t)0 : (uint16_t)(w + 1);
        }
    }
}

//-----------------------------------------------
// read_b: the B tiles of one row of tiles are contiguous, so each row of
// tiles is a single linear burst of call_b*kw words. B is read again for
// every row of tiles (A is the operand kept on chip).
//-----------------------------------------------
static void read_b(const b_word_t *b, hls::stream<row_t> &s_b,
                   uint16_t call_a, uint16_t call_b, uint16_t kw)
{
    const uint32_t n_words = (uint32_t)call_b * kw;
    RB_ROW: for (uint16_t it = 0; it < call_a; it++) {
        #pragma HLS LOOP_TRIPCOUNT min=1 max=4 avg=2
        RB_STREAM: for (uint32_t n = 0; n < n_words; n++) {
            #pragma HLS PIPELINE II=LANES
            #pragma HLS LOOP_TRIPCOUNT min=144 max=2304 avg=2304
            const b_word_t word = b[n];
            for (int l = 0; l < LANES; l++) {
                #pragma HLS UNROLL
                s_b.write((row_t)word.range(8*SA_SIZE*(l+1) - 1, 8*SA_SIZE*l));
            }
        }
    }
}

//-----------------------------------------------
// compute: one flattened loop over all tiles, II=1.
//   t in [0, ksteps)            : one step of A and B enters the array
//   t in [ksteps, ksteps+2SA-2) : zeros flush the last steps through
//   t == T-1                    : accumulators -> shadow, array cleared
// The shadow drains one row per iteration. The loop runs SA_SIZE iterations
// past the last tile so that the last shadow is drained too.
//-----------------------------------------------
static void compute(hls::stream<row_t> &s_a, hls::stream<row_t> &s_b,
                    hls::stream<acc_row_t> &s_c, uint32_t n_tiles, uint16_t ksteps)
{
    // Partitioned to registers inside sa_init, as in v2.
    SA sa;
    sa_init(&sa);

    // Skew lines: row i of A is delayed i cycles, column j of B j cycles.
    // Only dA[i][0..i-1] (dB[j][0..j-1]) is used.
    data_a_t dA[SA_SIZE][SA_SIZE];
    data_b_t dB[SA_SIZE][SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=dA complete dim=0
    #pragma HLS ARRAY_PARTITION variable=dB complete dim=0

    acc_row_t shadow[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=shadow complete dim=0

    for (int i = 0; i < SA_SIZE; i++) {
        #pragma HLS UNROLL
        shadow[i] = 0;
        for (int d = 0; d < SA_SIZE; d++) {
            #pragma HLS UNROLL
            dA[i][d] = 0;
            dB[i][d] = 0;
        }
    }

    const uint16_t T     = ksteps + 2 * (SA_SIZE - 1);
    const uint32_t total = n_tiles * T;
    uint16_t t     = 0;
    uint16_t drain = SA_SIZE;          /* next shadow row to send; SA_SIZE = idle */

    CK: for (uint32_t n = 0; n < total + SA_SIZE; n++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=166 max=10128 avg=2536
        const bool active = (n < total);

        // 1. drain one row of the previous tile
        if (drain < SA_SIZE) {
            s_c.write(shadow[drain]);
            drain++;
        }

        if (active) {
            // 2. one step of A and B, or zeros while the array flushes
            row_t ra = 0, rb = 0;
            if (t < ksteps) {
                ra = s_a.read();
                rb = s_b.read();
            }

            // 3. skew
            SKEW: for (int i = 0; i < SA_SIZE; i++) {
                #pragma HLS UNROLL
                const data_a_t ca = (data_a_t)ra.range(8*i + 7, 8*i);
                const data_b_t cb = (data_b_t)rb.range(8*i + 7, 8*i);
                if (i == 0) {
                    sa.in_mtx_a_li[0] = ca;
                    sa.in_mtx_b_tw[0] = cb;
                } else {
                    sa.in_mtx_a_li[i] = dA[i][i-1];
                    sa.in_mtx_b_tw[i] = dB[i][i-1];
                    for (int d = SA_SIZE - 1; d > 0; d--) {
                        #pragma HLS UNROLL
                        if (d < i) { dA[i][d] = dA[i][d-1]; dB[i][d] = dB[i][d-1]; }
                    }
                    dA[i][0] = ca;
                    dB[i][0] = cb;
                }
            }

            // 4. one cycle of the array
            sa_compute(&sa);

            // 5. end of tile: accumulators -> shadow, array cleared
            if (t == T - 1) {
                for (int i = 0; i < SA_SIZE; i++) {
                    #pragma HLS UNROLL
                    shadow[i] = sa_row(&sa, i);
                }
                sa_reset(&sa);
                drain = 0;
                t = 0;
            } else {
                t++;
            }
        }
    }
}

//-----------------------------------------------
// write_c: ROW_C_WORDS beats per PE row, rows and tiles back to back: one
// linear stream of writes for the whole call. Each ACC_BITS accumulator is
// sign-extended to int32, C_PER_WORD per beat.
//-----------------------------------------------
static void write_c(hls::stream<acc_row_t> &s_c, c_word_t *c, uint32_t n_tiles)
{
    const uint32_t n_words = n_tiles * TILE_C_WORDS;
    acc_row_t cur = 0;
    uint16_t w = 0;

    WC: for (uint32_t n = 0; n < n_words; n++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=32 max=2048 avg=512
        if (w == 0) cur = s_c.read();

        c_word_t word = 0;
        for (int s = 0; s < C_PER_WORD; s++) {
            #pragma HLS UNROLL
            const int j = w * C_PER_WORD + s;
            const macc_t v = (macc_t)cur.range(j*ACC_BITS + ACC_BITS - 1, j*ACC_BITS);
            const data_c_t x = (data_c_t)v;               /* sign extension */
            word.range(32*s + 31, 32*s) = x.range(31, 0);
        }
        c[n] = word;

        w = (w == ROW_C_WORDS - 1) ? (uint16_t)0 : (uint16_t)(w + 1);
    }
}

//-----------------------------------------------
// Dataflow region
//-----------------------------------------------
static void ursa_dataflow(const a_word_t *a, const b_word_t *b, c_word_t *c,
                          uint16_t call_a, uint16_t call_b, uint16_t kw)
{
    #pragma HLS DATAFLOW

    hls::stream<row_t>  s_a("s_a");
    hls::stream<row_t>  s_b("s_b");
    hls::stream<acc_row_t> s_c("s_c");
    #pragma HLS STREAM variable=s_a depth=32
    #pragma HLS STREAM variable=s_b depth=32
    #pragma HLS STREAM variable=s_c depth=2*SA_SIZE
    // Shift-register FIFOs: these are shallow, and as memories they took
    // 17 BRAM18 at 8x8 (first v3 synthesis, 15/10/26).
    #pragma HLS BIND_STORAGE variable=s_a type=fifo impl=srl
    #pragma HLS BIND_STORAGE variable=s_b type=fifo impl=srl
    #pragma HLS BIND_STORAGE variable=s_c type=fifo impl=srl

    const uint32_t n_tiles = (uint32_t)call_a * call_b;

    read_a (a, s_a, call_a, call_b, kw);
    read_b (b, s_b, call_a, call_b, kw);
    compute(s_a, s_b, s_c, n_tiles, (uint16_t)(kw * LANES));
    write_c(s_c, c, n_tiles);
}

//===============================================
// top-function
//===============================================
sa_result_t mxm_execute_ursa(
    const a_word_t *addr_a0, uint16_t a0_p,
    const b_word_t *addr_b0, uint16_t b0_q,
    c_word_t       *addr_c0,
    uint16_t m
)
{
    // Keep every option on the continued lines and no comment at the end of
    // one: the backslash folds it into the pragma text (see v2).
    #pragma HLS INTERFACE mode=m_axi port=addr_a0 bundle=aw offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16 depth=AW_DEPTH_WORDS

    #pragma HLS INTERFACE mode=m_axi port=addr_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16 depth=BI_DEPTH_WORDS

    #pragma HLS INTERFACE mode=m_axi port=addr_c0 bundle=ca offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=16 \
            max_write_burst_length=64 depth=CA_DEPTH_WORDS

    #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

    if (m == 0 || m > MAX_M) {
        return SA_ERROR;
    }

    const uint16_t call_a = a0_p / SA_SIZE;
    const uint16_t call_b = b0_q / SA_SIZE;
    const uint16_t kw     = (uint16_t)(KSTEPS(m) / LANES);

    // Nothing to do (and read_a computes call_b - 1).
    if (call_a == 0 || call_b == 0) {
        return SA_SUCCESS;
    }

    ursa_dataflow(addr_a0, addr_b0, addr_c0, call_a, call_b, kw);

    return SA_SUCCESS;
}
