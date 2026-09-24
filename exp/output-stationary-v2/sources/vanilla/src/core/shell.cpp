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
    // A and B are SA_SIZE bytes wide; depth in words is 4096 bytes / SA_SIZE
    #pragma HLS INTERFACE mode=m_axi port=addr_a0 bundle=aw offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=1024

    #pragma HLS INTERFACE mode=m_axi port=addr_b0 bundle=bi offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=1024

    #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
            num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
            max_write_burst_length=16  depth=4096

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

    data_b_t b_buf[SA_SIZE][MAX_M];
    #pragma HLS ARRAY_PARTITION variable=b_buf complete dim=1

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


// #include "shell.h"

// //===============================================
// // filling in inputs
// //===============================================
// void fill_inputs_a(data_a_t *addr_a, data_a_t in_a[SA_SIZE], uint16_t t, uint16_t m){
//     data_a_t value_a;
    
//     //printf("[sa_shell] fill sa inputs a\n");
//     /************************************************
//     INSERT A DATA LAYER IN THE LATERAL INTERFACE
//     ************************************************/
//     #pragma HLS PIPELINE II=1
//     FILL_A: for(uint16_t i=0;i<SA_SIZE;i++){
//         #pragma HLS UNROLL
//         data_a_t *line_base_a = addr_a + i * m;
//         /*...... INITIAL ZERO REGION .........*/
//         if (t<i) {
//             value_a=0;
//         } 
//         /*...... DATA REGION .................*/
//         else if (t<i+m) {
//             value_a=*(line_base_a+m-1-(t-i));
//         } 
//         /*...... FINAL ZERO REGION ...........*/
//         else {
//             value_a=0;
//         }
//         //printf("  li[%d] = %d\n",i,value_a);
//         in_a[i]=value_a;
//     }
// }

// void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
//     data_b_t value_b;

//     //printf("[sa_shell] fill sa inputs b\n");
//     /************************************************
//     INSERT A DATA LAYER IN THE UPPER INTERFACE
//     ************************************************/
//     #pragma HLS PIPELINE II=1

//     //UM: 14/09/26
//     // The original expression below was evaluated once per unrolled j, which
//     // produced SA_SIZE independent multipliers. With SA_SIZE=8 Vitis HLS bound
//     // each of them to its own DSP48E1 (mul_17s_16ns_32_1_1_U1..U8), so the IP
//     // needed 75 DSPs instead of 67. That is what prevented the TMR builds from
//     // fitting in the xc7z020, since 3 x 75 = 225 > 220.
//     //
//     // The expression factors exactly:
//     //   str_b*(m-1) - str_b*(t-j)  ==  str_b*(m-1-t) + str_b*j
//     //
//     // The first term does not depend on j, so it is hoisted out of the unrolled
//     // loop and costs a single multiplier. In the second term j is a compile-time
//     // constant after the unroll, so it becomes a constant multiplication that
//     // Vivado implements with shifts and adds, using no DSP at all.
//     // The arithmetic is algebraically identical, including the cases where the
//     // offset is negative, because the t<j and t<j+m guards still prevent any
//     // dereference outside the valid data region.
//     const int32_t row_off = (int32_t)str_b * ((int32_t)m - 1 - (int32_t)t);

//     FILL_B: for(uint16_t j=0;j<SA_SIZE;j++){
//         #pragma HLS UNROLL

//         //UM: 14/09/26
//         // data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
//         const int32_t col_off = (int32_t)str_b * (int32_t)j;
//         data_b_t *line_base_b = addr_b + row_off + col_off;

//         /*...... INITIAL ZERO REGION .........*/
//         if (t<j) {
//             value_b=0;
//         } 
//         /*...... DATA REGION  ................*/
//         else if (t<j+m) {
//             value_b=*(line_base_b + j);
//         } 
//         /*...... FINAL ZERO REGION ...........*/
//         else {
//             value_b=0;
//         }
//         //printf("  tw[%d] = %d\n",j,value_b);
//         in_b[j]=value_b;
//     }  
// }

// // void fill_inputs_b(data_b_t *addr_b, uint16_t str_b, data_b_t in_b[SA_SIZE] ,uint16_t t, uint16_t m){
// //     data_b_t value_b;

// //     //printf("[sa_shell] fill sa inputs b\n");
// //     /************************************************
// //     INSERT A DATA LAYER IN THE UPPER INTERFACE
// //     ************************************************/
// //     #pragma HLS PIPELINE II=1
// //     FILL_B: for(uint16_t j=0;j<SA_SIZE;j++){
// //         #pragma HLS UNROLL
// //         data_b_t *line_base_b = addr_b + ( (str_b * (m-1) ) - (str_b*(t-j)) );
// //         /*...... INITIAL ZERO REGION .........*/
// //         if (t<j) {
// //             value_b=0;
// //         } 
// //         /*...... DATA REGION  ................*/
// //         else if (t<j+m) {
// //             value_b=*(line_base_b + j);
// //         } 
// //         /*...... FINAL ZERO REGION ...........*/
// //         else {
// //             value_b=0;
// //         }
// //         //printf("  tw[%d] = %d\n",j,value_b);
// //         in_b[j]=value_b;
// //     }  
// // }

// //===============================================
// // loading inputs in SA
// //===============================================
// void load_inputs_sa(SA *sa, data_a_t in_a[SA_SIZE], data_b_t in_b[SA_SIZE]){
//     #pragma HLS PIPELINE II=1

//     LOAD_SA: for(uint16_t k=0;k<SA_SIZE;k++) {
//         #pragma HLS UNROLL factor=SA_SIZE
//         sa_input_a_b(sa,in_a[k],in_b[k],k);        
//     }
// }

// //===============================================
// // output-stationary top-function
// //===============================================
// sa_result_t mxm_execute_ursa(
//     int8_t  *addr_a0,
//     uint16_t a0_p,
//     uint8_t *addr_b0,
//     uint16_t b0_q,
//     int32_t *addr_c0,
//     uint16_t m
// )
// {
//     // Cast only the pointer, not the data.
//     data_a_t *casted_a0 = (data_a_t*)addr_a0;
//     data_c_t *casted_c0 = (data_c_t*)addr_c0;
//     data_b_t *casted_b0 = (data_b_t*)addr_b0;

//     // processor arm interface
//     #pragma HLS INTERFACE mode=m_axi port=casted_a0 bundle=aw offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=m_axi port=casted_b0 bundle=bi offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=m_axi port=casted_c0 bundle=ca offset=slave \
//             num_read_outstanding=8 num_write_outstanding=8 max_read_burst_length=64 \
//             max_write_burst_length=16  depth=4096
    
//     #pragma HLS INTERFACE mode=s_axilite port=return bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=a0_p   bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=b0_q   bundle=ap register
//     #pragma HLS INTERFACE mode=s_axilite port=m      bundle=ap register

//     // normal working
//     data_a_t in_a[SA_SIZE];
//     #pragma HLS ARRAY_PARTITION variable=in_a complete dim=1

//     data_b_t in_b[SA_SIZE];
//     #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1

//     data_a_t *addr_sa_a;
//     data_b_t *addr_sa_b;
//     data_c_t *addr_sa_c;

//     // printf("[sa_shell]  P = %d | Q = %d | M = %d\n",a0_p,b0_q,m);

//     static SA sa;  
//     #pragma HLS ARRAY_PARTITION variable=sa complete dim=1

//     {
//         // this pragma does not working
//         //#pragma HLS DATAFLOW
//         sa_init(&sa);
//         uint16_t call_a = a0_p/SA_SIZE;
//         uint16_t call_b = b0_q/SA_SIZE;

//         //UM: 09/09/26
//         const uint32_t stride_a = (uint32_t)SA_SIZE * m;
//         const uint32_t stride_c = (uint32_t)SA_SIZE * b0_q;

//         uint32_t off_a = 0;   /* start of the current row of tiles, in A */
//         uint32_t off_c = 0;   /* start of the current row of tiles, in C */

//         TILE_ROW: for(uint16_t i=0;i<call_a;i++){
//             #pragma HLS LOOP_TRIPCOUNT min=32 max=256 avg=64            
//             //UM: 09/09/26
//             uint32_t off_b  = 0;        /* column offset within B */
//             uint32_t off_cj = off_c;    /* tile offset within C, carries both terms */

//             TILE_COL: for(uint16_t j=0;j<call_b;j++){
//                 #pragma HLS LOOP_TRIPCOUNT min=32 max=256 avg=64
//                 //UM: 09/09/26
//                 // addr_sa_a = (data_a_t*)(casted_a0 + i * SA_SIZE * m);
//                 // addr_sa_b = (data_b_t*)(casted_b0 + j * SA_SIZE);
//                 addr_sa_a = (data_a_t*)(casted_a0 + off_a);
//                 addr_sa_b = (data_b_t*)(casted_b0 + off_b);

//                 /* ---- Computação SA ---- */
//                 uint16_t t=0;
                
//                 STREAM_K: for(uint16_t k=0;k<m+SA_SIZE-1+SA_SIZE-1;k++){   
//                     #pragma HLS LOOP_TRIPCOUNT min=42 max=150 avg=150 
//                     #pragma HLS PIPELINE II=1
//                     // step 1 - Fetches values ​​from BRAM_A and BRAM_B in parallel.      
//                     fill_inputs_a(addr_sa_a,in_a,t,m);
//                     fill_inputs_b(addr_sa_b,b0_q,in_b,t,m);
                    
//                     // step 2 - Loads values ​​into the SA; all values ​​in parallel.
//                     load_inputs_sa(&sa,in_a,in_b);

//                     // Fase 3 - SA Compute
//                     sa_compute(&sa);
//                     t++;
//                 }
            
//             // UM:09/09/26    
//             //     /* ---- Flush do tile para C ---- */
//             //     // Fase 4 - Flush SA to BRAM_C            
//             //     addr_sa_c = (data_c_t*)(casted_c0 + (i*SA_SIZE*b0_q) + (j*SA_SIZE));
//             //     sa_store(&sa,addr_sa_c,b0_q);               
//             //     sa_reset(&sa);
//             // }
//                 /* ---- Flush the tile to C ---- */
//                 // step 4 - Flush SA to BRAM_C
//                 addr_sa_c = (data_c_t*)(casted_c0 + off_cj);
//                 sa_store(&sa,addr_sa_c,b0_q);
//                 sa_reset(&sa);

//                 off_b  += SA_SIZE;
//                 off_cj += SA_SIZE;
//             }

//             off_a += stride_a;
//             off_c += stride_c;
//         }
//     }

//     return SA_SUCCESS;
// }