#ifndef _NETWORK_H_
#define _NETWORK_H_

#define CNN_NETWORK_T3  //definido pelo usuário (automação)
#define MAX_WH_KERNEL 3 //definido pelo usuário (automação)

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

    // ---------- Total ----------
    #define TOTAL_NUM_WEIGHTS ( \
        TOTAL_NUM_WEIGHTS_WITH_PADDING_1 + \
        TOTAL_NUM_WEIGHTS_WITH_PADDING_2 + \
        TOTAL_NUM_WEIGHTS_WITH_PADDING_3 )

    // ======================= Endereços base dos pesos (para o acelerador) ==========================

    // Início da CONV1
    #define ADDR_WEIGHTS_CONV1  0

    // Início da CONV2: logo após o bloco de CONV1
    #define ADDR_WEIGHTS_CONV2  (ADDR_WEIGHTS_CONV1 + TOTAL_NUM_WEIGHTS_WITH_PADDING_1)  // 576

    // Início da CONV3: logo após o bloco de CONV2
    #define ADDR_WEIGHTS_CONV3  (ADDR_WEIGHTS_CONV2 + TOTAL_NUM_WEIGHTS_WITH_PADDING_2)  // 2880

    #define TOTAL_CONV 3

#endif /* CNN_NETWORK_T3 */

#endif /* _NETWORK_H_ */
