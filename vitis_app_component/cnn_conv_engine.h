
#ifndef CONV_ENGINE_H_
#define CONV_ENGINE_H_

#include <stdint.h>

#include "math_tb.h"

#include "cnn_network.h"
//#include "../src/shell.h"



/********** Xilinx / Platform-specific Headers **********/
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xparameters.h"
// #include "xshell_top.h"
#include "xmxm_execute_ursa.h"
#include <sleep.h>
#include <sys/_intsup.h>
#include <sys/types.h>
#include "timer.h"


/*********** PARAMS **********/

#define SA_SIZE 8
#define USE_ALIGNED_ARRAY_SIZE SA_SIZE

#define CAMPAIGN 0 //use 1 for radiation campaign

#define USE_TAB_QUANT 0 //after conv, requant process + relu + clamp (0 => with mul ; 1 => with table)

//to choice each other
#define BRAM //use plataform
//#define OCM //use plataform_v2
//#define HYBRID //use plataform_hybrid

#define USE_ONLY_ARM 0 //use plataform_v2 with define OCM

#define IS_TEST 0
#if IS_TEST
    #define TEST_ONLY_ONE_IMAGE 0
    #define MEASURE_TIME        0 //to measure times
    #define INFO_PRINT          1 //to print info
    #define RESULT_NET_PRINT    1 //to print net result
#else
    #define TEST_ONLY_ONE_IMAGE 1
    #define MEASURE_TIME        1 //to measure times
    #define INFO_PRINT          0 //to print info
    #define RESULT_NET_PRINT    0 //to print net result
#endif

// //to measure times: 1;1;0;0
// //to net test:      0;0;1;1
// #define TEST_ONLY_ONE_IMAGE 0
// #define MEASURE_TIME        0 //to measure times
// #define INFO_PRINT          0 //to print info
// #define RESULT_NET_PRINT    1 //to print net result

#define SA_BAD_SIZES 2
#define SA_SUCCESS   0

#ifdef BRAM
    // #define BRAM_AW_BASEADDR 0x40020000
    // #define BRAM_AW_SIZE     (0xFFFF+1)
    // #define BRAM_BI_BASEADDR 0x40030000
    // #define BRAM_BI_SIZE     (0xFFFF+1)
    // #define BRAM_CA_BASEADDR 0x40040000
    // #define BRAM_CA_SIZE     (0xFFFF+1)
    #define BRAM_AW_BASEADDR 0x40020000
    #define BRAM_AW_SIZE     (0x0FFF+1) //4K
    #define BRAM_BI_BASEADDR 0x40030000
    #define BRAM_BI_SIZE     (0x3FFF+1) //16K
    #define BRAM_CA_BASEADDR 0x40040000
    #define BRAM_CA_SIZE     (0x3FFF+1) //16K


    // //use for only one bram
    // #define BRAM_AW_BASEADDR 0x40020000
    // #define BRAM_AW_SIZE     (0x13FF+1)
    // #define BRAM_BI_BASEADDR 0x40021400
    // #define BRAM_BI_SIZE     (0x2BFF+1)
    // #define BRAM_CA_BASEADDR 0x40024000
    // #define BRAM_CA_SIZE     (0x3FFF+1)
#endif

#ifdef OCM
    //OCM: ps7_ram_0 : ORIGIN = 0x0, LENGTH = 0x30000
    #define BRAM_AW_BASEADDR 0x00000
    #define BRAM_AW_SIZE     (0xFFFF+1)
    
    #define BRAM_BI_BASEADDR 0x10000
    #define BRAM_BI_SIZE     (0xFFFF+1)
    
    #define BRAM_CA_BASEADDR 0x20000
    #define BRAM_CA_SIZE     (0xFFFF+1)
#endif

#ifdef HYBRID
    // #define BRAM_AW_BASEADDR 0x40020000
    // #define BRAM_AW_SIZE     (0xFFFF+1)
    #define BRAM_AW_BASEADDR 0x40020000
    #define BRAM_AW_SIZE     (0x0FFF+1) //4K

    #define BRAM_BI_BASEADDR 0x10000
    #define BRAM_BI_SIZE     (0xFFFF+1)
    #define BRAM_CA_BASEADDR 0x20000
    #define BRAM_CA_SIZE     (0xFFFF+1)
#endif

#define TIMEOUT_STEPS_FOR_REGS       100
#define TIMEOUT_STEPS_FOR_OPS       1000
#define TIMEOUT_USLEEP                 1

#define ERROR_TIMEOUT 0x77000000
#define ERROR_LIMITS_EXCEEDED 28

#define PIXEL_BUFFER_SIZE (16*1024)
#define PIXEL_BUFFER_N 1

#define FEATURE_BUFFER_SIZE (16*1024)
#define FEATURE_BUFFER_N 1

#define BUILD_LEGACY_CONV 0

typedef struct {
    unsigned long t_total;     //timer 0
    unsigned long t_setup; //timer 1    
    unsigned long t_in_image;   //timer 3
    unsigned long t_in_weights; //timer 3
#ifdef CNN_NETWORK_T3
    unsigned long t_t3c1_total; //timer 3
    unsigned long t_t3c2_total; //timer 3
    unsigned long t_t3c3_total; //timer 3
    unsigned long t_t3pooling;  //timer 3
    
    unsigned long t_populate_aw_with_weights[TOTAL_CONV];  //timer 4
    unsigned long t_populate_bi_with_im2col[TOTAL_CONV];  //timer 4
    unsigned long t_mxm_compute[TOTAL_CONV]; //timer 4
    unsigned long t_populate_outdata_with_ca[TOTAL_CONV];  //timer 4


    unsigned long t_t3c1_mul;   //timer 5
    unsigned long t_t3c1_quant; //timer 5

    unsigned long t_t3c2_mul;   //timer 5
    unsigned long t_t3c2_quant; //timer 5

    unsigned long t_t3c3_mul;   //timer 5
    unsigned long t_t3c3_quant; //timer 5
#endif
    
} timing_info_t;


extern gpool_t g_pooling_buffer[POOLING_CH_OUT];

int populate_test_image_chw_on_pixel_buffer(uint8_t out_buffer, uint8_t* pixels);

void send_status(short status, short line);

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
    timing_info_t* timing_info,
    uint8_t conv_seq 
);
    
int net_process_layer_mul_in_place(
    uint8_t in_out_buffer,
    float scale,
    uint8_t ch_out, uint16_t wh_out
);
    
int net_process_layer_relu_and_clamp_sa(
    uint8_t in_buffer,
    uint8_t out_buffer,
    uint16_t max_value,
    uint8_t ch_out, uint16_t wh_out
);

int net_process_layer_relu_and_clamp_table(
    uint8_t in_buffer,
    uint8_t out_buffer,
    float scale_1,
    //float scale_2,
    int32_t max_value_tab,
    int32_t max_value,
    uint8_t ch_out, 
    uint16_t wh_out
);
    
int net_process_global_pool(uint8_t in_buffer);

int populate_aw_with_all_the_weights(weight_t* g_aw);

#endif /* CONV_ENGINE_H_ */
