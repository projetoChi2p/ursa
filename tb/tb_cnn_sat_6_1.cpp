
/********** C/C++ Standard Headers **********/
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <limits.h>

/********** Application-specific Headers **********/
#include "math_tb.h"
#include "cnn_conv_engine.h"
#include "cnn_network.h"
#include "cnn_weights.h"
#include "cnn_eval_images.h"

/*=======================================================*/

//Endereços das matrizes A, B e C
weight_t g_mem_a[TOTAL_NUM_WEIGHTS];
pixel_t  g_mem_b[PIXEL_BUFFER_SIZE];
int32_t  g_mem_c[FEATURE_BUFFER_SIZE];


/*=======================================================*/

#ifndef min
#define min(a,b) \
({ __typeof__ (a) _a = (a); \
	__typeof__ (b) _b = (b); \
  _a < _b ? _a : _b; })
#endif

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
	if ( populate_test_image_chw_on_pixel_buffer(0, pixels) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

    // INPUT WEIGHTS
	if(inference_count==1){
		if( populate_aw_with_all_the_weights(g_mem_a) != EXIT_SUCCESS){
			return EXIT_FAILURE;
		}
	}
 
#ifdef CNN_NETWORK_T2 //optimized for Fabio's application and reviewed for SA engine

	// http://patorjk.com/software/taag/#f=Colossal
	// 88888888888 .d8888b.  
	//     888    d88P  Y88b 
	//     888           888 
	//     888         .d88P 
	//     888     .od888P"  
	//     888    d88P"      
	//     888    888"       
	//     888    888888888  

                      
	// http://patorjk.com/software/taag/#f=Colossal
	// .d8888b.                                   d888   
	// d88P  Y88b                                 d8888   
	// 888    888                                   888   
	// 888         .d88b.  88888b.  888  888        888   
	// 888        d88""88b 888 "88b 888  888        888   
	// 888    888 888  888 888  888 Y88  88P        888   
	// Y88b  d88P Y88..88P 888  888  Y8bd8P         888   
	//  "Y8888P"   "Y88P"  888  888   Y88P        8888888 
                                                   

	// CONV1 (Weights X Pixels with IM2COL = Feature Map)
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_1.weights,
		CONV1_STRIDE, CONV1_WH_KERNEL,
		CONV1_CH_IN, CONV1_WH_IN,
		CONV1_CH_OUT, CONV1_WH_OUT,
        ADDR_WEIGHTS_CONV1,
		g_mem_a,
		g_mem_b,
		g_mem_c 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0, 
		g_weights_scale_1,
		CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}


	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_7),
		CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}
	#if DEBUG_DUMP_PARTIALS
	net_dump_image("Relu1ACT", 0, CONV1_CH_OUT, CONV1_WH_OUT, 3, 16);
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
	if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_2.weights,
		CONV2_STRIDE, CONV2_WH_KERNEL,
		CONV2_CH_IN, CONV2_WH_IN,
		CONV2_CH_OUT, CONV2_WH_OUT,
        ADDR_WEIGHTS_CONV2,
		g_mem_a,
		g_mem_b,
		g_mem_c 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0, 
		g_weights_scale_2,
		CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}
	
	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_10),
		CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}



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
	if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_3.weights,
		CONV3_STRIDE, CONV3_WH_KERNEL,
		CONV3_CH_IN, CONV3_WH_IN,
		CONV3_CH_OUT, CONV3_WH_OUT ,
        ADDR_WEIGHTS_CONV3,
		g_mem_a,
		g_mem_b,
		g_mem_c 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0,
		g_weights_scale_3,
		CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_13),
		CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}


	// http://patorjk.com/software/taag/#f=Colossal
	// .d8888b.                                      d8888  
	// d88P  Y88b                                    d8P888  
	// 888    888                                   d8P 888  
	// 888         .d88b.  88888b.  888  888       d8P  888  
	// 888        d88""88b 888 "88b 888  888      d88   888  
	// 888    888 888  888 888  888 Y88  88P      8888888888 
	// Y88b  d88P Y88..88P 888  888  Y8bd8P             888  
	//  "Y8888P"   "Y88P"  888  888   Y88P              888  
	
	// CONV4
	if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_4.weights,
		CONV4_STRIDE, CONV4_WH_KERNEL,
		CONV4_CH_IN, CONV4_WH_IN,
		CONV4_CH_OUT, CONV4_WH_OUT,
        ADDR_WEIGHTS_CONV4,
		g_mem_a,
		g_mem_b,
		g_mem_c 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0,
		g_weights_scale_4,
		CONV4_CH_OUT, CONV4_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_16),
		CONV4_CH_OUT, CONV4_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

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

	if ( net_process_global_pool(0)  != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

                      
#endif /* CNN_NETWORK_T2 */



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
                                                   
	// CONV1 (Weights X Pixels with IM2COL = Feature Map)
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_1.weights,
		CONV1_STRIDE, CONV1_WH_KERNEL,
		CONV1_CH_IN, CONV1_WH_IN,
		CONV1_CH_OUT, CONV1_WH_OUT,
        ADDR_WEIGHTS_CONV1,
		g_mem_a,
		g_mem_b,
		g_mem_c 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0, 
		g_weights_scale_1,
		CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_6),
		CONV1_CH_OUT, CONV1_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

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
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_2.weights,
		CONV2_STRIDE, CONV2_WH_KERNEL,
		CONV2_CH_IN, CONV2_WH_IN,
		CONV2_CH_OUT, CONV2_WH_OUT,
        ADDR_WEIGHTS_CONV2,
		g_mem_a,
		g_mem_b,
		g_mem_c ) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0, 
		g_weights_scale_2,
		CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_9),
		CONV2_CH_OUT, CONV2_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

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
    if ( net_process_layer_pixel_conv_sa(
		0, 0, 
		g_weights_q_3.weights,
		CONV3_STRIDE, CONV3_WH_KERNEL,
		CONV3_CH_IN, CONV3_WH_IN,
		CONV3_CH_OUT, CONV3_WH_OUT,
        ADDR_WEIGHTS_CONV3,
		g_mem_a,
		g_mem_b,
		g_mem_c ) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}
    
	// Weights Q were pre-scaled, so we are reverting it here.
	if ( net_process_layer_mul_in_place(
		0,
		g_weights_scale_3,
		CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

	if ( net_process_layer_relu_and_clamp(
		0, 0,
		min(255,255*g_weights_scale_12),
		CONV3_CH_OUT, CONV3_WH_OUT ) != EXIT_SUCCESS ) 
	{
		return EXIT_FAILURE;
	}

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

	#if CAMPAIGN
	    uint8_t buffer_out[14];
		buffer_out[0] = 0xAA;
		buffer_out[1] = image_index;
		for (i=0; i<POOLING_CH_OUT; i++) {
			    uint16_t val = g_pooling_buffer[i];
    			buffer_out[2 + 2*i]     = val & 0xFF;         // LSB
    			buffer_out[2 + 2*i + 1] = (val >> 8) & 0xFF;  // MSB
		}
		
		put_app_version();
		if (predicted_label == gold_label) {
			putchar('=');
		}
		else {
			putchar('!');
		}
		putchar(' ');


		for (int j = 0; j < 14; j++) {
			printf("0x%02X ", buffer_out[j]);
		}
		printf("\n");

	#else /* ~CAMPAIGN */

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

		//dump_and_zero_stats("Legacy"); //SA function

	#endif

	if (predicted_label != gold_label) {
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
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
    int test_cycle;
	int image_index;
	int image_test_begin = 0;
	int image_test_end = TOTAL_NUM_IMAGES;
	int inference_errors_per_class[POOLING_CH_OUT] = {0};
	int inference_counts_per_class[POOLING_CH_OUT] = {0};
	int inference_errors = 0;
	int inference_count = 0;

	#ifdef SA_ENGINE
    puts("SAT-6 WITH SA_ENGINE");
	#endif
	#ifdef MXM_ENGINE
	puts("SAT-6 WITH MXM_ENGINE");
	#endif

	// Sanity check
	if (TOTAL_NUM_IMAGES!=g_total_num_images) {
		send_status(0, __LINE__);
		goto terminate_failed;
	}
	if ((TOTAL_NUM_IMAGES*IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN)!=g_total_num_pixels) {
		send_status(0, __LINE__);
		goto terminate_failed;
	}

	puts(">");

    /*use to only test image*/
    //image_test_begin = 2;
	//image_test_end = image_test_begin+1;

	#if CAMPAIGN

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

	#else /* ~CAMPAIGN */

		for (test_cycle=0; test_cycle<1; test_cycle++) {
			for (image_index=image_test_begin; image_index<image_test_end; image_index++) {
				inference_count += 1;
				inference_counts_per_class[ g_gold_labels.labels[image_index] ] += 1;
				if (process_image_or_hang(image_index,inference_count) != EXIT_SUCCESS) {
					inference_errors += 1;
					inference_errors_per_class[ g_gold_labels.labels[image_index] ] += 1;
					//goto terminate_failed;
				}

				// if ( (inference_count>0) && ((inference_count%10) == 0 ) )
				// {
				// 	printf("SAT-6 run inferences %d errors %d (acc. %.2f%%)\n\r", inference_count, inference_errors, float(inference_count-inference_errors)/inference_count * 100.0);
				// 	printf("SAT-6 class ");
				// 	for (int i = 0; i < POOLING_CH_OUT; i++)
				// 	{
				// 		printf("%7d", i);
				// 	}
				// 	printf("\r\n");
				// 	printf("SAT-6 tests ");
				// 	for (int i = 0; i < POOLING_CH_OUT; i++)
				// 	{
				// 		printf("%7d", inference_counts_per_class[i]);
				// 	}
				// 	printf("\r\n");
				// 			printf("SAT-6 error ");
				// 	for (int i = 0; i < POOLING_CH_OUT; i++)
				// 	{
				// 		printf("%7d", inference_errors_per_class[i]);
				// 	}
				// 	printf("\r\n");
				// 	printf("SAT-6 accu. ");
				// 	for (int i = 0; i < POOLING_CH_OUT; i++)
				// 	{
				// 		printf("%6.1f%%", float(inference_counts_per_class[i]-inference_errors_per_class[i])/inference_counts_per_class[i]*100.0);
				// 	}
				// 	printf("\r\n");
			
				// }
			}
		}

	#endif


    return EXIT_SUCCESS;

    terminate_failed:
	    puts_fail("SAT-6 failed");
	    return EXIT_FAILURE;
}