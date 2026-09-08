//use for vitis
#include "platform.h"

#include <cstdlib>
#include <stdio.h>
#include <string.h>

#include "utils.h"
#include "ursa_math.h"

#ifdef VITIS
    #include "ursa.h"
    #include "timer.h"
    #include "xparameters.h"
    #include "xil_printf.h"
    #include "xil_cache.h"
#endif

#include "cnn_network.h"
#include "cnn_conv_engine.h"
#include "cnn_eval_images.h"

/* ─── Buffers ────────────────────────────────────────────────────────────────
   A, B and C live in the windows fixed by the block design, exactly as in the
   benchmark. A holds every layer's weights back to back, staged once before
   the first inference. B holds the lowered activation map of the layer being
   computed, and is overwritten three times per image. C holds the resulting
   feature map, and is read back by the host after every layer.

   Off the board the same three arrays are ordinary memory, so the network can
   be validated on a host before deployment.                                 */
#ifdef VITIS
weight_t *g_aw = (weight_t*) BRAM_AW_BASEADDR;
pixel_t  *g_bi = (pixel_t*)  BRAM_BI_BASEADDR;
int32_t  *g_ca = (int32_t*)  BRAM_CA_BASEADDR;
#else
weight_t g_aw[TOTAL_NUM_WEIGHTS];
pixel_t  g_bi[PIXEL_BUFFER_SIZE];
int32_t  g_ca[FEATURE_BUFFER_SIZE];
#endif

/* ─── Image selection ────────────────────────────────────────────────────────
   One image per class, picked at run time as the first occurrence of each
   label in the set. Hard-coded indices would break the moment the image set
   is regenerated; scanning the golden labels does not.

   The selection is about coverage, not timing. Every image costs the same
   number of MACs, because the input is a fixed 32x32x4 and the three
   convolutions have fixed shapes. What varies between rows of the timing
   table is cache state, not the class.

   Define SINGLE_IMAGE_INDEX to force one image instead, which is what the
   campaign uses so that every frame on the link is comparable to the same
   golden output.                                                            */
#ifdef CAMPAIGN
    #ifndef SINGLE_IMAGE_INDEX
        #define SINGLE_IMAGE_INDEX 2
    #endif
#endif

#define IMAGE_LIST_MAX POOLING_CH_OUT

static uint16_t g_image_list[IMAGE_LIST_MAX];
static uint32_t g_image_list_n = 0;

static void build_image_list(void)
{
#ifdef SINGLE_IMAGE_INDEX
    g_image_list[0]  = SINGLE_IMAGE_INDEX;
    g_image_list_n   = 1;
#else
    uint8_t seen[POOLING_CH_OUT];
    int i;

    for (i = 0; i < POOLING_CH_OUT; i++) seen[i] = 0;

    g_image_list_n = 0;

    for (i = 0; i < TOTAL_NUM_IMAGES && g_image_list_n < IMAGE_LIST_MAX; i++) {
        uint8_t label = g_gold_labels.labels[i];

        if (label >= POOLING_CH_OUT) continue;
        if (seen[label])             continue;

        seen[label] = 1;
        g_image_list[g_image_list_n++] = (uint16_t)i;
    }
#endif
}

/* Inferences per timed interval, one interval per image. The batch is timed
   and divided afterwards, for the same reason as in the benchmark: a single
   truncation of app_timer_total_us over a large total, instead of one per
   call over small ones.

   The interval covers one image rather than the whole selection on purpose.
   The tick counter is 32 bits, and keeping each interval near a quarter of a
   second stays far from the wrap.                                           */
#ifndef INFER_ITERS
    #define INFER_ITERS 50
#endif


/* ─── Build layout probe ─────────────────────────────────────────────────────
   With the L1 instruction cache disabled, the measured time is a property of
   the binary as much as of the design: fetch goes to the L2 in 32-byte lines,
   and whether a hot loop straddles a line boundary depends on addresses.

   BSS_PAD_BYTES inserts dead storage that shifts everything after it. Building
   the same source with a handful of different values and comparing the results
   measures how much of the spread comes from placement rather than from the
   design. That spread is the error bar for every comparison made with the
   caches in the irradiation condition.                                      */
#ifndef BSS_PAD_BYTES
    #define BSS_PAD_BYTES 0
#endif

#if BSS_PAD_BYTES > 0
volatile uint8_t g_bss_pad[BSS_PAD_BYTES];
#endif

/* Bytes sent per inference during a campaign: header, image index, and the
   six class scores, two bytes each, big endian. */
#define CAMPAIGN_FRAME_SIZE (2 + 2*POOLING_CH_OUT)

/* ─── Build banner ───────────────────────────────────────────────────────── */
#if defined(USE_URSA)
    #define ENGINE_NAME "URSA"
#else
    #define ENGINE_NAME "ARM"
#endif

#if defined(OCM)
    #define LAYOUT_NAME "OCM"
#elif defined(HYBRID)
    #define LAYOUT_NAME "HYBRID"
#else
    #define LAYOUT_NAME "BRAM"
#endif


// http://patorjk.com/software/taag/#f=Colossal
// 8888888                 .d888
//   888                  d88P"
//   888                  888
//   888   88888b.  888888 888  .d88b.  888d888
//   888   888 "88b 888    888 d8P  Y8b 888P"
//   888   888  888 888    888 88888888 888
//   888   888  888 888    888 Y8b.     888
// 8888888 888  888 888    888  "Y8888  888
static int process_image_or_hang(uint16_t image_index,
                                 int       inference_count,
                                 uint8_t  *predicted_out)
{
    int i;
    uint8_t  predicted_label;
    gpool_t  max_out;

    int image_pixels = (IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN);
    int image_offset = image_index * image_pixels;
    uint8_t* pixels;

    pixels = &(g_imageset.pixels[image_offset]);

    /* INPUT IMAGE: HWC to CHW, into the pixel buffer. */
    if ( populate_test_image_chw_on_pixel_buffer(0, pixels) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

#ifdef USE_URSA
    /* WEIGHTS: static, staged once. */
    if (inference_count == 1) {
        if ( populate_aw_with_all_the_weights(g_aw) != EXIT_SUCCESS ) {
            return EXIT_FAILURE;
        }
    }
#endif

#ifdef CNN_NETWORK_T3

    // .d8888b.                                   d888
    // d88P  Y88b                                 d8888
    // 888    888                                   888
    // 888         .d88b.  88888b.  888  888        888
    // 888        d88""88b 888 "88b 888  888        888
    // 888    888 888  888 888  888 Y88  88P        888
    // Y88b  d88P Y88..88P 888  888  Y8bd8P         888
    //  "Y8888P"   "Y88P"  888  888   Y88P        8888888

    if ( net_process_layer_pixel_conv_sa(
            0, 0,
            g_weights_q_1.weights,
            CONV1_STRIDE, CONV1_WH_KERNEL,
            CONV1_CH_IN,  CONV1_WH_IN,
            CONV1_CH_OUT, CONV1_WH_OUT,
            /* URSA */
            ADDR_WEIGHTS_CONV1, g_aw, g_bi, g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            0
        ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    /* Weights Q were pre-scaled, so we are reverting it here. */
    if ( net_process_layer_mul_in_place(
            0, g_weights_scale_1,
            CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_relu_and_clamp(
            0, 0,
            min(255, 255*g_weights_scale_6),
            CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    // .d8888b.                                   .d8888b.
    // d88P  Y88b                                 d88P  Y88b
    // 888    888                                        888
    // 888         .d88b.  88888b.  888  888           .d88P
    // 888        d88""88b 888 "88b 888  888       .od888P"
    // 888    888 888  888 888  888 Y88  88P      d88P"
    // Y88b  d88P Y88..88P 888  888  Y8bd8P       888"
    //  "Y8888P"   "Y88P"  888  888   Y88P        888888888

    if ( net_process_layer_pixel_conv_sa(
            0, 0,
            g_weights_q_2.weights,
            CONV2_STRIDE, CONV2_WH_KERNEL,
            CONV2_CH_IN,  CONV2_WH_IN,
            CONV2_CH_OUT, CONV2_WH_OUT,
            /* URSA */
            ADDR_WEIGHTS_CONV2, g_aw, g_bi, g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            1
        ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_mul_in_place(
            0, g_weights_scale_2,
            CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_relu_and_clamp(
            0, 0,
            min(255, 255*g_weights_scale_9),
            CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    // .d8888b.                                   .d8888b.
    // d88P  Y88b                                 d88P  Y88b
    // 888    888                                      .d88P
    // 888         .d88b.  88888b.  888  888          8888"
    // 888        d88""88b 888 "88b 888  888           "Y8b.
    // 888    888 888  888 888  888 Y88  88P      888    888
    // Y88b  d88P Y88..88P 888  888  Y8bd8P       Y88b  d88P
    //  "Y8888P"   "Y88P"  888  888   Y88P         "Y8888P"

    if ( net_process_layer_pixel_conv_sa(
            0, 0,
            g_weights_q_3.weights,
            CONV3_STRIDE, CONV3_WH_KERNEL,
            CONV3_CH_IN,  CONV3_WH_IN,
            CONV3_CH_OUT, CONV3_WH_OUT,
            /* URSA */
            ADDR_WEIGHTS_CONV3, g_aw, g_bi, g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            2
        ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_mul_in_place(
            0, g_weights_scale_3,
            CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_relu_and_clamp(
            0, 0,
            min(255, 255*g_weights_scale_12),
            CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
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

    if ( net_process_global_pool(0) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }

#endif /* CNN_NETWORK_T3 */

    max_out = GPOOL_MINIMUM;
    predicted_label = 0xFF;
    for (i = 0; i < POOLING_CH_OUT; i++) {
        if ( max_out < g_pooling_buffer[i] ) {
            max_out = g_pooling_buffer[i];
            predicted_label = i;
        }
    }

    if (predicted_out) *predicted_out = predicted_label;

    return EXIT_SUCCESS;
}

/* ─── Campaign frame ─────────────────────────────────────────────────────────
   One frame per inference, raw bytes, no formatting. The receiver compares
   the six scores against the golden set, so an SDC shows up as a difference
   in the scores even when the predicted label is unchanged.                 */
#ifdef CAMPAIGN
static void send_campaign_frame(uint16_t image_index)
{
    uint8_t buffer_out[CAMPAIGN_FRAME_SIZE];
    int i;

    buffer_out[0] = 0xAA;
    buffer_out[1] = (uint8_t)image_index;

    for (i = 0; i < POOLING_CH_OUT; i++) {
        uint16_t val = g_pooling_buffer[i];
        buffer_out[2 + 2*i]     = (val >> 8) & 0xFF;
        buffer_out[2 + 2*i + 1] = val & 0xFF;
    }

    for (i = 0; i < CAMPAIGN_FRAME_SIZE; i++) {
        outbyte(buffer_out[i]);
    }
}
#else
static void print_inference(uint16_t image_index, uint8_t gold, uint8_t predicted)
{
    int i;

    put_app_version();

    putchar((predicted == gold) ? '=' : '!');

    putchar(' '); putchar('i'); putchar(' ');
    put_signed_short(image_index, 0);

    putchar(' '); putchar('I'); putchar(' ');
    put_signed_long(g_image_ids.ids[image_index], 0);

    putchar(' '); putchar('g'); putchar(' ');
    put_signed_short(gold, 0);

    putchar(' '); putchar('n'); putchar(' ');
    put_signed_short(predicted, 0);

    for (i = 0; i < POOLING_CH_OUT; i++) {
        putchar(' ');
        put_signed_short(g_pooling_buffer[i], 0);
    }

    puts("");
}
#endif


// http://patorjk.com/software/taag/#f=Colossal
// 888b     d888          d8b
// 8888b   d8888          Y8P
// 88888b.d88888
// 888Y88888P888  8888b.  888 88888b.
// 888 Y888P 888     "88b 888 888 "88b
// 888  Y8P  888 .d888888 888 888  888
// 888   "   888 888  888 888 888  888
// 888       888 "Y888888 888 888  888
int main(void)
{
    uint32_t slot;
    uint16_t image_index;
    int      inference_count = 0;
    uint32_t hits = 0, miss = 0;
    uint8_t  predicted = 0xFF;

#ifdef VITIS
    int xil_status;

    init_platform();

    #if CACHE_EN_I == 0
        Xil_ICacheDisable();
    #endif

    #if CACHE_EN_D == 0
        Xil_DCacheDisable();
    #endif

  #ifdef CAMPAIGN
    /* no print */
  #else
    fprintf(stderr, "\n### CNN SAT-6 T3 " ENGINE_NAME " " LAYOUT_NAME " [v1.0] ###\n");
    printf("SA_SIZE=%d, acc=%d bits\n", SA_SIZE, ACC_BITS);
    printf("cache I=%s\n", CACHE_EN_I ? "on" : "off");
    printf("cache D=%s\n", CACHE_EN_D ? "on" : "off");
  #endif

    /* dut */
    xil_status = ursa_init(&xUrsa0, XPAR_MXM_EXECUTE_URSA_0_BASEADDR);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    xil_status = ursa_post_reset_setup(&xUrsa0);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    /* Unconditional, campaign included. The stage macros are compiled in
       always, so they run during a campaign too, and app_timer_now reads
       g_xTimer. Without this call that struct is all zeroes: the read goes to
       address 0, and the driver's assert on IsReady can spin forever. The
       campaign does not use the result, but it does execute the code. */
    if (app_timer_init() != XST_SUCCESS) {
        xil_printf("[main] timer init failed. Abort.\n\r");
        return XST_FAILURE;
    }
#endif /* VITIS */

    /* Sanity check on the embedded image set. */
    if (TOTAL_NUM_IMAGES != g_total_num_images) {
        send_status(0, __LINE__);
        goto terminate_failed;
    }

    if ((TOTAL_NUM_IMAGES*IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN) != g_total_num_pixels) {
        send_status(0, __LINE__);
        goto terminate_failed;
    }

    build_image_list();

    if (g_image_list_n == 0) {
        send_status(0, __LINE__);
        goto terminate_failed;
    }


#ifdef CAMPAIGN
    /* ─── Campaign ───────────────────────────────────────────────────────────
       Loop forever, one frame per inference. No timer, no formatting, so the
       serial link carries nothing but results.                              */
    outbyte(0xAA);

    for (;;) {
        for (slot = 0; slot < g_image_list_n; slot++) {
            image_index = g_image_list[slot];
            inference_count += 1;
            if (process_image_or_hang(image_index, inference_count, &predicted)
                    != EXIT_SUCCESS) {
                /* keep going: a failed inference is data, not a reason to stop */
                continue;
            }
            send_campaign_frame(image_index);
        }
    }

#else
    /* ─── Benchmark ──────────────────────────────────────────────────────── */
  #ifdef VITIS
    /* ─── Timer and polling calibration ──────────────────────────────────────
       Two numbers that decide whether any of the timings below mean anything.

       usleep(1) should cost about 1 us. On Zynq-7000 bare metal it usually
       does not: it goes through a timer with much coarser granularity. Every
       microsecond it costs above one is a microsecond of quantisation in the
       accelerator's completion wait, which is exactly where the gemm stage is
       measured.

       The register read is the alternative. It is what the tight polling loop
       in ursa_run costs per iteration, and therefore the resolution with
       which completion can be detected.                                     */
    {
        uint32_t i, us_sleep, us_read, ticks_sleep;

        app_timer_start(0);
        for (i = 0; i < 1000u; i++) usleep(1);
        app_timer_stop(0);
        us_sleep    = app_timer_total_us(0);
        ticks_sleep = app_timer_total_ticks(0);

        app_timer_start(0);
        for (i = 0; i < 1000u; i++) (void)XMxm_execute_ursa_IsIdle(&xUrsa0);
        app_timer_stop(0);
        us_read = app_timer_total_us(0);

        fprintf(stderr, "\ncalibration\n");
        fprintf(stderr, "  tick rate        %lu ticks/us\n",
                (unsigned long)(us_sleep ? ticks_sleep / us_sleep : 0u));
        fprintf(stderr, "  usleep(1)        %lu.%03lu us\n",
                (unsigned long)(us_sleep / 1000u), (unsigned long)(us_sleep % 1000u));
        fprintf(stderr, "  register read    %lu.%03lu us\n",
                (unsigned long)(us_read / 1000u), (unsigned long)(us_read % 1000u));
    #ifdef URSA_POLL_RELAXED
        fprintf(stderr, "  polling          relaxed (usleep between reads)\n");
    #else
        fprintf(stderr, "  polling          tight\n");
    #endif
        fprintf(stderr, "  bss pad          %d bytes\n", BSS_PAD_BYTES);
    }
  #endif

    fprintf(stderr, "\nengine=%s layout=%s, %lu images (one per class), %d inferences each\n",
            ENGINE_NAME, LAYOUT_NAME,
            (unsigned long)g_image_list_n, INFER_ITERS);
    fprintf(stderr, "------------------------------------------------------------\n");

    /* Accuracy pass. Also the warm-up: the first inference stages the weights
       and pulls the driver into the instruction cache, and costs visibly more
       than the ones that follow. */
    for (slot = 0; slot < g_image_list_n; slot++) {
        image_index = g_image_list[slot];
        inference_count += 1;
        if (process_image_or_hang(image_index, inference_count, &predicted)
                != EXIT_SUCCESS) {
            goto terminate_failed;
        }

        if (predicted == g_gold_labels.labels[image_index]) ++hits; else ++miss;
        print_inference(image_index, g_gold_labels.labels[image_index], predicted);
    }

  #ifdef VITIS
    /* ─── Timed pass ─────────────────────────────────────────────────────────
       One interval per image, INFER_ITERS inferences inside it. Frame rate is
       reported per image and once for the set. Both are derived from the same
       microsecond totals, so they cannot disagree.

       fps = 1e6 / us_per_image, kept in hundredths with integer arithmetic:
         fps_x100 = 1e8 * INFER_ITERS / us_total                              */
    {
        uint32_t rep;
        uint32_t us_image;
        uint64_t us_sum   = 0;
        uint32_t n_imaged = 0;
        uint32_t us_x100  = 0;

        /* Stages accumulate across the whole pass, in their own channels.
           Channel 0 is untouched by them, so the totals below and the split
           further down describe the same 300 inferences. */
        conv_engine_profile_reset();

        fprintf(stderr, "------------------------------------------------------------\n");
        fprintf(stderr, "%6s %6s %10s %12s %10s\n",
                "image", "class", "us_tot", "us", "fps");
        fprintf(stderr, "------------------------------------------------------------\n");

        for (slot = 0; slot < g_image_list_n; slot++) {
            image_index = g_image_list[slot];

            app_timer_start(TIMER_TOTAL);
            for (rep = 0; rep < INFER_ITERS; ++rep) {
                inference_count += 1;
                (void)process_image_or_hang(image_index, inference_count, &predicted);
            }
            app_timer_stop(TIMER_TOTAL);
            us_image = app_timer_total_us(TIMER_TOTAL);

            us_sum += us_image;
            n_imaged++;

            {
                uint32_t row_x100 = (uint32_t)(((uint64_t)us_image * 100u) / INFER_ITERS);
                uint32_t fps_x100 = us_image
                    ? (uint32_t)(((uint64_t)100000000u * INFER_ITERS) / us_image)
                    : 0u;

                fprintf(stderr, "%6u %6u %10lu %9lu.%02lu %7lu.%02lu\n",
                        (unsigned)image_index,
                        (unsigned)g_gold_labels.labels[image_index],
                        (unsigned long)us_image,
                        (unsigned long)(row_x100 / 100u), (unsigned long)(row_x100 % 100u),
                        (unsigned long)(fps_x100 / 100u), (unsigned long)(fps_x100 % 100u));
            }
        }

        {
            uint64_t n_total  = (uint64_t)INFER_ITERS * n_imaged;
            uint32_t fps_x100 = us_sum ? (uint32_t)((100000000u * n_total) / us_sum) : 0u;

            us_x100 = n_total ? (uint32_t)((us_sum * 100u) / n_total) : 0u;

            fprintf(stderr, "------------------------------------------------------------\n");
            fprintf(stderr, "accuracy      %lu/%lu\n",
                    (unsigned long)hits, (unsigned long)(hits + miss));
            fprintf(stderr, "inferences    %lu\n", (unsigned long)n_total);
            fprintf(stderr, "us total      %lu\n", (unsigned long)us_sum);
            fprintf(stderr, "us per image  %lu.%02lu\n",
                    (unsigned long)(us_x100 / 100u), (unsigned long)(us_x100 % 100u));
            fprintf(stderr, "fps           %lu.%02lu\n",
                    (unsigned long)(fps_x100 / 100u), (unsigned long)(fps_x100 % 100u));

        }

        /* ─── Stage split ────────────────────────────────────────────────────
           Read once, at the end. app_timer_total_us does the only unit
           conversion, three times for the whole run instead of nine times per
           inference.

           'other' is what the three stages do not cover: loading the image,
           the scale, the ReLU, the pooling, and the de-tiling of C. The
           de-tiling is the one that surprises, since it sits inside the
           convolution function but outside any stage. Because every number
           here comes from the same pass, the subtraction is exact.         */
        {
            uint64_t n_total = (uint64_t)INFER_ITERS * n_imaged;
            uint32_t im2col_us, transfer_us, gemm_us, stages_us;

            im2col_us   = (uint32_t)(app_timer_total_us(TIMER_IM2COL)   / n_total);
            transfer_us = (uint32_t)(app_timer_total_us(TIMER_TRANSFER) / n_total);
            gemm_us     = (uint32_t)(app_timer_total_us(TIMER_GEMM)     / n_total);
            stages_us   = im2col_us + transfer_us + gemm_us;

            fprintf(stderr, "  im2col      %8lu us/image\n", (unsigned long)im2col_us);
            fprintf(stderr, "  transfer    %8lu us/image\n", (unsigned long)transfer_us);
            fprintf(stderr, "  gemm        %8lu us/image\n", (unsigned long)gemm_us);
            fprintf(stderr, "  other       %8ld us/image\n",
                    (long)(us_x100 / 100u) - (long)stages_us);
        }
    }
  #else
    fprintf(stderr, "------------------------------------------------------------\n");
    fprintf(stderr, "accuracy      %lu/%lu\n",
            (unsigned long)hits, (unsigned long)(hits + miss));
  #endif

#endif /* CAMPAIGN */

#ifdef VITIS
    cleanup_platform();
#endif

    return (miss == 0) ? EXIT_SUCCESS : EXIT_SUCCESS;   /* misclassification is not a build failure */

terminate_failed:
    fprintf(stderr, "### SAT-6 failed ###\n");
    return EXIT_FAILURE;
}