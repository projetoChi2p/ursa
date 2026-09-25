#include "shell.h"

//===============================================
// URSA v2 shell
//
// UM: 23/09/26
// v1 read A and B straight from m_axi inside STREAM_K. Each k step needed
// SA_SIZE single-byte reads per port, so the loop closed at II=SA_SIZE
// (II=4 for 4x4, 614 cycles per tile at m=144) and no read burst was
// inferred. A was also re-read for every column tile, although it does not
// change along TILE_COL.
//
// v2 moves both operands into on-chip buffers before the stream. Both ports
// are SA_SIZE bytes wide, so one AXI beat carries SA_SIZE operands:
//   - A tile (SA_SIZE rows of A) is loaded once per row of tiles, as one
//     sequential read of m_a words, and reused by every column tile.
//   - B tile (m rows x SA_SIZE columns) is loaded once per tile, one beat
//     per row, m beats per tile.
//   - STREAM_K then reads only the partitioned buffers, one bank per PE row
//     and column, so it can close at II=1.
// The skewed, reversed indexing m-1-(t-i) of v1 is kept unchanged, so the
// PE array sees exactly the same sequence of operands.
//
// ROW-STRIDE RULE FOR A
// A is read as words, so every row of A must start on a word boundary: the
// row stride in memory is m_a = m rounded up to a multiple of SA_SIZE, and
// the m_a - m padding bytes at the end of each row are never read into the
// array (write them as zero). The base address of each layer's weights must
// also be SA_SIZE-aligned.
// When m is already a multiple of SA_SIZE, m_a == m and the layout is the
// usual row-major one. That is the case for every T3 layer at 4x4
// (m = 36, 144). At 8x8 and 16x16 conv1 has m = 36, which needs padding.
// With the rule, the byte position inside a word is known at compile time,
// so each beat lands in a single bank of a_buf and nothing conflicts.
//===============================================

//===============================================
// filling in inputs, from the on-chip tiles
//===============================================
#if (MAX_M % SA_SIZE) != 0
    #error "MAX_M must be a multiple of SA_SIZE"
#endif
#define A_WORDS_MAX (MAX_M / SA_SIZE)   /* words per row of A, at most */

static void fill_inputs_a(const a_word_t a_buf[SA_SIZE][A_WORDS_MAX],
                          data_a_t in_a[SA_SIZE], uint16_t t, uint16_t m)
{
    #pragma HLS INLINE
    FILL_A: for (uint16_t i = 0; i < SA_SIZE; i++) {
        #pragma HLS UNROLL
        /*...... DATA REGION, zero outside it ...........*/
        if (t >= i && t < i + m) {
            const uint16_t k  = m - 1 - (t - i);          /* column of A */
            const uint16_t wi = k / SA_SIZE;              /* word in the row */
            const uint16_t by = k % SA_SIZE;              /* byte in the word */
            // SA_SIZE is a power of two: the divide and modulo are a shift
            // and a mask, and the byte select is an SA_SIZE:1 mux.
            in_a[i] = (data_a_t)a_buf[i][wi].range(8*by + 7, 8*by);
        } else {
            in_a[i] = 0;
        }
    }
}

static void fill_inputs_b(const data_b_t b_buf[SA_SIZE][MAX_M],
                          data_b_t in_b[SA_SIZE], uint16_t t, uint16_t m)
{
    #pragma HLS INLINE
    FILL_B: for (uint16_t j = 0; j < SA_SIZE; j++) {
        #pragma HLS UNROLL
        /*...... DATA REGION, zero outside it ...........*/
        if (t >= j && t < j + m) {
            in_b[j] = b_buf[j][m - 1 - (t - j)];
        } else {
            in_b[j] = 0;
        }
    }
}

//===============================================
// loading inputs in SA
//===============================================
static void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE])
{
    #pragma HLS INLINE
    LOAD_SA: for (uint16_t k = 0; k < SA_SIZE; k++) {
        #pragma HLS UNROLL
        sa_input_a_b(sa, in_a[k], in_b[k], k);
    }
}

//===============================================
// tile loaders, m_axi -> on-chip
//===============================================

/* A tile: SA_SIZE rows of A, each wpr = m_a/SA_SIZE words, all contiguous:
   SA_SIZE*wpr = m_a words in total. One flat sequential loop, which is what
   lets HLS infer the burst; running indices avoid a divide by the runtime
   row length. Each beat is stored whole, so there is one write per cycle. */
static void load_tile_a(const a_word_t *a, uint32_t word_off, uint16_t wpr,
                        a_word_t a_buf[SA_SIZE][A_WORDS_MAX])
{
    uint16_t r = 0, c = 0;
    const uint32_t n_words = (uint32_t)SA_SIZE * wpr;

    LOAD_A: for (uint32_t n = 0; n < n_words; n++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=36 max=144 avg=144
        a_buf[r][c] = a[word_off + n];
        if (c == wpr - 1) { c = 0; r++; }
        else              { c++;        }
    }
}

/* B tile: row k holds SA_SIZE bytes at byte offset k*q + j*SA_SIZE. q and the
   tile offset are multiples of SA_SIZE, so each row is one aligned word.
   Byte jj of the word is column jj of the tile (AXI byte lane order). */
static void load_tile_b(const b_word_t *b, uint32_t word_off, uint32_t qw, uint16_t m,
                        data_b_t b_buf[SA_SIZE][MAX_M])
{
    uint32_t idx = word_off;

    LOAD_B: for (uint16_t k = 0; k < m; k++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=36 max=144 avg=144
        b_word_t w = b[idx];
        for (uint16_t jj = 0; jj < SA_SIZE; jj++) {
            #pragma HLS UNROLL
            b_buf[jj][k] = w.range(8*jj + 7, 8*jj);
        }
        idx += qw;
    }
}

//===============================================
// output-stationary top-function
//===============================================
sa_result_t mxm_execute_ursa(
    a_word_t *addr_a0,
    uint16_t  a0_p,
    b_word_t *addr_b0,
    uint16_t  b0_q,
    int32_t  *addr_c0,
    uint16_t  m
)
{
    // Cast only the pointer, not the data.
    data_c_t *casted_c0 = (data_c_t*)addr_c0;

    // processor arm interface
    // UM: 25/09/26 - the depths are derived from SA_SIZE in settings.h, so the
    // batch sweep never has to patch this file. They only affect cosim; the
    // synthesized IP does not depend on them. Keep every option on the
    // continued lines and put no comment at the end of one: the backslash
    // folds it into the pragma text and the whole INTERFACE is then dropped,
    // which turns the port into a plain scalar input.
    #pragma HLS INTERFACE mode=m_axi port=addr_a0 bundle=aw offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16 depth=AW_DEPTH_WORDS

    #pragma HLS INTERFACE mode=m_axi port=addr_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16 depth=BI_DEPTH_WORDS

    #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16 depth=CA_DEPTH_WORDS

    #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
    #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

    // The on-chip tiles are sized for MAX_M. Refuse a shape that does not fit
    // instead of silently indexing out of the buffers.
    if (m == 0 || m > MAX_M) {
        return SA_ERROR;
    }

    data_a_t in_a[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

    data_b_t in_b[SA_SIZE];
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

    // One bank per PE row (A) and per PE column (B): every bank is read once
    // per k step, which is what allows II=1 in STREAM_K.
    a_word_t a_buf[SA_SIZE][A_WORDS_MAX];
    #pragma HLS ARRAY_PARTITION variable=a_buf complete dim=1
    #pragma HLS BIND_STORAGE variable=a_buf type=ram_1p impl=lutram
    //UM: 25/09/26 the above can remove for bram inference, better for the radiation.

    data_b_t b_buf[SA_SIZE][MAX_M];
    #pragma HLS ARRAY_PARTITION variable=b_buf complete dim=1
    #pragma HLS BIND_STORAGE variable=b_buf type=ram_1p impl=lutram

    static SA sa;
    #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

    sa_init(&sa);

    const uint16_t call_a = a0_p / SA_SIZE;
    const uint16_t call_b = b0_q / SA_SIZE;

    const uint16_t wpr      = (m + SA_SIZE - 1) / SA_SIZE;  /* A row stride, words */
    const uint32_t stride_a = (uint32_t)SA_SIZE * wpr;      /* A tile, in words   */
    const uint32_t stride_c = (uint32_t)SA_SIZE * b0_q;
    const uint32_t qw       = b0_q / SA_SIZE;               /* B row stride, words */

    uint32_t off_a = 0;   /* start of the current row of tiles, in A (words) */
    uint32_t off_c = 0;   /* start of the current row of tiles, in C */

    TILE_ROW: for (uint16_t i = 0; i < call_a; i++) {
        #pragma HLS LOOP_TRIPCOUNT min=2 max=4 avg=4

        // A does not change along TILE_COL: load it once per row of tiles.
        load_tile_a(addr_a0, off_a, wpr, a_buf);

        uint32_t off_cj = off_c;   /* tile offset within C */

        TILE_COL: for (uint16_t j = 0; j < call_b; j++) {
            #pragma HLS LOOP_TRIPCOUNT min=16 max=64 avg=16

            load_tile_b(addr_b0, j, qw, m, b_buf);

            /* ---- SA computation ---- */
            STREAM_K: for (uint16_t t = 0; t < m + 2*(SA_SIZE-1); t++) {
                #pragma HLS PIPELINE II=1
                #pragma HLS LOOP_TRIPCOUNT min=42 max=150 avg=150
                // step 1 - operands from the on-chip tiles, all lanes in parallel
                fill_inputs_a(a_buf, in_a, t, m);
                fill_inputs_b(b_buf, in_b, t, m);

                // step 2 - load them into the SA edge registers
                load_inputs_sa(&sa, in_a, in_b);

                // step 3 - SA compute
                sa_compute(&sa);
            }

            /* ---- Flush the tile to C ---- */
            sa_store(&sa, casted_c0 + off_cj, b0_q);
            sa_reset(&sa);

            off_cj += SA_SIZE;
        }

        off_a += stride_a;
        off_c += stride_c;
    }

    return SA_SUCCESS;
}