
#ifndef CONV_ENGINE_H_
#define CONV_ENGINE_H_

#include <stdint.h>

#include "math_tb.h"

#include "cnn_network.h"
#include "../src/shell.h"

#define PIXEL_BUFFER_SIZE (16*1024)
#define PIXEL_BUFFER_N 1

#define FEATURE_BUFFER_SIZE (16*1024)
#define FEATURE_BUFFER_N 1

#define USE_ALIGNED_ARRAY_SIZE SA_SIZE

#define SA_ENGINE
//#define MXM_ENGINE

#define CAMPAIGN 0 //use 1 for radiation campaign

#define BUILD_LEGACY_CONV 0

extern gpool_t g_pooling_buffer[POOLING_CH_OUT];

int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels);


void send_status(short status, short line);


int net_process_layer_pixel_conv(
    uint8_t in_buffer, 
    uint8_t out_buffer, 
    weight_t* weights,
    uint8_t stride,
    uint8_t wh_kernel,    
    uint8_t ch_in, uint16_t wh_in,
    uint8_t ch_out, uint16_t wh_out);

int net_process_layer_pixel_conv_sa(
    uint8_t in_buffer, 
    uint8_t out_buffer, 
    weight_t* weights,
    uint8_t stride,
    uint8_t wh_kernel,    
    uint8_t ch_in, uint16_t wh_in,
    uint8_t ch_out, uint16_t wh_out,
    uint32_t addr_weights,
    weight_t* aw,
    pixel_t* bi,
    int32_t* ca);

    
int net_process_layer_mul_in_place(
    uint8_t in_out_buffer,
    float scale,
    uint8_t ch_out, uint16_t wh_out);
    
int net_process_layer_relu_and_clamp(
    uint8_t in_buffer,
    uint8_t out_buffer,
    uint16_t max_value,
    uint8_t ch_out, uint16_t wh_out);
    

int net_process_global_pool(uint8_t in_buffer);


float net_peak_signal_to_noise_ratio(uint8_t out_buffer_1, uint8_t out_buffer_2, uint8_t ch_out, uint16_t wh_out);

int populate_aw_with_all_the_weights(weight_t* aw);

#endif /* CONV_ENGINE_H_ */
