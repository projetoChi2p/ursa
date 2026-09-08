#ifndef CONV_ENGINE_H_
#define CONV_ENGINE_H_

#include "ursa_math.h"
#include "cnn_network.h"
#include "cnn_weights.h"
#include "utils.h"

#ifdef VITIS
    #include "ursa.h"
    #include "sleep.h"
    #include "timer.h"
    #include "xil_cache.h"
    #include <sys/_stdint.h>
    #include <xmxm_execute_ursa.h>
#else
    #include "../../src/settings.h"
#endif

/* ─── Buffers ────────────────────────────────────────────────────────────── */
#define PIXEL_BUFFER_SIZE   (16*1024)
#define PIXEL_BUFFER_N      1
#define FEATURE_BUFFER_SIZE (16*1024)
#define FEATURE_BUFFER_N    1

/* ─── Engine parameters ──────────────────────────────────────────────────── */
#define USE_ALIGNED_ARRAY_SIZE SA_SIZE
#define ERROR_TIMEOUT          0x77000000
#define ERROR_LIMITS_EXCEEDED  28

extern gpool_t g_pooling_buffer[POOLING_CH_OUT];

/* ─── Stage profiling ────────────────────────────────────────────────────────
   One timer channel per stage. app_timer_continue/app_timer_stop accumulate
   into the channel's elapsed field on their own, in ticks, so there is no
   accumulator to keep here and no unit conversion until the value is read
   once at the end.

   The channels are independent structs and app_timer_now only reads the free
   running SCU counter, so a stage channel nested inside the channel 0 interval
   costs channel 0 nothing. That is why the stages can be measured during the
   timed pass itself: 'other' becomes an exact subtraction inside a single
   measurement instead of a difference between two passes.

   Cost per stage boundary is one counter read, plus a subtract and an add on
   the closing side. Nine stages per inference, well under a microsecond out of
   three thousand.

   elapsed is 32 bits, which at 333 MHz wraps after 12.9 s of accumulated time
   in one stage. Raising INFER_ITERS far past 50 would need a wider field.  */
#define TIMER_TOTAL     0
#define TIMER_IM2COL    1
#define TIMER_TRANSFER  2
#define TIMER_GEMM      3

/* Zeroes the three stage channels. Call once before the timed pass. */
void conv_engine_profile_reset(void);

/* ─── Weight staging ─────────────────────────────────────────────────────────
   The weights are static: written into A once, before the first inference,
   and never touched again. Everything else in the pipeline is dynamic.      */
int populate_aw_with_all_the_weights(weight_t* aw);

int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels);

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
        /* URSA */
        uint32_t           addr_weights,
        weight_t*          aw,
        pixel_t*           bi,
        int32_t*           ca,
#ifdef VITIS
        XMxm_execute_ursa* pxMxm,
#endif
        uint8_t            conv_seq
    );

int net_process_layer_mul_in_place(uint8_t in_out_buffer, float scale, uint8_t ch_out, uint16_t wh_out);

int net_process_layer_relu_and_clamp(
    uint8_t  in_buffer,
    uint8_t  out_buffer,
    uint16_t max_value,
    uint8_t  ch_out,
    uint16_t wh_out
    );

int net_process_global_pool(uint8_t in_buffer);

#endif /* CONV_ENGINE_H_ */