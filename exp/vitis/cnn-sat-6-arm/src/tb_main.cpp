//use for vitis
#include "platform.h"

#include <cstdlib>
#include <stdio.h>

#ifdef VITIS
    #include "ursa.h"
    #include "xparameters.h"
    #include "xil_printf.h"
    #include "xil_cache.h"
#endif

//CNN
#include "cnn_network.h"
#include "cnn_conv_engine.h"
#include "cnn_eval_images.h"


//Endereços das matrizes A, B e C
#ifdef VITIS
weight_t  *g_aw  = (weight_t*) BRAM_AW_BASEADDR;
pixel_t   *g_bi  = (pixel_t*)  BRAM_BI_BASEADDR;
#ifdef LABFT
    int32_t   *g_ca0 = (int32_t*)  BRAM_CA0_BASEADDR;  // URSA_0
    int32_t   *g_ca1 = (int32_t*)  BRAM_CA1_BASEADDR;  // URSA_1
#else
    int32_t   *g_ca = (int32_t*)  BRAM_CA_BASEADDR; 
#endif

#else

//Endereços das matrizes A, B e C
weight_t g_aw[TOTAL_NUM_WEIGHTS];
pixel_t  g_bi[PIXEL_BUFFER_SIZE];
int32_t  g_ca[FEATURE_BUFFER_SIZE];
#endif


int process_image_or_hang(uint16_t image_index, int inference_count)
{
 
#ifdef CAMPAIGN
    //no timer
#else
    #ifdef VITIS
    //start timer
    app_timer_start(0);
    #endif
#endif

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

    #ifdef USE_URSA
        //WEIGTHS
        if(inference_count==1)
        {
            if( populate_aw_with_all_the_weights(g_aw) != EXIT_SUCCESS){
            return EXIT_FAILURE;
        }
        }
    #endif

    #ifdef USE_LINUX
        //WEIGTHS
        if(inference_count==1)
        {
            if( populate_aw_with_all_the_weights(g_aw) != EXIT_SUCCESS){
            return EXIT_FAILURE;
        }
        }
    #endif

#ifdef CNN_NETWORK_T3 //optimized for Ulisses application

	// 88888888888 .d8888b.  
	//     888    d88P  Y88b 
	//     888         .d88P 
	//     888        8888"  
	//     888         "Y8b. 
	//     888    888    888 
	//     888    Y88b  d88P 
	//     888     "Y8888P"  
						


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

    // CONV1 (Weights X Pixels with IM2COL = Feature Map)
    if ( net_process_layer_pixel_conv_sa(
            0, 
            0, 
            g_weights_q_1.weights,
            CONV1_STRIDE, 
            CONV1_WH_KERNEL,
            CONV1_CH_IN, 
            CONV1_WH_IN,
            CONV1_CH_OUT, 
            CONV1_WH_OUT,
            //URSA
            ADDR_WEIGHTS_CONV1,
		    g_aw,
		    g_bi,
            g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            0            
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
    
    if ( net_process_layer_pixel_conv_sa(
            0, 
            0, 
		    g_weights_q_2.weights,
		    CONV2_STRIDE, 
            CONV2_WH_KERNEL,
		    CONV2_CH_IN, 
            CONV2_WH_IN,
		    CONV2_CH_OUT, 
            CONV2_WH_OUT,
            //URSA
            ADDR_WEIGHTS_CONV2,
		    g_aw,
		    g_bi,
		    g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            1           
        ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }
                                                   
    if ( net_process_layer_mul_in_place(
            0, 
            g_weights_scale_2,
            CONV2_CH_OUT, CONV2_WH_OUT 
        ) != EXIT_SUCCESS ) 
    {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_relu_and_clamp(
            0, 0,
            min(255,255*g_weights_scale_9),
            CONV2_CH_OUT, CONV2_WH_OUT  
        ) != EXIT_SUCCESS ) 
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

    if ( net_process_layer_pixel_conv_sa(
            0, 
            0, 
            g_weights_q_3.weights,
            CONV3_STRIDE, 
            CONV3_WH_KERNEL,
            CONV3_CH_IN, 
            CONV3_WH_IN,
            CONV3_CH_OUT, 
            CONV3_WH_OUT,
            //URSA
            ADDR_WEIGHTS_CONV3,
		    g_aw,
		    g_bi,
		    g_ca,
#ifdef VITIS
            &xUrsa0,
#endif
            2  
        ) != EXIT_SUCCESS ) {
        return EXIT_FAILURE;
    }
                                                   
    if ( net_process_layer_mul_in_place(
            0,
            g_weights_scale_3,
            CONV3_CH_OUT, CONV3_WH_OUT 
        ) != EXIT_SUCCESS ) 
    {
        return EXIT_FAILURE;
    }

    if ( net_process_layer_relu_and_clamp(
            0, 0,
            min(255,255*g_weights_scale_12),
            CONV3_CH_OUT, CONV3_WH_OUT 
        ) != EXIT_SUCCESS ) 
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
	// 			

    if ( net_process_global_pool(0)  != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

#endif /* CNN_NETWORK_T3 */

	max_out = GPOOL_MINIMUM;
	predicted_label = 0xFF;
	for (i=0; i<POOLING_CH_OUT; i++) {
		if ( max_out < g_pooling_buffer[i] ) {
			max_out = g_pooling_buffer[i];
			predicted_label = i;
		}
	}

	gold_label = g_gold_labels.labels[image_index];

#ifdef CAMPAIGN
#ifdef LABFT
    uint8_t buffer_idx = 16;
#else
    uint8_t buffer_idx = 14;
#endif
    uint8_t buffer_out[buffer_idx];
    buffer_out[0] = 0xAA;
    buffer_out[1] = image_index;
    
    //2 to 13
    for (i=0; i<POOLING_CH_OUT; i++) {
        //Big Endian
        uint16_t val = g_pooling_buffer[i];
        buffer_out[2 + 2*i]     = (val >> 8) & 0xFF;  // MSB primeiro
        buffer_out[2 + 2*i + 1] = val & 0xFF;         // LSB depois
    }

#ifdef LABFT
    buffer_out[14] = labft_count_0;
    buffer_out[15] = labft_count_1;   
#endif

    for (int k=0; k<buffer_idx; k++) {
        outbyte(buffer_out[k]);
        // printf("0x%02X ", buffer_out[k]);
    }

#else
    #ifdef VITIS
    //end timer
    app_timer_stop(0);
    #endif
    
    //print result
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

#ifdef LABFT
    //labft_count_0
    putchar(' ');
    putchar('a');
    putchar(' ');
    put_signed_short(labft_count_0, 0);
    
    //labft_count_1
    putchar(' ');
    putchar('b');
    putchar(' ');
    put_signed_short(labft_count_1, 0);
#endif

    puts("");

#endif



    return EXIT_SUCCESS;
}


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
#ifdef VITIS

	int xil_status;
#ifdef CAMPAIGN
    //no print
    //cache
    Xil_ICacheDisable();
	Xil_DCacheDisable();
#else
    fprintf(stderr, "\n### CNN Sat-6 T3 ###\n");
#endif
    
    //init
	init_platform();

    //dut
    xil_status = ursa_init(&xUrsa0, XPAR_MXM_EXECUTE_URSA_0_BASEADDR);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

#ifdef LABFT
    xil_status = ursa_init(&xUrsa1, XPAR_MXM_EXECUTE_URSA_1_BASEADDR);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_1 init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }
#endif

    xil_status = ursa_post_reset_setup(&xUrsa0);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_0 setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

#ifdef LABFT
    xil_status = ursa_post_reset_setup(&xUrsa1);
    if (xil_status != XST_SUCCESS) {
        xil_printf("[main] URSA_1 setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }
#endif

#endif //VITIS

    //images loop
    int test_cycle;
	int image_index;
	int image_test_begin = 0;
	int image_test_end = TOTAL_NUM_IMAGES;
	int inference_errors_per_class[POOLING_CH_OUT] = {0};
	int inference_counts_per_class[POOLING_CH_OUT] = {0};
	int inference_errors = 0;
	int inference_count = 0;

    // Sanity check
	if (TOTAL_NUM_IMAGES!=g_total_num_images) 
    {
	    send_status(0, __LINE__);
		goto terminate_failed;
	}

	if ((TOTAL_NUM_IMAGES*IMAGE_SZ_IN*IMAGE_SZ_IN*IMAGE_CH_IN)!=g_total_num_pixels) 
    {
		send_status(0, __LINE__);
		goto terminate_failed;
	}

    // //use to only test image
    // image_test_begin = 2;
    // image_test_end = image_test_begin+1;

    #ifdef CAMPAIGN
        outbyte(0XAA);

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
    #else
        #ifdef VITIS
        //timer
        app_timer_init(); 
        #endif

        for (test_cycle=0; test_cycle<1; test_cycle++) 
        {
            for (image_index=image_test_begin; image_index<image_test_end; image_index++) 
            {
                inference_count += 1;
                inference_counts_per_class[ g_gold_labels.labels[image_index] ] += 1;
                if (process_image_or_hang(image_index, inference_count) != EXIT_SUCCESS) 
                {
                    inference_errors += 1;
                    inference_errors_per_class[ g_gold_labels.labels[image_index] ] += 1;
                    goto terminate_failed;
                }
            }
        }

        #ifdef VITIS
        xil_printf("\r\nTotal Time: %lu[us]\r\n",(unsigned long)app_timer_total_us(0));
        xil_printf("Total Tickes: %lu\r\n\r\n",(unsigned long)app_timer_total_ticks(0));
        #endif

    #endif
        

    #ifdef VITIS
	/* never reached */
	cleanup_platform();
    #endif

	return EXIT_SUCCESS;

    terminate_failed:
        fprintf(stderr, "### SAT-6 failed ###\n");
	    return EXIT_FAILURE;
}
