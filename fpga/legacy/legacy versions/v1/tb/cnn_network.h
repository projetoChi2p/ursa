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

#define TOTAL_NUM_WEIGHTS_WITH_PADDING_1  (CONV1_PADDED_ROW * CONV1_COL) //não precisa corrigir o padding de colunas (M)

// ---------- CONV2 ----------
#define CONV2_ROW              (CONV2_CH_OUT)
#define CONV2_COL              (CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN)
#define CONV2_PADDED_ROW       (((CONV2_ROW + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
// #define CONV2_PADDED_COL       (((CONV2_COL + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
// #define TOTAL_NUM_WEIGHTS_WITH_PADDING_2  (CONV2_PADDED_ROW * CONV2_PADDED_COL)

#define TOTAL_NUM_WEIGHTS_WITH_PADDING_2  (CONV2_PADDED_ROW * CONV2_COL) //não precisa corrigir o padding de colunas (M)

// ---------- CONV3 ----------
#define CONV3_ROW              (CONV3_CH_OUT)
#define CONV3_COL              (CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN)
#define CONV3_PADDED_ROW       (((CONV3_ROW + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
// #define CONV3_PADDED_COL       (((CONV3_COL + SA_SIZE - 1) / SA_SIZE) * SA_SIZE)
// #define TOTAL_NUM_WEIGHTS_WITH_PADDING_3  (CONV3_PADDED_ROW * CONV3_PADDED_COL)

#define TOTAL_NUM_WEIGHTS_WITH_PADDING_3  (CONV3_PADDED_ROW * CONV3_COL) //não precisa corrigir o padding de colunas (M)

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



#endif /* CNN_NETWORK_T3 */

#endif /* _NETWORK_H_ */


/*
#ifndef _NETWORK_H_
#define _NETWORK_H_

// Quantidade de pesos por camada
#define TOTAL_NUM_WEIGHTS_1  576   // Pesos da camada 1
#define TOTAL_NUM_WEIGHTS_2  2304  // Pesos da camada 2
#define TOTAL_NUM_WEIGHTS_3  1152  // Pesos da camada 3

#define TOTAL_NUM_WEIGHTS    4032  // Total de pesos da rede
#define TOTAL_NUM_IMAGES     18    // Quantidade de imagens de entrada (deveria ser 20 mas temos apenas 18)
#define IMAGE_SZ_IN          32    // Tamanho da imagem (32x32)
#define IMAGE_CH_IN          4     // Número de canais de entrada
#define MAX_NUM_LAYERS       3     // Número total de camadas da rede

// ======================= Camada Convolucional 1 =======================
#define CONV1_WH_IN          IMAGE_SZ_IN   // Tamanho da imagem de entrada (32x32)
#define CONV1_CH_IN          IMAGE_CH_IN   // Canais de entrada (imagem original)
#define CONV1_WH_OUT         16            // Tamanho da imagem de saída (16x16)
#define CONV1_CH_OUT         16            // Número de canais de saída
#define CONV1_STRIDE         2             // Stride 2 com padding 1 mantém saída 16x16
#define CONV1_WH_KERNEL      3             // Kernel 3x3

// ======================= Camada Convolucional 2 =======================
#define CONV2_WH_IN          CONV1_WH_OUT  // Entrada = saída da camada anterior (16x16)
#define CONV2_CH_IN          CONV1_CH_OUT  // Canais de entrada = canais da camada anterior (16)
#define CONV2_WH_OUT         8             // Tamanho da saída (8x8)
#define CONV2_CH_OUT         16            // Número de canais de saída
#define CONV2_STRIDE         2             // Stride 2 com padding 1 mantém saída 8x8
#define CONV2_WH_KERNEL      3             // Kernel 3x3

// ======================= Camada Convolucional 3 =======================
#define CONV3_WH_IN          CONV2_WH_OUT
#define CONV3_CH_IN          CONV2_CH_OUT
#define CONV3_WH_OUT         8             // Saída permanece 8x8
#define CONV3_CH_OUT         8             // Reduz para 8 canais
#define CONV3_STRIDE         1             // Stride 1 preserva tamanho da imagem
#define CONV3_WH_KERNEL      3

// ======================= Pooling Layer (comentada por enquanto) ======
 #define POOLING_CH_OUT      CONV3_CH_OUT
 #define POOLING_WH_IN       CONV3_WH_OUT

// ======================= Offsets dos Pesos e Bias =====================
#define CONV1_WEIGHTS_OFFSET 0
#define CONV1_BIAS_OFFSET    (CONV1_WEIGHTS_OFFSET + (CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN * CONV1_CH_OUT))

#define CONV2_WEIGHTS_OFFSET (CONV1_BIAS_OFFSET + CONV1_CH_OUT)
#define CONV2_BIAS_OFFSET    (CONV2_WEIGHTS_OFFSET + (CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN * CONV2_CH_OUT))

#define CONV3_WEIGHTS_OFFSET (CONV2_BIAS_OFFSET + CONV2_CH_OUT)
#define CONV3_BIAS_OFFSET    (CONV3_WEIGHTS_OFFSET + (CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN * CONV3_CH_OUT))

#endif
*/

/*
Resumo das dimensões das matrizes por camada:

ch_in | ch_out | kernel (WxH) | output (WxH) || A[][] (pesos)     | B[][] (imagem IM2COL)
------|--------|--------------|--------------||-------------------|------------------------
4     | 16     | 3x3          | 16x16        || [16][36]          | [36][256]
16    | 16     | 3x3          | 8x8          || [16][144]         | [144][64]
16    | 8      | 3x3          | 8x8          || [8][144]          | [144][64]

Legenda:
- A[][] → Matriz de pesos após flatten (ch_out x (kernel_w * kernel_h * ch_in))
- B[][] → Matriz da imagem após IM2COL (kernel_w * kernel_h * ch_in x output_w * output_h)
- C[][] → Resultado da multiplicação A x B (ch_out x output_w * output_h)

========================= Camada Conv 1 =========================
IM2COL   → B[36][256]   → BRAM_B: addr[0]
    kernel size = 3x3
    stride      = 2
    padding     = 'same'
    output size = 16x16

PESOS    → A[16][36]    → BRAM_A: addr[0] até addr[575] (576 pesos)
    ch_in       = 4
    ch_out      = 16
    kernel size = 3x3

SAÍDA    → C[16][256]   → BRAM_C: addr[0]
BUFFER_IMG → lê C[16][256] da BRAM_C: addr[0]

========================= Camada Conv 2 =========================
IM2COL   → B[144][64]   → BRAM_B: addr[0]
    kernel size = 3x3
    stride      = 2
    padding     = 'same'
    output size = 8x8

PESOS    → A[16][144]   → BRAM_A: addr[576] até addr[2880] (2304 pesos)
    ch_in       = 16
    ch_out      = 16

SAÍDA    → C[16][64]    → BRAM_C: addr[0]
BUFFER_IMG → lê C[16][64] da BRAM_C: addr[0]

========================= Camada Conv 3 =========================
IM2COL   → B[144][64]   → BRAM_B: addr[0]
    kernel size = 3x3
    stride      = 1
    padding     = 'same'
    output size = 8x8

PESOS    → A[8][144]    → BRAM_A: addr[2881] até addr[4033] (1152 pesos)
    ch_in       = 16
    ch_out      = 8

SAÍDA    → C[8][64]     → BRAM_C: addr[0]
BUFFER_IMG → lê C[8][64] da BRAM_C: addr[0]
*/
