/* Synthetic weights for CNN_NETWORK_SYN.
 *
 * Timing experiment only. URSA's latency is a function of P, Q and M, never of
 * the values, so random int8 weights measure exactly what a trained network of
 * the same shape would cost. Accuracy printed by this build is meaningless.
 *
 * Magnitudes are capped at SYN_W_MAX so that M * SYN_W_MAX * 255 stays inside
 * the 20-bit accumulator for every layer (worst case M = 9*28 = 252:
 * 252 * 8 * 255 = 514080 < 2^19). Wrapping would not change the time either,
 * but it keeps the ARM post-processing on realistic values.                */

#include "cnn_weights.h"
#include <stdint.h>
#include <limits.h>

#ifdef CNN_NETWORK_SYN

#ifndef SYN_W_MAX
    #define SYN_W_MAX 8
#endif

#ifndef SYN_SEED
    #define SYN_SEED 0x5EEDC0DEu
#endif

weights_image_q_1_t g_weights_q_1 = { WEIGHTS_BEGIN_MAGIC, {0}, WEIGHTS_END_MAGIC };
weights_image_q_2_t g_weights_q_2 = { WEIGHTS_BEGIN_MAGIC, {0}, WEIGHTS_END_MAGIC };
weights_image_q_3_t g_weights_q_3 = { WEIGHTS_BEGIN_MAGIC, {0}, WEIGHTS_END_MAGIC };

/* Same scales as the trained T3, so the ReLU/clamp stages see values in the
   same range as the real network. */
float g_weights_scale_1  = 0.007874015718698502f;
float g_weights_scale_2  = 0.007874015718698502f;
float g_weights_scale_3  = 0.007874015718698502f;
float g_weights_scale_6  = 0.8337346911430359f;
float g_weights_scale_9  = 0.6775331497192383f;
float g_weights_scale_12 = 0.20706325769424438f;

static int8_t g_syn_head[SYN_NUM_CLASSES][POOLING_CH_OUT];

static uint32_t s_rng = SYN_SEED;

static inline int8_t syn_rand_w(void)
{
    uint32_t x = s_rng;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    s_rng = x;
    return (int8_t)((int32_t)(x % (2u * SYN_W_MAX + 1u)) - SYN_W_MAX);
}

void syn_weights_init(void)
{
    int i, c;

    s_rng = SYN_SEED;

    for (i = 0; i < TOTAL_NUM_WEIGHTS_1; i++) g_weights_q_1.weights[i] = syn_rand_w();
    for (i = 0; i < TOTAL_NUM_WEIGHTS_2; i++) g_weights_q_2.weights[i] = syn_rand_w();
    for (i = 0; i < TOTAL_NUM_WEIGHTS_3; i++) g_weights_q_3.weights[i] = syn_rand_w();

    for (c = 0; c < SYN_NUM_CLASSES; c++)
        for (i = 0; i < POOLING_CH_OUT; i++)
            g_syn_head[c][i] = syn_rand_w();
}

uint8_t syn_head_classify(const gpool_t *pooled)
{
    uint8_t best = 0;
    int c;

#if POOLING_CH_OUT == SYN_NUM_CLASSES
    /* Same as T3: the pooled channels are the class scores. */
    gpool_t max_out = GPOOL_MINIMUM;
    best = 0xFF;
    for (c = 0; c < SYN_NUM_CLASSES; c++) {
        if (max_out < pooled[c]) { max_out = pooled[c]; best = (uint8_t)c; }
    }
#else
    /* Extra classifier a real SA-native network would need: C3_OUT -> 6.
       At most 6 x 64 MACs, a few microseconds at worst on the A9, but it is
       inside the timed interval so the comparison with T3 stays honest.   */
    int32_t best_logit = INT32_MIN;
    for (c = 0; c < SYN_NUM_CLASSES; c++) {
        int32_t acc = 0;
        for (int i = 0; i < POOLING_CH_OUT; i++)
            acc += (int32_t)g_syn_head[c][i] * (int32_t)pooled[i];
        if (acc > best_logit) { best_logit = acc; best = (uint8_t)c; }
    }
#endif

    return best;
}

#endif /* CNN_NETWORK_SYN */
