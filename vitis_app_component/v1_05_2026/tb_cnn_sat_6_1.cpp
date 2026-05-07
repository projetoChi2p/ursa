
/* Utilizando OCM */

/********** C Standard Headers **********/
#include <assert.h>
#include <ctype.h>
#include <limits.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

/********** C++ Standard Headers **********/
#include <iostream>
#include <typeinfo>

/********** Xilinx / Platform-specific Headers **********/
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_cache_l.h"
#include "xparameters.h"
// #include "xshell_top.h"
#include "xmxm_execute_ursa.h"
#include <sleep.h>
#include <sys/_intsup.h>
#include <sys/types.h>

#include "xuartps.h" //driver porta serial da xilinx

/********** Application-specific Headers **********/
#include "math_tb.h"
#include "cnn_conv_engine.h"
#include "cnn_network.h"
#include "cnn_weights.h"
#include "cnn_eval_images.h"
#include "timer.h"

/*=======================================================*/

timing_info_t timing_info;

XMxm_execute_ursa g_xMxm;

//Endereços das matrizes A, B e C mapeados para BRAMs
weight_t *g_aw = (weight_t*) BRAM_AW_BASEADDR;
pixel_t  *g_bi = (pixel_t*)  BRAM_BI_BASEADDR;
int32_t  *g_ca = (int32_t*)  BRAM_CA_BASEADDR;

// Matrix A
uint32_t g_iw_rows;
uint32_t g_iw_cols;

// Matrix B
uint32_t g_ifm_rows;
uint32_t g_ifm_cols;

// Matrix C = A x B
uint32_t g_ofm_rows;
uint32_t g_ofm_cols;

#define RAM_ALIGNMENT_OCTETS 4
//#define WEIGHT_OCTETS        4
#define WEIGHT_OCTETS        1
#define FEATURE_OCTETS       4

#define ERROR_TIMEOUT 0x77000000
#define ERROR_LIMITS_EXCEEDED 28

/*=======================================================*/

#ifndef min
#define min(a,b) \
({ __typeof__ (a) _a = (a); \
	__typeof__ (b) _b = (b); \
  _a < _b ? _a : _b; })
#endif

/**
 * Prints the string presented to it to the standard output of the platform,
 * and in addition reports success or failure, if supported by the platform.
 */
int puts_succeed(const char *str){
    return puts(str);
}

int puts_fail(const char *str){
return puts(str);
}

static void put_app_version(){
    putchar('X');
    putchar('6');
}

static void put_padding( uint8_t do_padding, uint8_t pad_len, int8_t pad_character, uint8_t num_len){
    if ((do_padding != 0) && (num_len < pad_len)) {
        for (uint8_t i=num_len; i<pad_len; i++) {
            putchar(pad_character);
        }
    }
}

#define DO_PADDING 1
#define NO_PADDING 0
#define PAD_BLANK ' '

static void put_signed_short(const int16_t n, int8_t pad_len){
	uint8_t is_negative;
	uint8_t i;
	int8_t output_digits[32];
	uint16_t num;

	if (n < 0) {
		is_negative = 1;
		num = -n;
	}
	else{
		is_negative = 0;
		num = n;
	}


	for(i = 0; i<32; i++) {
		output_digits[i] = '0';
	}

	i = 0;
	do {
		output_digits[i] = '0'+(num % 10);
		i++;
		num /= 10;
	} while (num > 0);

	if (is_negative != 0) {
		output_digits[i] = '-';
		i++;
	}

	output_digits[i] = 0;

	put_padding(DO_PADDING, pad_len, PAD_BLANK, i);
	while (i) {
		i--;
		putchar( output_digits[i] );
	}
}

static void put_signed_long(const int64_t n, int8_t pad_len){
	uint8_t is_negative;
	uint8_t i;
	int8_t output_digits[32];
	uint64_t num;

	if (n < 0) {
		is_negative = 1;
		num = -n;
	}
	else{
		is_negative = 0;
		num = n;
	}


	for(i = 0; i<32; i++) {
		output_digits[i] = '0';
	}

	i = 0;
	do {
		output_digits[i] = '0'+(num % 10);
		i++;
		num /= 10;
	} while (num > 0);

	if (is_negative != 0) {
		output_digits[i] = '-';
		i++;
	}

	output_digits[i] = 0;

	put_padding(DO_PADDING, pad_len, PAD_BLANK, i);
	while (i) {
		i--;
		putchar( output_digits[i] );
	}
}

void send_status(short status, short line){
	puts("");
	put_app_version();
	putchar(' ');
	put_signed_short(line,0);
	putchar(' ');
	put_signed_short(status,0);
	puts(" +++");
}

#define DEBUG_DUMP_PARTIALS   0

#define USE_SCALE_DIV         1
#define USE_SCALE_MUL         1
#define USE_CLAMP             1

int process_image_or_hang(uint16_t image_index, int inference_count){
	int i;
	uint8_t gold_label;
	uint8_t predicted_label;
	gpool_t max_out;

	int image_pixels = (IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN);
	int image_offset = image_index * image_pixels;
	uint8_t* pixels;
	pixels = &(g_imageset.pixels[image_offset]);

	//zero_stats(); //SA function

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

	// INPUT IMAGE
    #if MEASURE_TIME
        app_timer_start(3); //start t_in_image
    #endif
    
    //xil_printf("[process_im_or_hang] Populate im in buffer\n\r");
    // #if CAMPAIGN
    //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
    //     Xil_DCacheEnable(); //data cache (L2)
    // #endif
    if ( populate_test_image_chw_on_pixel_buffer(0, pixels) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}  
    // #if CAMPAIGN
    //     Xil_ICacheDisable();
    //     Xil_DCacheDisable();
    // #endif

    #if MEASURE_TIME
        app_timer_stop(3); //stop t_in_image
        timing_info.t_in_image += (unsigned long)app_timer_total_us(3);
    #endif
    
    if(inference_count==1){
        #if MEASURE_TIME
            app_timer_start(3); //start t_in_weights
        #endif
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        
        //xil_printf("[process_im_or_hang] Populate aw with all the weights\n\r");
        if( populate_aw_with_all_the_weights(g_aw) != EXIT_SUCCESS){
            return EXIT_FAILURE;
        }
        
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
        
        #if MEASURE_TIME
            app_timer_stop(3); //stop t_in_weights
            timing_info.t_in_weights += (unsigned long)app_timer_total_us(3);
        #endif
    }

#ifdef CNN_NETWORK_T3 //optimized for Ulisses application

	// 88888888888 .d8888b.  
	//     888    d88P  Y88b 
	//     888         .d88P 
	//     888        8888"  
	//     888         "Y8b. 
	//     888    888    888 
	//     888    Y88b  d88P 
	//     888     "Y8888P"  
						
						

	// .d8888b.                                   d888   
	// d88P  Y88b                                 d8888   
	// 888    888                                   888   
	// 888         .d88b.  88888b.  888  888        888   
	// 888        d88""88b 888 "88b 888  888        888   
	// 888    888 888  888 888  888 Y88  88P        888   
	// Y88b  d88P Y88..88P 888  888  Y8bd8P         888   
	//  "Y8888P"   "Y88P"  888  888   Y88P        8888888 
                                                   
	// CONV1
    #if MEASURE_TIME
        app_timer_start(3); //start t_t3c1_total
        app_timer_start(5); //start t_t3c1_mul
    #endif

    //xil_printf("[process_im_or_hang] net_process_layer_pixel_conv_sa: CONV 1\n\r");
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_1.weights,
		CONV1_STRIDE, CONV1_WH_KERNEL,
		CONV1_CH_IN, CONV1_WH_IN,
		CONV1_CH_OUT, CONV1_WH_OUT,
        ADDR_WEIGHTS_CONV1,
        g_aw, 
        g_bi, 
        g_ca, 
        &g_xMxm,
        &timing_info,
        0 
    )!= EXIT_SUCCESS ){
		return EXIT_FAILURE;
	}

    #if MEASURE_TIME
        app_timer_stop(5); //stop t_t3c1_mul
        timing_info.t_t3c1_mul += (unsigned long)app_timer_total_us(5);
    #endif

    #if MEASURE_TIME
        app_timer_start(5); //start t_conv_quant
    #endif

    #if USE_TAB_QUANT
        //max_value_tab_1 = ((255*g_weights_scale_6)/g_weights_scale_1); //pode ser uma constante
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        if ( net_process_layer_relu_and_clamp_table(
            0, 0,
            g_weights_scale_1,
            max_value_tab_1,
            (int32_t)255,
            CONV1_CH_OUT, CONV1_WH_OUT 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
    
    #else
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        // Weights Q were pre-scaled, so we are reverting it here.
        if ( net_process_layer_mul_in_place(
            0, 
            g_weights_scale_1,
            CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }

        if ( net_process_layer_relu_and_clamp_sa(
            0, 0,
            min(255,255*g_weights_scale_6),
            CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif

    #endif /*USE_TAB_QUANT*/

    #if MEASURE_TIME
        app_timer_stop(5); //stop t_conv_quant
        timing_info.t_t3c1_quant += (unsigned long)app_timer_total_us(5);
        app_timer_stop(3); //stop t_arm_in_image
        timing_info.t_t3c1_total += (unsigned long)app_timer_total_us(3);
    #endif

	// http://patorjk.com/software/taag/#f=Colossal
	// .d8888b.                                   .d8888b.  
	// d88P  Y88b                                 d88P  Y88b 
	// 888    888                                        888 
	// 888         .d88b.  88888b.  888  888           .d88P 
	// 888        d88""88b 888 "88b 888  888       .od888P"  
	// 888    888 888  888 888  888 Y88  88P      d88P"      
	// Y88b  d88P Y88..88P 888  888  Y8bd8P       888"       
	//  "Y8888P"   "Y88P"  888  888   Y88P        888888888  
	// 														  
	// CONV2
    #if MEASURE_TIME
        app_timer_start(3); //start t_t3c2_total
        app_timer_start(5); //start t_t3c2_mul
    #endif

    //xil_printf("[process_im_or_hang] net_process_layer_pixel_conv_sa: CONV 2\n\r");
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_2.weights,
		CONV2_STRIDE, CONV2_WH_KERNEL,
		CONV2_CH_IN, CONV2_WH_IN,
		CONV2_CH_OUT, CONV2_WH_OUT,
        ADDR_WEIGHTS_CONV2,
        g_aw, 
        g_bi, 
        g_ca,  
        &g_xMxm,
        &timing_info,
        1 ) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

    #if MEASURE_TIME
        app_timer_stop(5); //stop t_t3c2_mul
        timing_info.t_t3c2_mul += (unsigned long)app_timer_total_us(5);
    #endif

    #if MEASURE_TIME
        app_timer_start(5); //start t_t3c2_quant
    #endif

    #if USE_TAB_QUANT
        //max_value_tab_2 = ((255*g_weights_scale_9)/g_weights_scale_2); //pode ser uma constante
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        if ( net_process_layer_relu_and_clamp_table(
            0, 0,
            g_weights_scale_2,
            max_value_tab_2,
            (int32_t)255,
            CONV2_CH_OUT, CONV2_WH_OUT 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
    
    #else
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        // Weights Q were pre-scaled, so we are reverting it here.
        if ( net_process_layer_mul_in_place(
            0, 
            g_weights_scale_2,
            CONV2_CH_OUT, CONV2_WH_OUT 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }

        if ( net_process_layer_relu_and_clamp_sa(
            0, 0,
            min(255,255*g_weights_scale_9),
            CONV2_CH_OUT, CONV2_WH_OUT 
        ) != EXIT_SUCCESS ) {
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
    
    #endif /*USE_TAB_QUANT*/
    
    #if MEASURE_TIME
        app_timer_stop(5); //stop t_t3c2_quant
        timing_info.t_t3c2_quant += (unsigned long)app_timer_total_us(5);
        app_timer_stop(3); //stop t_t3c2_total
        timing_info.t_t3c2_total += (unsigned long)app_timer_total_us(3);
    #endif

	// http://patorjk.com/software/taag/#f=Colossal
	// .d8888b.                                   .d8888b.  
	// d88P  Y88b                                 d88P  Y88b 
	// 888    888                                      .d88P 
	// 888         .d88b.  88888b.  888  888          8888"  
	// 888        d88""88b 888 "88b 888  888           "Y8b. 
	// 888    888 888  888 888  888 Y88  88P      888    888 
	// Y88b  d88P Y88..88P 888  888  Y8bd8P       Y88b  d88P 
	//  "Y8888P"   "Y88P"  888  888   Y88P         "Y8888P"  
	
    // CONV3    
    #if MEASURE_TIME
        app_timer_start(3); //start t_t3c3_total
        app_timer_start(5); //start t_t3c3_mul
    #endif

    //xil_printf("[process_im_or_hang] net_process_layer_pixel_conv_sa: CONV 3\n\r");
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_3.weights,
		CONV3_STRIDE, CONV3_WH_KERNEL,
		CONV3_CH_IN, CONV3_WH_IN,
		CONV3_CH_OUT, CONV3_WH_OUT,
        ADDR_WEIGHTS_CONV3,
        g_aw, 
        g_bi, 
        g_ca,  
        &g_xMxm,
        &timing_info,
        2 
    )!= EXIT_SUCCESS ){
		return EXIT_FAILURE;
	}

    #if MEASURE_TIME
        app_timer_stop(5); //stop t_t3c3_mul
        timing_info.t_t3c3_mul += (unsigned long)app_timer_total_us(5);
    #endif

    #if MEASURE_TIME
        app_timer_start(5); //start t_t3c3_quant
    #endif

    #if USE_TAB_QUANT
        //max_value_tab_1 = ((255*g_weights_scale_6)/g_weights_scale_1); //pode ser uma constante
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        if ( net_process_layer_relu_and_clamp_table(
            0, 0,
            g_weights_scale_3,
            max_value_tab_3,
            (int32_t)255,
            CONV3_CH_OUT, CONV3_WH_OUT 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif
    
    #else
        // #if CAMPAIGN
        //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
        //     Xil_DCacheEnable(); //data cache (L2)
        // #endif
        // Weights Q were pre-scaled, so we are reverting it here.
        if ( net_process_layer_mul_in_place(
            0,
            g_weights_scale_3,
            CONV3_CH_OUT, CONV3_WH_OUT 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }

        if ( net_process_layer_relu_and_clamp_sa(
            0, 0,
            min(255,255*g_weights_scale_12),
            CONV3_CH_OUT, CONV3_WH_OUT 
        ) != EXIT_SUCCESS ) {
            return EXIT_FAILURE;
        }
        // #if CAMPAIGN
        //     Xil_ICacheDisable();
        //     Xil_DCacheDisable();
        // #endif

    #endif /*USE_TAB_QUANT*/

    #if MEASURE_TIME
        app_timer_stop(5); //stop t_t3c3_quant
        timing_info.t_t3c3_quant += (unsigned long)app_timer_total_us(5);
        app_timer_stop(3); //stop t_t3c3_total
        timing_info.t_t3c3_total += (unsigned long)app_timer_total_us(3);
    #endif

	// http://patorjk.com/software/taag/#f=Colossal
	// 8888888b.                   888 d8b                   
	// 888   Y88b                  888 Y8P                   
	// 888    888                  888                       
	// 888   d88P .d88b.   .d88b.  888 888 88888b.   .d88b.  
	// 8888888P" d88""88b d88""88b 888 888 888 "88b d88P"88b 
	// 888       888  888 888  888 888 888 888  888 888  888 
	// 888       Y88..88P Y88..88P 888 888 888  888 Y88b 888 
	// 888        "Y88P"   "Y88P"  888 888 888  888  "Y88888 
	// 												  888 
	// 											 Y8b d88P 
	// 											  "Y88P"  

    #if MEASURE_TIME
        app_timer_start(3); //start t_t3pooling
    #endif

    // #if CAMPAIGN
    //     Xil_ICacheEnable(); //instruction cache (L1 e L2)
    //     Xil_DCacheEnable(); //data cache (L2)
    // #endif
    if ( net_process_global_pool(0)  != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

#endif /* CNN_NETWORK_T3W8 */


	max_out = GPOOL_MINIMUM;
	predicted_label = 0xFF;
	for (i=0; i<POOLING_CH_OUT; i++) {
		if ( max_out < g_pooling_buffer[i] ) {
			max_out = g_pooling_buffer[i];
			predicted_label = i;
		}
	}

	gold_label = g_gold_labels.labels[image_index];
    
    // #if CAMPAIGN
    //     Xil_ICacheDisable();
    //     Xil_DCacheDisable();
    // #endif


    #if MEASURE_TIME
    app_timer_stop(3); //stop t_t3pooling
    timing_info.t_t3pooling += (unsigned long)app_timer_total_us(3);
    #endif


	#if CAMPAIGN

	    uint8_t buffer_out[14];
		buffer_out[0] = 0xAA;
		buffer_out[1] = image_index;
		for (i=0; i<POOLING_CH_OUT; i++) {
            //Little Endian
            // uint16_t val = g_pooling_buffer[i];
            // buffer_out[2 + 2*i]     = val & 0xFF;         // LSB
            // buffer_out[2 + 2*i + 1] = (val >> 8) & 0xFF;  // MSB
            // Big Endian
            uint16_t val = g_pooling_buffer[i];
            buffer_out[2 + 2*i]     = (val >> 8) & 0xFF;  // MSB primeiro
            buffer_out[2 + 2*i + 1] = val & 0xFF;         // LSB depois
		}

		for (int j = 0; j < 14; j++) {
            outbyte(buffer_out[j]);
		}

	#else /* ~CAMPAIGN */

        #if RESULT_NET_PRINT
        put_app_version();

        if (predicted_label == gold_label) {
            putchar('=');
        }
        else {
            putchar('!');
        }

        putchar(' ');
        putchar('i');
        putchar(' ');
        put_signed_short(image_index, 0);

        putchar(' ');
        putchar('I');
        putchar(' ');
        put_signed_long(g_image_ids.ids[image_index], 0);

        putchar(' ');
        putchar('g');
        putchar(' ');
        put_signed_short(gold_label, 0);

        putchar(' ');
        putchar('n');
        putchar(' ');
        put_signed_short(predicted_label, 0);

        for (i=0; i<POOLING_CH_OUT; i++) {
            putchar(' ');
            put_signed_short(g_pooling_buffer[i], 0);
        }
        puts("");
        #endif


        if (predicted_label != gold_label) {
            return EXIT_FAILURE;
        }
    
    #endif

	return EXIT_SUCCESS;
}

/******** ACCELERATOR *****************************/
int mxm_init(){
    int xil_status;

    XMxm_execute_ursa_Config *xMxmConfigPtr;
    XMxm_execute_ursa_Config xMxmConfig; //gambi
    
	// xMxmConfigPtr = XMxm_execute_ursa_LookupConfig(XPAR_SHELL_TOP_0_BASEADDR);
    xMxmConfigPtr = XMxm_execute_ursa_LookupConfig(XPAR_MXM_EXECUTE_URSA_0_BASEADDR);
    
	if (xMxmConfigPtr == NULL) {
        #if CAMPAIGN
        #else //~CAMPAIGN
            xil_printf("[init] MXM CONTROL not found.\n\r");
        #endif
        return XST_DEVICE_NOT_FOUND;
	}else{
        #if CAMPAIGN
        #else //~CAMPAIGN
            #if INFO_PRINT
            xil_printf("[init] MXM CONTROL FOUND:\n\r");
            xil_printf("[init] AP CONTROL  0x%08x\n\r", xMxmConfigPtr->Ap_BaseAddress);
            xil_printf("[init] MEM CONTROL 0x%08x\n\r", xMxmConfigPtr->Control_BaseAddress);
            #endif
        #endif
    }

    xMxmConfig.Ap_BaseAddress = xMxmConfigPtr->Control_BaseAddress; //gambi
    xMxmConfig.Control_BaseAddress = xMxmConfigPtr->Ap_BaseAddress; //gambi

    xil_status = XMxm_execute_ursa_CfgInitialize(&g_xMxm, &xMxmConfig); //gambi
    if (xil_status != XST_SUCCESS)
    {
        xil_printf("[init] MXM NL Init failed: %d.\n\r", xil_status);
        return xil_status;
    }

    return XST_SUCCESS;
}

int mxm_post_reset_setup(){

	XMxm_execute_ursa_InterruptGlobalDisable(&g_xMxm);
	XMxm_execute_ursa_InterruptDisable(&g_xMxm, 3);
	XMxm_execute_ursa_DisableAutoRestart(&g_xMxm);

    return XST_SUCCESS;    
}

void reset_timer(){
    timing_info.t_total=0; 
    timing_info.t_setup=0; 
    timing_info.t_in_image=0; 
    timing_info.t_in_weights=0; 
#ifdef CNN_NETWORK_T3
    timing_info.t_t3c1_total=0; 
    timing_info.t_t3c2_total=0; 
    timing_info.t_t3c3_total=0; 
    timing_info.t_t3pooling=0;  

    timing_info.t_t3c1_mul=0;
    timing_info.t_t3c1_quant=0;
    timing_info.t_t3c2_mul=0;
    timing_info.t_t3c2_quant=0;
    timing_info.t_t3c3_mul=0;
    timing_info.t_t3c3_quant=0;    
#endif

    for(int i=0;i<TOTAL_CONV;i++){
        timing_info.t_populate_aw_with_weights[i]=0;  
        timing_info.t_populate_bi_with_im2col[i]=0;  
        timing_info.t_mxm_compute[i]=0;  
        timing_info.t_populate_outdata_with_ca[i]=0; 
    }
}

static void print_detail_conv(uint8_t conv){
    xil_printf("        [5] Populate aw with weights: %lu[us]\r\n",timing_info.t_populate_aw_with_weights[conv]);
    xil_printf("        [5] Populate bi with im2col:  %lu[us]\r\n",timing_info.t_populate_bi_with_im2col[conv]);
    xil_printf("        [5] MXM compute:              %lu[us]\r\n",timing_info.t_mxm_compute[conv]);
    xil_printf("        [5] Populate outdata with ca: %lu[us]\r\n",timing_info.t_populate_outdata_with_ca[conv]);
}

static void print_timer(){
    xil_printf("\r\n[main] Prints of the times:\r\n");
    xil_printf("[1] t_total: %lu[us]\r\n",timing_info.t_total);
    xil_printf("  [2] t_setup: %lu[us]\r\n",timing_info.t_setup);
    xil_printf("  [2] t_in_im: %lu[us]\r\n",timing_info.t_in_image);
    xil_printf("  [2] t_in_w:  %lu[us]\r\n",timing_info.t_in_weights);
    
#ifdef CNN_NETWORK_T3
    xil_printf("  [2] t_conv_tot: %lu[us]\r\n",timing_info.t_t3c1_total+timing_info.t_t3c2_total+timing_info.t_t3c3_total);
    xil_printf("\r\n");
    xil_printf("    [3] t_t3c1_tot: %lu[us]\r\n",timing_info.t_t3c1_total);
        xil_printf("      [4] t_t3c1_mul: %lu[us]\r\n",timing_info.t_t3c1_mul);
            print_detail_conv(0);
        xil_printf("      [4] t_t3c1_quant: %lu[us]\r\n",timing_info.t_t3c1_quant);
    
    xil_printf("\r\n"); 
    xil_printf("    [3] t_t3c2_tot: %lu[us]\r\n",timing_info.t_t3c2_total);
        xil_printf("      [4] t_t3c2_mul: %lu[us]\r\n",timing_info.t_t3c2_mul);
            print_detail_conv(1);
        xil_printf("      [4] t_t3c2_quant: %lu[us]\r\n",timing_info.t_t3c2_quant);
    
    xil_printf("\r\n");
    xil_printf("    [3] t_t3c3_tot:  %lu[us]\r\n",timing_info.t_t3c3_total);
        xil_printf("      [4] t_t3c3_mul:   %lu[us]\r\n",timing_info.t_t3c3_mul);
            print_detail_conv(2);
        xil_printf("      [4] t_t3c3_quant: %lu[us]\r\n",timing_info.t_t3c3_quant);

    xil_printf("\r\n");
    xil_printf("  [2] t_t3pooling: %lu[us]\r\n",timing_info.t_t3pooling);
    xil_printf("\r\n");
#endif
        
}


// 888b     d888          d8b          
// 8888b   d8888          Y8P          
// 88888b.d88888                       
// 888Y88888P888  8888b.  888 88888b.  
// 888 Y888P 888     "88b 888 888 "88b 
// 888  Y8P  888 .d888888 888 888  888 
// 888   "   888 888  888 888 888  888 
// 888       888 "Y888888 888 888  888 
int main(){
/******** INITIAL SETUP ****************************/
    reset_timer();
    int xil_status;

    #if CAMPAIGN

    #else //~CAMPAIGN

        #ifdef BRAM
            xil_printf("\n\r\n\r[main] SAT-6 | T3 | DATA IN BRAM\n\r");
        #endif

        #ifdef HYBRID
            xil_printf("\n\r\n\r[main] SAT-6 | T3 | DATA IN OCM + BRAM (HYBRID) \n\r");
        #endif
        
        #ifdef OCM
            xil_printf("\n\r\n\r[main] SAT-6 | T3 | DATA IN OCM \n\r");
        #endif

        xil_printf("[main] Initial Setup.\n\r");
    
    #endif
    
    
    init_platform();
    app_timer_init();

    // #if CAMPAIGN
        // Xil_ICacheDisable();
        // Xil_DCacheDisable();
    // #else /*~CAMPAIGN*/
        Xil_ICacheEnable(); //instruction cache (L1 e L2)
        Xil_DCacheEnable(); //data cache (L2)
    // #endif

    //Xil_L1DCacheDisable(); //apenas l1

/******** CPU SETUP *********************************/
    #if MEASURE_TIME
        app_timer_start(0); //start t_total
        app_timer_start(1); //start t_setup
    #endif

    //1
    xil_status = mxm_init();
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] MXM init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    xil_status = mxm_post_reset_setup();
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] MXM setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    int test_cycle;
	int image_index;
	int image_test_begin = 0;
	int image_test_end = TOTAL_NUM_IMAGES;
	int inference_errors_per_class[POOLING_CH_OUT] = {0};
	int inference_counts_per_class[POOLING_CH_OUT] = {0};
	int inference_errors = 0;
	int inference_count = 0;

	// Sanity check
	if (TOTAL_NUM_IMAGES!=g_total_num_images) {
		send_status(0, __LINE__);
		goto terminate_failed;
	}
	if ((TOTAL_NUM_IMAGES*IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN)!=g_total_num_pixels) {
		send_status(0, __LINE__);
		goto terminate_failed;
	}

    #if CAMPAIGN
        outbyte(0XAA);
    #else
        //puts(">");
        xil_printf(">\n\r");
    #endif

    #if MEASURE_TIME
        app_timer_stop(1); //stop t_setup
        timing_info.t_setup += (unsigned long)app_timer_total_us(1);
    #endif

    #if TEST_ONLY_ONE_IMAGE
        //use to only test image
        image_test_begin = 3;
        image_test_end = image_test_begin+1;
    #endif /*TEST_ONLY_ONE_IMAGE*/

    #if CAMPAIGN

        while(1){
            for (test_cycle=0; test_cycle<1; test_cycle++) {
                for (image_index=image_test_begin; image_index<image_test_end; image_index++) {
                    inference_count += 1;
                    inference_counts_per_class[ g_gold_labels.labels[image_index] ] += 1;
                    if (process_image_or_hang(image_index,inference_count) != EXIT_SUCCESS) {
                        inference_errors += 1;
                        inference_errors_per_class[ g_gold_labels.labels[image_index] ] += 1;
                        //goto terminate_failed;
                    }
                }
            }
        }

    #else //~CAMPAIGN

        for (test_cycle=0; test_cycle<1; test_cycle++) {
            for (image_index=image_test_begin; image_index<image_test_end; image_index++) {
                inference_count += 1;
                inference_counts_per_class[ g_gold_labels.labels[image_index] ] += 1;
                if (process_image_or_hang(image_index,inference_count) != EXIT_SUCCESS) {
                    inference_errors += 1;
                    inference_errors_per_class[ g_gold_labels.labels[image_index] ] += 1;
                    //goto terminate_failed;
                }

    
                #if INFO_PRINT
                if ( (inference_count>0) && ((inference_count%10) == 0 ) )
                {
                    printf("SAT-6 run inferences %d errors %d (acc. %.2f%%)\n\r", inference_count, inference_errors, float(inference_count-inference_errors)/inference_count * 100.0);
                    printf("SAT-6 class ");
                    for (int i = 0; i < POOLING_CH_OUT; i++)
                    {
                        printf("%7d", i);
                    }
                    printf("\r\n");
                    printf("SAT-6 tests ");
                    for (int i = 0; i < POOLING_CH_OUT; i++)
                    {
                        printf("%7d", inference_counts_per_class[i]);
                    }
                    printf("\r\n");
                            printf("SAT-6 error ");
                    for (int i = 0; i < POOLING_CH_OUT; i++)
                    {
                        printf("%7d", inference_errors_per_class[i]);
                    }
                    printf("\r\n");
                    printf("SAT-6 accu. ");
                    for (int i = 0; i < POOLING_CH_OUT; i++)
                    {
                        printf("%6.1f%%", float(inference_counts_per_class[i]-inference_errors_per_class[i])/inference_counts_per_class[i]*100.0);
                    }
                    printf("\r\n");
            
                }
                #endif
            }
        }

    #endif

    #if MEASURE_TIME
        app_timer_stop(0); //stop t_total
        timing_info.t_total += (unsigned long)app_timer_total_us(0); 
        print_timer();
    #endif

/******** THE END ********************************/
    cleanup_platform();
    return EXIT_SUCCESS;

    terminate_failed:
	    puts_fail("SAT-6 failed");
	    return EXIT_FAILURE;
}