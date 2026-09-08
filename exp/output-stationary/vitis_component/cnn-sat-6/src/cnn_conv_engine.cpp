#include "cnn_conv_engine.h"
#include <string.h>

/* The three large buffers below are streamed against each other: im2col
   reads the pixel buffer and writes the scratchpad, the scale and ReLU walk
   the feature buffer. The L1 data cache is 32 KB in 4 ways, so 8 KB per way,
   and buffers whose addresses differ by a multiple of 8 KB fight for the same
   sets. Without an explicit alignment the linker places them wherever .bss
   happens to land, and any unrelated change to a global shifts them. Pinning
   the alignment does not eliminate conflicts, but it makes them a property of
   the design rather than of the last edit.                                 */
#define URSA_BUF_ALIGN __attribute__((aligned(32)))

pixel_t  g_pixel_buffer[PIXEL_BUFFER_N][PIXEL_BUFFER_SIZE] URSA_BUF_ALIGN;
macc_t   g_feature_buffer[FEATURE_BUFFER_N][FEATURE_BUFFER_SIZE] URSA_BUF_ALIGN;
gpool_t  g_pooling_buffer[POOLING_CH_OUT];

#define SCRATCHPAD_W_SIZE (16*1024)
#define SCRATCHPAD_I_SIZE (16*1024)
#define SCRATCHPAD_A_SIZE (16*1024)

#ifdef USE_ARM
weight_t      g_scratchpad_aw[SCRATCHPAD_W_SIZE] URSA_BUF_ALIGN;
container_a_t g_scratchpad_ca[SCRATCHPAD_A_SIZE] URSA_BUF_ALIGN;  // feature map
#endif

pixel_t g_scratchpad_bi[SCRATCHPAD_I_SIZE] URSA_BUF_ALIGN;        // im2col result, both engines

#ifdef VITIS
void conv_engine_profile_reset(void)
{
    app_timer_start(TIMER_IM2COL);
    app_timer_start(TIMER_TRANSFER);
    app_timer_start(TIMER_GEMM);
}

#define STAGE_START(ch)  app_timer_continue(ch)
#define STAGE_STOP(ch)   app_timer_stop(ch)
#else
/* Host build: no timers. The stage split is a board measurement. */
void conv_engine_profile_reset(void) { }
#define STAGE_START(ch)  do {} while (0)
#define STAGE_STOP(ch)   do {} while (0)
#endif

/* ─── Cache maintenance ──────────────────────────────────────────────────────
   Same rule as the benchmark. Under BRAM nothing is cacheable and no
   maintenance is needed. Under OCM all three matrices sit in cacheable
   memory. Under HYBRID only B and C do, because A stays in BRAM.

   The difference from the benchmark is when this runs. There, A and B are
   written once and the flush sits outside the timed interval. Here B is
   rebuilt and C is read back on every layer, so both are inside it. Only A
   keeps the benchmark's behaviour, and it is flushed once by
   populate_aw_with_all_the_weights.                                         */
#if defined(VITIS) && defined(USE_URSA) && CACHE_EN_D
    #if defined(OCM)
        #define FLUSH_A(p, n)      Xil_DCacheFlushRange((INTPTR)(p), (uint32_t)(n))
        #define FLUSH_B(p, n)      Xil_DCacheFlushRange((INTPTR)(p), (uint32_t)(n))
        #define FLUSH_C(p, n)      Xil_DCacheFlushRange((INTPTR)(p), (uint32_t)(n))
        #define INVALIDATE_C(p, n) Xil_DCacheInvalidateRange((INTPTR)(p), (uint32_t)(n))
    #elif defined(HYBRID)
        #define FLUSH_A(p, n)      do {} while (0)
        #define FLUSH_B(p, n)      Xil_DCacheFlushRange((INTPTR)(p), (uint32_t)(n))
        #define FLUSH_C(p, n)      Xil_DCacheFlushRange((INTPTR)(p), (uint32_t)(n))
        #define INVALIDATE_C(p, n) Xil_DCacheInvalidateRange((INTPTR)(p), (uint32_t)(n))
    #else /* BRAM */
        #define FLUSH_A(p, n)      do {} while (0)
        #define FLUSH_B(p, n)      do {} while (0)
        #define FLUSH_C(p, n)      do {} while (0)
        #define INVALIDATE_C(p, n) do {} while (0)
    #endif
#else
    #define FLUSH_A(p, n)      do {} while (0)
    #define FLUSH_B(p, n)      do {} while (0)
    #define FLUSH_C(p, n)      do {} while (0)
    #define INVALIDATE_C(p, n) do {} while (0)
#endif

//===============================================
// Helpers
//===============================================

static inline uint16_t align_up_sa(uint16_t v)
{
#if USE_ALIGNED_ARRAY_SIZE
    return (uint16_t)(((v + USE_ALIGNED_ARRAY_SIZE - 1) / USE_ALIGNED_ARRAY_SIZE) * USE_ALIGNED_ARRAY_SIZE);
#else
    return v;
#endif
}

// Used internally by net_process_layer_pixel_conv_sa
static void aligned_sa_p(uint8_t ch_out, uint16_t* l_c_rows_a_rows)
{
    (*l_c_rows_a_rows) = align_up_sa(ch_out);
}

#ifdef USE_ARM
static int populate_weight_scratchpad(
    weight_t* weights,
    uint8_t   wh_kernel,
    uint8_t   ch_in,
    uint8_t   ch_out,
    weight_t* scratchpad_aw,
    uint16_t* l_c_rows_a_rows
)
{
    weight_t *data_col = scratchpad_aw;

    uint16_t aligned_ch_out = align_up_sa(ch_out);

    (*l_c_rows_a_rows) = aligned_ch_out;
    int32_t scratchpad_weights = aligned_ch_out * ch_in * wh_kernel * wh_kernel;

    if ( SCRATCHPAD_W_SIZE < scratchpad_weights )
    {
        send_status(scratchpad_weights, __LINE__);
        return EXIT_FAILURE;
    }

    for (uint16_t co = 0; co < ch_out; co++)
    {
        for (uint16_t ci = 0; ci < ch_in; ci++)
        {
            for (uint16_t j = 0; j < wh_kernel; j++)
            {
                for (uint16_t i = 0; i < wh_kernel; i++)
                {
                    // Weights are organized in memory as [chout, chin, k, k], e.g. [16, 4, 3, 3]
                    uint32_t w_offset = co * (ch_in*wh_kernel*wh_kernel) +
                                        ci * (wh_kernel*wh_kernel) +
                                        j  * wh_kernel +
                                        i;
                    *(data_col++) = weights[w_offset];
                }
            }
        }
    }

    return EXIT_SUCCESS;
}
#endif /* USE_ARM */


// From Berkeley Vision's Caffe
// Refer to Caffe's license : https://github.com/BVLC/caffe/blob/master/LICENSE
static inline uint8_t is_a_ge_zero_and_a_lt_b(int a, int b)
{
    return (unsigned int)a < (unsigned int)(b);
}

// The image lowering (im2col) always runs on the ARM. Both engines consume
// the lowered matrix B from g_scratchpad_bi.
static int populate_scratchpad_bi_with_im2col(
        const pixel_t *data_im,
        const uint8_t  channels,
        const uint16_t height, const uint16_t width,
        const uint8_t  kernel_h, const uint8_t kernel_w,
        const uint8_t  pad_h, const uint8_t pad_w,
        const uint8_t  stride_h, const uint8_t stride_w,
        pixel_t       *scratchpad_bi,
        uint16_t      *n_c_cols_b_cols
)
{
    pixel_t *data_col = scratchpad_bi;

    const uint16_t output_h = (height + 2 * pad_h - ((kernel_h - 1) + 1)) / stride_h + 1;
    const uint16_t output_w = (width  + 2 * pad_w - ((kernel_w - 1) + 1)) / stride_w + 1;

    uint16_t aligned_wh_out = align_up_sa((uint16_t)(output_h * output_w));

    (*n_c_cols_b_cols) = aligned_wh_out;

    uint32_t scratchpad_pixels = ((channels * kernel_h * kernel_w) * aligned_wh_out);
    if ( SCRATCHPAD_I_SIZE < scratchpad_pixels ) {
        send_status(scratchpad_pixels, __LINE__);
        return EXIT_FAILURE;
    }

    const int channel_size = height * width;

    for (uint8_t channel = channels; channel--; data_im += channel_size) {
        for (uint8_t kernel_row = 0; kernel_row < kernel_h; kernel_row++) {
            for (uint8_t kernel_col = 0; kernel_col < kernel_w; kernel_col++) {

                int input_row = -pad_h + kernel_row;

                for (int output_rows = output_h; output_rows; output_rows--) {
                    if (!is_a_ge_zero_and_a_lt_b(input_row, height)) {
                        for (int output_cols = output_w; output_cols; output_cols--) {
                            *(data_col++) = 0;
                        }
                    }
                    else {
                        int input_col = -pad_w + kernel_col;

                        for (int output_col = output_w; output_col; output_col--) {
                            if (is_a_ge_zero_and_a_lt_b(input_col, width)) {
                                *(data_col++) = data_im[input_row * width + input_col];
                            } else {
                                *(data_col++) = 0;
                            }
                            input_col += stride_w;
                        }
                    }
                    input_row += stride_h;
                }

                // Zero padding up to the SA-aligned column count
                for (int k = (output_h*output_w); k < aligned_wh_out; k++) {
                    *(data_col++) = 0;
                }
            }
        }
    }

    return EXIT_SUCCESS;
}

// Used internally by net_process_layer_pixel_conv_sa
static int populate_outdata_with_ca(
    const int32_t* ca,
    unsigned int   wh_out,
    unsigned int   ch_out,
    unsigned int   n_c_cols_b_cols,
    container_a_t* out_data
){
    for (unsigned int co = 0; co < ch_out; co++) {
        for (unsigned int y = 0; y < wh_out; y++) {
            for (unsigned int x = 0; x < wh_out; x++) {
                unsigned int src_index = x + y * wh_out + co * n_c_cols_b_cols;
                unsigned int dst_index = x + y * wh_out + co * wh_out * wh_out;

                out_data[dst_index] = (container_a_t)ca[src_index];
            }
        }
    }

    return EXIT_SUCCESS;
}

//  /$$   /$$ /$$$$$$$   /$$$$$$   /$$$$$$
// | $$  | $$| $$__  $$ /$$__  $$ /$$__  $$
// | $$  | $$| $$  \ $$| $$  \__/| $$  \ $$
// | $$  | $$| $$$$$$$/|  $$$$$$ | $$$$$$$$
// | $$  | $$| $$__  $$ \____  $$| $$__  $$
// | $$  | $$| $$  \ $$ /$$  \ $$| $$  | $$
// |  $$$$$$/| $$  | $$|  $$$$$$/| $$  | $$
//  \______/ |__/  |__/ \______/ |__/  |__/

// Used internally by populate_aw_with_all_the_weights
static unsigned int save_layer_with_padding(
    volatile weight_t *mem,
    unsigned int      *index_ptr,
    const weight_t    *weights,
    unsigned int       row,
    unsigned int       col,
    unsigned int       layer_id
)
{
    (void)layer_id;

    unsigned int padded_rows = ((row + SA_SIZE - 1) / SA_SIZE) * SA_SIZE;
    unsigned int padded_cols = col;  // No padding for columns (M)
    unsigned int count = 0;
    unsigned int weight_idx = 0;

    for (unsigned int r = 0; r < padded_rows; r++) {
        for (unsigned int c = 0; c < padded_cols; c++) {
            if (r < row && c < col) {
                mem[*index_ptr] = weights[weight_idx++];
            } else {
                mem[*index_ptr] = 0;  // padding
            }
            (*index_ptr)++;
            count++;
        }
    }

    return count;
}

#ifdef CHECK_WEIGHTS
// Used internally by populate_aw_with_all_the_weights
static int check_weigths_into_mem(weight_t* mem_check)
{
    unsigned int i, index = 0;
    unsigned int offset_pad = 0;

#ifdef CNN_NETWORK_T3
    // layer 1
    for (i = 0; i < TOTAL_NUM_WEIGHTS_1; i++) {
        if (mem_check[index] != g_weights_q_1.weights[i]) {
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }

    offset_pad = TOTAL_NUM_WEIGHTS_WITH_PADDING_1 - TOTAL_NUM_WEIGHTS_1;
    index = index + offset_pad;

    // layer 2
    for (i = 0; i < TOTAL_NUM_WEIGHTS_2; i++) {
        if (mem_check[index] != g_weights_q_2.weights[i]) {
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }

    offset_pad = TOTAL_NUM_WEIGHTS_WITH_PADDING_2 - TOTAL_NUM_WEIGHTS_2;
    index = index + offset_pad;

    // layer 3
    for (i = 0; i < TOTAL_NUM_WEIGHTS_3; i++) {
        if (mem_check[index] != g_weights_q_3.weights[i]) {
            send_status(mem_check[index], __LINE__);
            return EXIT_FAILURE;
        }
        index++;
    }
#endif /* CNN_NETWORK_T3 */

    return EXIT_SUCCESS;
}
#endif /* CHECK_WEIGHTS */

// Used by INPUT
int populate_aw_with_all_the_weights(weight_t* aw)
{
    unsigned int index = 0;
    unsigned int total_weights = 0;

#ifdef CNN_NETWORK_T3

    unsigned int count_weights_1 = save_layer_with_padding(aw, &index, g_weights_q_1.weights,
                                CONV1_CH_OUT, CONV1_WH_KERNEL * CONV1_WH_KERNEL * CONV1_CH_IN, 1);

    unsigned int count_weights_2 = save_layer_with_padding(aw, &index, g_weights_q_2.weights,
                                CONV2_CH_OUT, CONV2_WH_KERNEL * CONV2_WH_KERNEL * CONV2_CH_IN, 2);

    unsigned int count_weights_3 = save_layer_with_padding(aw, &index, g_weights_q_3.weights,
                                CONV3_CH_OUT, CONV3_WH_KERNEL * CONV3_WH_KERNEL * CONV3_CH_IN, 3);

    total_weights = count_weights_1 + count_weights_2 + count_weights_3;

    if (total_weights != TOTAL_NUM_WEIGHTS) {
        send_status(total_weights, __LINE__);
        return EXIT_FAILURE;
    }

#ifdef CHECK_WEIGHTS
    if (check_weigths_into_mem(aw) != EXIT_SUCCESS) {
        return EXIT_FAILURE;
    }
#endif

    /* Weights are static. This is the only flush of A in the whole run, and
       it sits outside the timed interval. */
    FLUSH_A(aw, (uint32_t)total_weights * sizeof(weight_t));

#endif /* CNN_NETWORK_T3 */

    return EXIT_SUCCESS;
}

#ifdef USE_URSA
static int populate_bi_with_scratchpad_bi(
    const pixel_t* buffer_in,
    uint32_t       m,
    uint32_t       q,
    pixel_t*       bi
)
{
    memcpy((void*)bi, (const void*)buffer_in, (size_t)m * q * sizeof(pixel_t));
    return EXIT_SUCCESS;
}
#endif /* USE_URSA */


//      /$$$$$$  /$$$$$$$  /$$      /$$
//     /$$__  $$| $$__  $$| $$$    /$$$
//    | $$  \ $$| $$  \ $$| $$$$  /$$$$
//    | $$$$$$$$| $$$$$$$/| $$ $$/$$ $$
//    | $$__  $$| $$__  $$| $$  $$$| $$
//    | $$  | $$| $$  \ $$| $$\  $ | $$
//    | $$  | $$| $$  | $$| $$ \/  | $$
//    |__/  |__/|__/  |__/|__/     |__/

#ifdef USE_ARM
// Software GEMM reference, used when the accelerator is not present
static int mxm_execute_arm(
    weight_t*      aw,
    pixel_t*       bi,
    container_a_t* ca,
    uint16_t       l_c_rows_a_rows,
    uint16_t       n_c_cols_b_cols,
    uint16_t       m_a_cols_b_rows
){
    uint16_t r, c, k;

    for (r = 0; r < l_c_rows_a_rows; r++) {
        for (c = 0; c < n_c_cols_b_cols; c++) {
            container_a_t sum = 0;

            for (k = 0; k < m_a_cols_b_rows; k++) {
                weight_t w = aw[r * m_a_cols_b_rows + k];
                pixel_t  i = bi[k * n_c_cols_b_cols + c];

                sum += (container_a_t)w * (container_a_t)i;
            }

            ca[r * n_c_cols_b_cols + c] = sum;
        }
    }

    return EXIT_SUCCESS;
}
#endif /* USE_ARM */

// 8888888                            888
//   888                              888
//   888                              888
//   888   88888b.  88888b.  888  888 888888
//   888   888 "88b 888 "88b 888  888 888
//   888   888  888 888  888 888  888 888
//   888   888  888 888 d88P Y88b 888 Y88b.
// 8888888 888  888 88888P"   "Y88888  "Y888
//                  888
//                  888
//                  888
int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels)
{
    int image_pixels = (IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN);

    if (out_buffer >= PIXEL_BUFFER_N) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    if (PIXEL_BUFFER_SIZE < image_pixels) {
        send_status(image_pixels, __LINE__);
        return EXIT_FAILURE;
    }

    for (int ch = 0; ch < IMAGE_CH_IN; ch++) {
        for (int r = 0; r < IMAGE_SZ_IN; r++) {
            for (int c = 0; c < IMAGE_SZ_IN; c++) {
                int hwc_offset = r*(IMAGE_SZ_IN*IMAGE_CH_IN) +
                                 c*(IMAGE_CH_IN) +
                                 ch;

                int chw_offset = ch*(IMAGE_SZ_IN*IMAGE_SZ_IN) +
                                 r*(IMAGE_SZ_IN) +
                                 c;

                g_pixel_buffer[out_buffer][chw_offset] = pixel_from_uint8(pixels[hwc_offset]);
            }
        }
    }

    return EXIT_SUCCESS;
}


// http://patorjk.com/software/taag/#f=Colossal
//  .d8888b.                                   .d8888b.        d8888
// d88P  Y88b                                 d88P  Y88b      d88888
// 888    888                                 Y88b.          d88P888
// 888         .d88b.  88888b.  888  888       "Y888b.      d88P 888
// 888        d88""88b 888 "88b 888  888          "Y88b.   d88P  888
// 888    888 888  888 888  888 Y88  88P            "888  d88P   888
// Y88b  d88P Y88..88P 888  888  Y8bd8P       Y88b  d88P d8888888888
//  "Y8888P"   "Y88P"  888  888   Y88P         "Y8888P" d88P     888

int net_process_layer_pixel_conv_sa(
        uint8_t   in_buffer,
        uint8_t   out_buffer,
        weight_t* weights,
        uint8_t   stride,
        uint8_t   wh_kernel,
        uint8_t   ch_in,
        uint16_t  wh_in,
        uint8_t   ch_out,
        uint16_t  wh_out,
        // URSA
        uint32_t           addr_weights,
        weight_t*          aw,
        pixel_t*           bi,
        int32_t*           ca,
#ifdef VITIS
        XMxm_execute_ursa* pxMxm,
#endif
        uint8_t            conv_seq
    )
{
    int rc;

    (void)conv_seq;

#ifdef USE_ARM
    // The accelerator buffers are not used by the software engine
    (void)addr_weights; (void)aw; (void)bi; (void)ca;
    #ifdef VITIS
    (void)pxMxm;
    #endif
#endif

#ifdef USE_URSA
    // Weights are pre-loaded once into aw by populate_aw_with_all_the_weights
    (void)weights;
#endif

    if (in_buffer >= PIXEL_BUFFER_N)
    {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    if (out_buffer >= FEATURE_BUFFER_N)
    {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    pixel_t* in_data  = &(g_pixel_buffer[in_buffer][0]);
    macc_t*  out_data = &(g_feature_buffer[out_buffer][0]);

    // WEIGHTS: A is (ch_out) x (k*k*ch_in)
    unsigned int row = ch_out;
    unsigned int col = wh_kernel * wh_kernel * ch_in;

    unsigned int layer_weights = align_up_sa(row) * align_up_sa(col);

    if (SCRATCHPAD_W_SIZE < layer_weights)
    {
        send_status(layer_weights, __LINE__);
        return EXIT_FAILURE;
    }

    // INPUTS: B is (k*k*ch_in) x (wh_out*wh_out)
    row = wh_kernel * wh_kernel * ch_in;
    col = wh_out * wh_out;

    unsigned int layer_im2col = align_up_sa(row) * align_up_sa(col);

    if (SCRATCHPAD_I_SIZE < layer_im2col)
    {
        send_status(layer_im2col, __LINE__);
        return EXIT_FAILURE;
    }

    // FEATURES
    int layer_features = (wh_out * wh_out * ch_out);
    if (SCRATCHPAD_A_SIZE < layer_features)
    {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if (FEATURE_BUFFER_SIZE < layer_features)
    {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    uint16_t l_c_rows_a_rows;
    uint16_t n_c_cols_b_cols;
    uint16_t m_a_cols_b_rows;

    m_a_cols_b_rows = wh_kernel * wh_kernel * ch_in;

    uint8_t pad = wh_kernel / 2;

    /* ─── Stage 1: image lowering, always on the ARM ─────────────────────── */
    STAGE_START(TIMER_IM2COL);
    if ( (rc = populate_scratchpad_bi_with_im2col(
        in_data,
        ch_in, wh_in, wh_in,
        wh_kernel, wh_kernel,
        pad, pad,
        stride, stride,
        g_scratchpad_bi,
        &n_c_cols_b_cols
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    }
    STAGE_STOP(TIMER_IM2COL);

    aligned_sa_p(ch_out, &l_c_rows_a_rows);

    /* ─── Stage 2 and 3: transfer and GEMM ───────────────────────────────── */
#ifdef USE_ARM

    if ( (rc = populate_weight_scratchpad(
        weights,
        wh_kernel,
        ch_in,
        ch_out,
        g_scratchpad_aw,
        &l_c_rows_a_rows
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    }

    STAGE_START(TIMER_GEMM);
    if ( (rc = mxm_execute_arm(
        g_scratchpad_aw,
        g_scratchpad_bi,
        g_scratchpad_ca,
        l_c_rows_a_rows,
        n_c_cols_b_cols,
        m_a_cols_b_rows
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    }
    STAGE_STOP(TIMER_GEMM);

    const int32_t* ca_result = (const int32_t*)g_scratchpad_ca;

#endif /* USE_ARM */

#ifdef USE_URSA

    uint32_t bytes_b = (uint32_t)m_a_cols_b_rows * n_c_cols_b_cols * sizeof(pixel_t);
    uint32_t bytes_c = (uint32_t)l_c_rows_a_rows * n_c_cols_b_cols * sizeof(int32_t);

    /* Stage 2: the lowered image is copied into the B window and pushed out
       of the data cache. Unlike the benchmark, this happens on every layer,
       because B is rebuilt from a different activation map each time. */
    STAGE_START(TIMER_TRANSFER);

    if ( (rc = populate_bi_with_scratchpad_bi(
        g_scratchpad_bi,
        m_a_cols_b_rows,
        n_c_cols_b_cols,
        bi
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    }

    FLUSH_B(bi, bytes_b);
    FLUSH_C(ca, bytes_c);

    STAGE_STOP(TIMER_TRANSFER);

    /* Stage 3: the accelerator. */
    uint32_t addr_a = BRAM_AW_BASEADDR + addr_weights * sizeof(weight_t);
    uint32_t addr_b = BRAM_BI_BASEADDR;
    uint32_t addr_c = BRAM_CA_BASEADDR;

    STAGE_START(TIMER_GEMM);

    uint8_t sa_status = mxm_execute_ursa(
        pxMxm,
        l_c_rows_a_rows, n_c_cols_b_cols, m_a_cols_b_rows,
        addr_a, addr_b, addr_c
    );

    STAGE_STOP(TIMER_GEMM);

    if (sa_status != SA_SUCCESS) {
        xil_printf("[cnn_conv_engine] MXM Compute failed 0x%08x. Abort.\n\r", sa_status);
        return sa_status;
    }

    INVALIDATE_C(ca, bytes_c);

    const int32_t* ca_result = (const int32_t*)ca;

#endif /* USE_URSA */

    //===========================================
    // Feature map de-tiling
    //===========================================
    layer_features = l_c_rows_a_rows * n_c_cols_b_cols;
    if (SCRATCHPAD_A_SIZE < layer_features) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if ( (rc = populate_outdata_with_ca(
        ca_result,
        wh_out,
        ch_out,
        n_c_cols_b_cols,
        out_data
    ) ) != EXIT_SUCCESS )
    {
        send_status(rc, __LINE__);
        return rc;
    }

    return EXIT_SUCCESS;
}

//  .d88888b.                             888
// d88P" "Y88b                            888
// 888     888                            888
// 888     888 888  888  8888b.  88888b.  888888
// 888     888 888  888     "88b 888 "88b 888
// 888 Y8b 888 888  888 .d888888 888  888 888
// Y88b.Y8b88P Y88b 888 888  888 888  888 Y88b.
//  "Y888888"   "Y88888 "Y888888 888  888  "Y888
//        Y8b

int net_process_layer_mul_in_place(uint8_t in_out_buffer, float scale, uint8_t ch_out, uint16_t wh_out)
{
    int layer_features = (wh_out*wh_out*ch_out);

    if (FEATURE_BUFFER_SIZE < layer_features) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    macc_t* in_out_data = &(g_feature_buffer[in_out_buffer][0]);

    /* macc_to_float(f) with a float argument converted to macc_t on the way
       in, back to float on the way out, then to macc_t again on assignment.
       The result was correct, by truncation toward zero at each step, but it
       is three conversions where one cast says the same thing. There is no
       float_to_macc in ursa_math.h, and there does not need to be. */
    for (int i = 0; i < layer_features; i++) {
        float f;
        f = macc_to_float(in_out_data[i]);
        f *= scale;
        in_out_data[i] = (macc_t)f;
    }

    return EXIT_SUCCESS;
}

// 8888888b.          888                    .d8888b.            .d8888b.  888
// 888   Y88b         888                   d88P  "88b          d88P  Y88b 888
// 888    888         888                   Y88b. d88P          888    888 888
// 888   d88P .d88b.  888     888  888       "Y8888P"           888        888  8888b.  88888b.d88b.  88888b.
// 8888888P" d8P  Y8b 888     888  888      .d88P88K.d88P       888        888     "88b 888 "888 "88b 888 "88b
// 888 T88b  88888888 888     888  888      888"  Y888P"        888    888 888 .d888888 888  888  888 888  888
// 888  T88b Y8b.     888     Y88b 888      Y88b .d8888b        Y88b  d88P 888 888  888 888  888  888 888 d88P
// 888   T88b "Y8888  88888888 "Y88888       "Y8888P" Y88b       "Y8888P"  888 "Y888888 888  888  888 88888P"

int net_process_layer_relu_and_clamp(
    uint8_t  in_buffer,
    uint8_t  out_buffer,
    uint16_t max_value,
    uint8_t  ch_out,
    uint16_t wh_out
    )
{
    unsigned int global_y;
    unsigned int global_x;
    unsigned int global_co;

    if (in_buffer >= PIXEL_BUFFER_N) {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }
    if (out_buffer >= FEATURE_BUFFER_N) {
        send_status(out_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    macc_t*  in_data  = &(g_feature_buffer[out_buffer][0]);
    pixel_t* out_data = &(g_pixel_buffer[in_buffer][0]);

    int layer_features = (wh_out*wh_out*ch_out);

    if (FEATURE_BUFFER_SIZE < layer_features) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    if (PIXEL_BUFFER_SIZE < layer_features) {
        send_status(layer_features, __LINE__);
        return EXIT_FAILURE;
    }

    for (global_y = 0; global_y < wh_out; global_y++) {
        for (global_x = 0; global_x < wh_out; global_x++) {
            for (global_co = 0; global_co < ch_out; global_co++) {
                unsigned int idx = global_x + global_y*wh_out + global_co*wh_out*wh_out;
                macc_t out = in_data[idx];

                if (out < 0) {
                    out_data[idx] = 0;
                }
                else if (out > max_value) {
                    out_data[idx] = max_value;
                }
                else {
                    out_data[idx] = out;
                }
            }
        }
    }

    return EXIT_SUCCESS;
}


// 8888888b.                   888 d8b
// 888   Y88b                  888 Y8P
// 888    888                  888
// 888   d88P .d88b.   .d88b.  888 888 88888b.   .d88b.
// 8888888P" d88""88b d88""88b 888 888 888 "88b d88P"88b
// 888       888  888 888  888 888 888 888  888 888  888
// 888       Y88..88P Y88..88P 888 888 888  888 Y88b 888
// 888        "Y88P"   "Y88P"  888 888 888  888  "Y88888
//                                                   888
//                                              Y8b d88P
//                                               "Y88P"

int net_process_global_pool(uint8_t in_buffer)
{
    int co;
    gpool_t ch_out_sum;

    if (in_buffer >= PIXEL_BUFFER_N) {
        send_status(in_buffer, __LINE__);
        return EXIT_FAILURE;
    }

    pixel_t* in_data  = &(g_pixel_buffer[in_buffer][0]);
    gpool_t* out_data = &(g_pooling_buffer[0]);

    if ((sizeof(g_pooling_buffer)/sizeof(g_pooling_buffer[0])) < POOLING_CH_OUT) {
        send_status(POOLING_CH_OUT, __LINE__);
        return EXIT_FAILURE;
    }

    for (co = 0; co < POOLING_CH_OUT; co++) {
        ch_out_sum = 0;

        for (int y_row_out = 0; y_row_out < POOLING_WH_IN; y_row_out++) {
            for (int x_col_out = 0; x_col_out < POOLING_WH_IN; x_col_out++) {
                int co_offset         = co*POOLING_WH_IN*POOLING_WH_IN;
                int co_row_offset     = y_row_out*POOLING_WH_IN + co_offset;
                int addr_pixel_offset = x_col_out + co_row_offset;
                pixel_t data;
                data = in_data[addr_pixel_offset];
                ch_out_sum = add_pooling(ch_out_sum, data);
            }
        }
        out_data[co] = ch_out_sum;
    }

    return EXIT_SUCCESS;
}