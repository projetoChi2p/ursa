
#ifndef CONV_ENGINE_H_
#define CONV_ENGINE_H_

extern "C" {
  #include "libsteel.h"
  #include "core_portme.h"
  #include "xmxm_execute_ursa.h"
}


#include "ursa_math.h"
#include "cnn_network.h"
#include "cnn_weights.h"

#define BRAM_AW_BASEADDR 0x40020000
#define BRAM_AW_SIZE     (0x0FFF+1) //4K
#define BRAM_BI_BASEADDR 0x40030000
#define BRAM_BI_SIZE     (0x3FFF+1) //16K
#define BRAM_CA_BASEADDR 0x40040000
#define BRAM_CA_SIZE     (0x3FFF+1) //16K

#define SA_SIZE 8
#define USE_TAB_QUANT 0 //after conv, requant process + relu + clamp (0 => with mul ; 1 => with table)

#define TIMEOUT_STEPS_FOR_REGS       100
#define TIMEOUT_STEPS_FOR_OPS       1000
#define TIMEOUT_USLEEP                 1

#define ERROR_TIMEOUT 0x77000000
#define ERROR_LIMITS_EXCEEDED 28

/**********************************************/
#define PIXEL_BUFFER_SIZE (16*1024)
#define PIXEL_BUFFER_N 1

#define FEATURE_BUFFER_SIZE (16*1024)
#define FEATURE_BUFFER_N 1

#define USE_ALIGNED_ARRAY_SIZE SA_SIZE

extern gpool_t g_pooling_buffer[POOLING_CH_OUT];

//INPUTS
int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels);
int populate_aw_with_all_the_weights(weight_t* aw);

//CONV
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
    int32_t* ca,
    XMxm_execute_ursa* pxMxm,
    uint8_t conv_seq 
);

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

int net_process_layer_relu_and_clamp_table(
    uint8_t in_buffer,
    uint8_t out_buffer,
    int32_t max_value_tab,
    int32_t max_value,
    uint8_t ch_out, 
    uint16_t wh_out,
    weigths_tab_result_t *weights_tab
);

#endif