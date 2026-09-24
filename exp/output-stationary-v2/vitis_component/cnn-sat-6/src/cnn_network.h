#ifndef _NETWORK_H_
#define _NETWORK_H_

#include "ursa.h"

/* Network selection comes from the build script. The default below applies
   only when none was passed; a bare #define here would collide with a
   -DCNN_NETWORK_T2 and leave two networks defined at once. */
#if !defined(CNN_NETWORK_T1) && !defined(CNN_NETWORK_T2) && !defined(CNN_NETWORK_T3) && !defined(CNN_NETWORK_SYN)
    #define CNN_NETWORK_T3
#endif

#ifndef MAX_WH_KERNEL
    #define MAX_WH_KERNEL 3
#endif

#ifdef CNN_NETWORK_T1

    #define TOTAL_NUM_WEIGHTS_1  720
    #define TOTAL_NUM_WEIGHTS_2  120

    #define IMAGE_SZ_IN         32
    #define IMAGE_CH_IN          4

    #define CONV1_WH_IN   IMAGE_SZ_IN
    #define CONV1_CH_IN   IMAGE_CH_IN
    #define CONV1_WH_OUT   16
    #define CONV1_CH_OUT   20
    #define CONV1_STRIDE    2
    #define CONV1_WH_KERNEL 3

    #define CONV2_WH_IN     CONV1_WH_OUT
    #define CONV2_CH_IN     CONV1_CH_OUT
    #define CONV2_WH_OUT    16
    #define CONV2_CH_OUT     6
    #define CONV2_STRIDE     1
    #define CONV2_WH_KERNEL  1

    #define POOLING_CH_OUT    CONV2_CH_OUT
    #define POOLING_WH_IN     CONV2_WH_OUT

#endif /* CNN_NETWORK_T1 */

#ifdef CNN_NETWORK_T2

    #define TOTAL_NUM_WEIGHTS_1  576
    #define TOTAL_NUM_WEIGHTS_2 1152
    #define TOTAL_NUM_WEIGHTS_3 1152
    #define TOTAL_NUM_WEIGHTS_4  864

    #define IMAGE_SZ_IN         32
    #define IMAGE_CH_IN          4

    #define CONV1_WH_IN   IMAGE_SZ_IN
    #define CONV1_CH_IN   IMAGE_CH_IN
    #define CONV1_WH_OUT   16
    #define CONV1_CH_OUT   16
    #define CONV1_STRIDE    2
    #define CONV1_WH_KERNEL 3

    #define CONV2_WH_IN     CONV1_WH_OUT
    #define CONV2_CH_IN     CONV1_CH_OUT
    #define CONV2_WH_OUT    8
    #define CONV2_CH_OUT    8
    #define CONV2_STRIDE    2
    #define CONV2_WH_KERNEL 3

    #define CONV3_WH_IN      CONV2_WH_OUT
    #define CONV3_CH_IN      CONV2_CH_OUT
    #define CONV3_WH_OUT     4
    #define CONV3_CH_OUT     16
    #define CONV3_STRIDE     2
    #define CONV3_WH_KERNEL  3

    #define CONV4_WH_IN     CONV3_WH_OUT
    #define CONV4_CH_IN     CONV3_CH_OUT
    #define CONV4_WH_OUT    2
    #define CONV4_CH_OUT    6
    #define CONV4_STRIDE    2
    #define CONV4_WH_KERNEL 3


    #define POOLING_CH_OUT    CONV4_CH_OUT
    #define POOLING_WH_IN     CONV4_WH_OUT

#endif /* CNN_NETWORK_T2 */

#ifdef CNN_NETWORK_T3

    #define TOTAL_NUM_WEIGHTS_1  576
    #define TOTAL_NUM_WEIGHTS_2 2304
    #define TOTAL_NUM_WEIGHTS_3  864

    #define IMAGE_SZ_IN         32
    #define IMAGE_CH_IN          4

    #define CONV1_WH_IN   IMAGE_SZ_IN
    #define CONV1_CH_IN   IMAGE_CH_IN
    #define CONV1_WH_OUT   16
    #define CONV1_CH_OUT   16
    #define CONV1_STRIDE    2
    #define CONV1_WH_KERNEL 3

    #define CONV2_WH_IN     CONV1_WH_OUT
    #define CONV2_CH_IN     CONV1_CH_OUT
    #define CONV2_WH_OUT    8
    #define CONV2_CH_OUT    16
    #define CONV2_STRIDE    2
    #define CONV2_WH_KERNEL 3

    #define CONV3_WH_IN     CONV2_WH_OUT
    #define CONV3_CH_IN     CONV2_CH_OUT
    #define CONV3_WH_OUT    8
    #define CONV3_CH_OUT    6
    #define CONV3_STRIDE    1
    #define CONV3_WH_KERNEL 3

    #define POOLING_CH_OUT    CONV3_CH_OUT
    #define POOLING_WH_IN     CONV3_WH_OUT

    // ======================= Padding dos Pesos  ===========================

    // ---------- CONV1 ----------
    #define CONV1_ROW              (CONV1_CH_OUT)
    #define CONV1_COL              (CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN)
    #define CONV1_PADDED_ROW       (((CONV1_ROW + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define CONV1_PADDED_COL       (((CONV1_COL + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define TOTAL_NUM_WEIGHTS_WITH_PADDING_1  (CONV1_PADDED_ROW * CONV1_PADDED_COL)

    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_1  (CONV1_PADDED_ROW * CONV1_COL) 

    // ---------- CONV2 ----------
    #define CONV2_ROW              (CONV2_CH_OUT)
    #define CONV2_COL              (CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN)
    #define CONV2_PADDED_ROW       (((CONV2_ROW + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define CONV2_PADDED_COL       (((CONV2_COL + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define TOTAL_NUM_WEIGHTS_WITH_PADDING_2  (CONV2_PADDED_ROW * CONV2_PADDED_COL)

    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_2  (CONV2_PADDED_ROW * CONV2_COL) 

    // ---------- CONV3 ----------
    #define CONV3_ROW              (CONV3_CH_OUT)
    #define CONV3_COL              (CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN)
    #define CONV3_PADDED_ROW       (((CONV3_ROW + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define CONV3_PADDED_COL       (((CONV3_COL + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    // #define TOTAL_NUM_WEIGHTS_WITH_PADDING_3  (CONV3_PADDED_ROW * CONV3_PADDED_COL)

    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_3  (CONV3_PADDED_ROW * CONV3_COL) 

    // // ---------- Total ----------
    // #define TOTAL_NUM_WEIGHTS ( \
    //     TOTAL_NUM_WEIGHTS_WITH_PADDING_1 + \
    //     TOTAL_NUM_WEIGHTS_WITH_PADDING_2 + \
    //     TOTAL_NUM_WEIGHTS_WITH_PADDING_3 )

    // // ======================= Endereços base dos pesos (para o acelerador) ==========================

    // // Início da CONV1
    // #define ADDR_WEIGHTS_CONV1  0

    // // Início da CONV2: logo após o bloco de CONV1
    // #define ADDR_WEIGHTS_CONV2  (ADDR_WEIGHTS_CONV1 + TOTAL_NUM_WEIGHTS_WITH_PADDING_1)  // 576

    // // Início da CONV3: logo após o bloco de CONV2
    // #define ADDR_WEIGHTS_CONV3  (ADDR_WEIGHTS_CONV2 + TOTAL_NUM_WEIGHTS_WITH_PADDING_2)  // 2880

    #if SA_SIZE >= 16
        #define TOTAL_CONV 3

        #define TOTAL_NUM_WEIGHTS ( TOTAL_NUM_WEIGHTS_1 + \
                                    TOTAL_NUM_WEIGHTS_2 + \
                                    TOTAL_NUM_WEIGHTS_3 )   // 3744

        #define ADDR_WEIGHTS_CONV3  0
        #define ADDR_WEIGHTS_CONV1  (ADDR_WEIGHTS_CONV3 + TOTAL_NUM_WEIGHTS_3)  // 864
        #define ADDR_WEIGHTS_CONV2  (ADDR_WEIGHTS_CONV1 + TOTAL_NUM_WEIGHTS_1)  // 1440
    #else
        // ---------- Total ----------
        #define TOTAL_NUM_WEIGHTS ( \
            TOTAL_NUM_WEIGHTS_WITH_PADDING_1 + \
            TOTAL_NUM_WEIGHTS_WITH_PADDING_2 + \
            TOTAL_NUM_WEIGHTS_WITH_PADDING_3 )
        // Início da CONV1
        #define ADDR_WEIGHTS_CONV1  0
        // Início da CONV2: logo após o bloco de CONV1
        #define ADDR_WEIGHTS_CONV2  (ADDR_WEIGHTS_CONV1 + TOTAL_NUM_WEIGHTS_WITH_PADDING_1)  // 576
        // Início da CONV3: logo após o bloco de CONV2
        #define ADDR_WEIGHTS_CONV3  (ADDR_WEIGHTS_CONV2 + TOTAL_NUM_WEIGHTS_WITH_PADDING_2)  // 2880
    #endif

#endif /* CNN_NETWORK_T3 */

/* ─── CNN_NETWORK_SYN ──────────────────────────────────────────────────────────
   Synthetic network for the "SA-native topology" experiment. Same geometry as
   T3 (32x32x4 input, 3x3 kernels, strides 2/2/1, global pooling), but the
   output channels of each layer are free build parameters:

       -DCNN_NETWORK_SYN -DSYN_C1_OUT=16 -DSYN_C2_OUT=16 -DSYN_C3_OUT=8

   Weights are random int8 generated on the target (cnn_weights_syn.cpp), so
   accuracy is meaningless: this build measures TIME only. URSA's latency does
   not depend on the data values, only on P, Q and M.

   GEMM of each layer (A is P x M, B is M x Q):
       CONV1: P = C1_OUT, M = 9*4,      Q = 16*16 = 256
       CONV2: P = C2_OUT, M = 9*C1_OUT, Q =  8*8  =  64
       CONV3: P = C3_OUT, M = 9*C2_OUT, Q =  8*8  =  64
   Q is already a multiple of every SA_SIZE up to 16 and M is never padded, so
   P (output channels) is the only dimension that can carry padding.

   When C3_OUT is not 6, a 6-way head (C3_OUT -> 6, int8, on the ARM) runs
   after the pooling, so the total time includes the cost of the extra
   classifier that a real SA-native network would need.                    */
#ifdef CNN_NETWORK_SYN

    #define SYN_UP(v)     ((((v) + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
    #define SYN_MAX2(a,b) (((a) > (b)) ? (a) : (b))

    #define SYN_NUM_CLASSES 6

    #ifndef SYN_C1_OUT
        #define SYN_C1_OUT 16
    #endif
    #ifndef SYN_C2_OUT
        #define SYN_C2_OUT 16
    #endif
    #ifndef SYN_C3_OUT
        #define SYN_C3_OUT SYN_UP(SYN_NUM_CLASSES)   /* SA-native default */
    #endif

    #define IMAGE_SZ_IN         32
    #define IMAGE_CH_IN          4

    #define CONV1_WH_IN     IMAGE_SZ_IN
    #define CONV1_CH_IN     IMAGE_CH_IN
    #define CONV1_WH_OUT    16
    #define CONV1_CH_OUT    SYN_C1_OUT
    #define CONV1_STRIDE    2
    #define CONV1_WH_KERNEL 3

    #define CONV2_WH_IN     CONV1_WH_OUT
    #define CONV2_CH_IN     CONV1_CH_OUT
    #define CONV2_WH_OUT    8
    #define CONV2_CH_OUT    SYN_C2_OUT
    #define CONV2_STRIDE    2
    #define CONV2_WH_KERNEL 3

    #define CONV3_WH_IN     CONV2_WH_OUT
    #define CONV3_CH_IN     CONV2_CH_OUT
    #define CONV3_WH_OUT    8
    #define CONV3_CH_OUT    SYN_C3_OUT
    #define CONV3_STRIDE    1
    #define CONV3_WH_KERNEL 3

    #define POOLING_CH_OUT  CONV3_CH_OUT
    #define POOLING_WH_IN   CONV3_WH_OUT

    #define TOTAL_NUM_WEIGHTS_1 (CONV1_CH_OUT * CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN)
    #define TOTAL_NUM_WEIGHTS_2 (CONV2_CH_OUT * CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN)
    #define TOTAL_NUM_WEIGHTS_3 (CONV3_CH_OUT * CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN)

    #define CONV1_ROW        (CONV1_CH_OUT)
    #define CONV1_COL        (CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN)
    #define CONV1_PADDED_ROW SYN_UP(CONV1_ROW)
    #define CONV2_ROW        (CONV2_CH_OUT)
    #define CONV2_COL        (CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN)
    #define CONV2_PADDED_ROW SYN_UP(CONV2_ROW)
    #define CONV3_ROW        (CONV3_CH_OUT)
    #define CONV3_COL        (CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN)
    #define CONV3_PADDED_ROW SYN_UP(CONV3_ROW)

    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_1 (CONV1_PADDED_ROW * CONV1_COL)
    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_2 (CONV2_PADDED_ROW * CONV2_COL)
    #define TOTAL_NUM_WEIGHTS_WITH_PADDING_3 (CONV3_PADDED_ROW * CONV3_COL)

    #define SYN_AW_SEQ_BYTES ( TOTAL_NUM_WEIGHTS_WITH_PADDING_1 + \
                               TOTAL_NUM_WEIGHTS_WITH_PADDING_2 + \
                               TOTAL_NUM_WEIGHTS_WITH_PADDING_3 )

    /* A is a 4 KB BRAM. If the three layers do not fit back to back, they all
       point at address 0 and only the largest one is staged. The values are
       random anyway and URSA's latency does not depend on them, so aliasing
       changes nothing in the timing. A real network of that size would need a
       larger BRAM_AW, which is itself a result worth reporting.            */
    #if SYN_AW_SEQ_BYTES <= BRAM_AW_SIZE
        #define SYN_WEIGHTS_ALIASED 0
        #define TOTAL_NUM_WEIGHTS   SYN_AW_SEQ_BYTES
        #define ADDR_WEIGHTS_CONV1  0
        #define ADDR_WEIGHTS_CONV2  (ADDR_WEIGHTS_CONV1 + TOTAL_NUM_WEIGHTS_WITH_PADDING_1)
        #define ADDR_WEIGHTS_CONV3  (ADDR_WEIGHTS_CONV2 + TOTAL_NUM_WEIGHTS_WITH_PADDING_2)
    #else
        #define SYN_WEIGHTS_ALIASED 1
        #define TOTAL_NUM_WEIGHTS   SYN_MAX2(TOTAL_NUM_WEIGHTS_WITH_PADDING_1, \
                                    SYN_MAX2(TOTAL_NUM_WEIGHTS_WITH_PADDING_2, \
                                             TOTAL_NUM_WEIGHTS_WITH_PADDING_3))
        #define ADDR_WEIGHTS_CONV1  0
        #define ADDR_WEIGHTS_CONV2  0
        #define ADDR_WEIGHTS_CONV3  0
    #endif

    /* Window limits of the block design (B and C are 16 KB each, and so are
       the ARM scratchpads). Fail at compile time, not on the board.        */
    #if (CONV1_COL * 256) > BRAM_BI_SIZE || (CONV2_COL * 64) > BRAM_BI_SIZE || (CONV3_COL * 64) > BRAM_BI_SIZE
        #error "SYN: im2col matrix B does not fit in BRAM_BI (16 KB). Reduce SYN_C1_OUT/SYN_C2_OUT."
    #endif
    #if (CONV1_PADDED_ROW * 256 * 4) > BRAM_CA_SIZE || (CONV2_PADDED_ROW * 64 * 4) > BRAM_CA_SIZE || (CONV3_PADDED_ROW * 64 * 4) > BRAM_CA_SIZE
        #error "SYN: matrix C does not fit in BRAM_CA (16 KB). SYN_C1_OUT must be <= 16."
    #endif
    #if SYN_C3_OUT < 1 || SYN_C3_OUT > 64
        #error "SYN: SYN_C3_OUT out of range."
    #endif

#endif /* CNN_NETWORK_SYN */

#endif /* _NETWORK_H_ */