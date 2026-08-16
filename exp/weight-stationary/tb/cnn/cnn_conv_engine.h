#ifndef CONV_ENGINE_H_
#define CONV_ENGINE_H_

#include "ursa_math.h"
#include "cnn_network.h"
#include "cnn_weights.h"
#include "utils.h"

//URSA
#ifdef VITIS
#include "ursa.h"
#include <sys/_stdint.h>
#include "sleep.h"
#include "timer.h"
#include <xmxm_execute_ursa.h>

#else
#include "../../src/settings.h"
#endif

#define PIXEL_BUFFER_SIZE (16*1024)
#define PIXEL_BUFFER_N 1
#define FEATURE_BUFFER_SIZE (16*1024)
#define FEATURE_BUFFER_N 1

//define accelerator
// #define USE_ARM
#define USE_LINUX
// #define USE_LIBANO
// #define USE_URSA

//Engine
#define USE_ALIGNED_ARRAY_SIZE SA_SIZE
#define ERROR_TIMEOUT 0x77000000
#define ERROR_LIMITS_EXCEEDED 28

extern gpool_t g_pooling_buffer[POOLING_CH_OUT];

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
        //URSA
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
    uint8_t in_buffer,
    uint8_t out_buffer,
    uint16_t max_value,
    uint8_t ch_out, uint16_t wh_out
    );

int net_process_global_pool(uint8_t in_buffer);
int populate_aw_with_all_the_weights(weight_t* aw);

#endif