// ----------------------------------------------------------------------------
// Copyright (c) 2020-2025 RVX contributors
//
// This work is licensed under the MIT License, see LICENSE file for details.
// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------

extern "C" {
  #include "libsteel.h"
  #include "core_portme.h"
  #include "xmxm_execute_ursa.h"
}

#include "cnn_conv_engine.h"
#include "cnn_network.h"
#include "cnn_eval_images.h"

#define DEFAULT_UART (UartController *)0x80000000
#define DEFAULT_MTIMER (MTimerController *)0x80010000
#define DEFAULT_GPIO (GpioController *)0x80020000

XMxm_execute_ursa g_xMxm;

weight_t *g_aw = (weight_t*) BRAM_AW_BASEADDR;
pixel_t  *g_bi = (pixel_t*)  BRAM_BI_BASEADDR;
macc_t  *g_ca = (int32_t*)  BRAM_CA_BASEADDR;

#ifndef min
#define min(a,b) \
({ __typeof__ (a) _a = (a); \
	__typeof__ (b) _b = (b); \
  _a < _b ? _a : _b; })
#endif

//1nop ~ 25ns @40MHz
void nop_sleep(u16 nops){
  for (volatile u16 i=0; i<nops; i++){
    asm volatile("nop");
  }
}

void test_nops() {
    mtimer_enable(DEFAULT_MTIMER);

    uint64_t t0 = mtimer_get_counter(DEFAULT_MTIMER);

    // 10 NOPs
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");
    asm volatile("nop");

    uint64_t t1 = mtimer_get_counter(DEFAULT_MTIMER);

    unsigned long t0_hi = (unsigned long)(t0 >> 32);
    unsigned long t0_lo = (unsigned long)(t0 & 0xFFFFFFFFUL);

    unsigned long t1_hi = (unsigned long)(t1 >> 32);
    unsigned long t1_lo = (unsigned long)(t1 & 0xFFFFFFFFUL);

    printf("[ursa_test] t0: %08lx%08lx | t1: %08lx%08lx | Δ = %lu ciclos\n\r",
           t0_hi, t0_lo, t1_hi, t1_lo, (unsigned long)(t1 - t0));
}

void measure_nop_time() {
    const uint32_t clk_freq_hz = 40000000; // 40 MHz

    mtimer_enable(DEFAULT_MTIMER);

    // mede 1000 nops
    uint64_t t0 = mtimer_get_counter(DEFAULT_MTIMER);

    for (volatile int i = 0; i < 1000; i++) {
        asm volatile("nop");
    }

    uint64_t t1 = mtimer_get_counter(DEFAULT_MTIMER);
    uint64_t diff_cycles = t1 - t0;

    // tempo por nop em ns
    uint64_t ns_per_nop = (diff_cycles * 1000000000ULL) / (clk_freq_hz * 1000ULL);

    printf("[ursa_test] Δ = %lu ciclos | ≈ %lu ns/nop @40MHz\n\r",
           (unsigned long)diff_cycles,
           (unsigned long)ns_per_nop);
}

void measure_empty_loop() {
    const uint32_t clk_freq_hz = 40000000; // 40 MHz

    mtimer_enable(DEFAULT_MTIMER);

    // mede 1000 iterações sem nop
    uint64_t t0 = mtimer_get_counter(DEFAULT_MTIMER);

    for (volatile int i = 0; i < 1000; i++) {
        // nada
    }

    uint64_t t1 = mtimer_get_counter(DEFAULT_MTIMER);
    uint64_t diff_cycles = t1 - t0;

    // tempo médio por iteração em ns
    uint64_t ns_per_iter = (diff_cycles * 1000000000ULL) / (clk_freq_hz * 1000ULL);

    printf("[ursa_test] Δ = %lu ciclos | ≈ %lu ns/iter (loop vazio @40MHz)\n\r",
           (unsigned long)diff_cycles,
           (unsigned long)ns_per_iter);
}


int ursa_test(){
  u32 i,j;
  weight_t k_a = 0;
  pixel_t  k_b = 9;

  //INPUT WEIGHTS (A)
  for(i=0;i<SA_SIZE;i++) {
      for(j=0;j<SA_SIZE;j++) {
        g_aw[i*SA_SIZE + j] = k_a;
        k_a++;
        if (k_a == 10) k_a = 0;
      }
  }
  printf("[ursa_test] Filled AW.\n\r");

  //INPUT PIXELS (B)
  for(i=0;i<SA_SIZE;i++) {
      for(j=0;j<SA_SIZE;j++) {
        g_bi[i*SA_SIZE + j] = k_b;
        if (k_b == 0) k_b = 9;
        else k_b--;
      }
  }
  printf("[ursa_test] Filled BI.\n\r");

  //MXM_EXECUTE_URSA
  uint32_t p = 8; 
  uint32_t q = 8; 
  uint32_t m = 8;
  uint32_t addr_a = BRAM_AW_BASEADDR; 
  uint32_t addr_b = BRAM_BI_BASEADDR; 
  uint32_t addr_c = BRAM_CA_BASEADDR;

  int k;

  k = TIMEOUT_STEPS_FOR_REGS;
  while ( ( XMxm_execute_ursa_IsIdle(&g_xMxm) == 0 ) && ( k != 0 ) ) {
      // usleep(TIMEOUT_USLEEP);
      nop_sleep(10);
      k -= 1;
  }

  XMxm_execute_ursa_Set_a0_p(&g_xMxm, p);
  XMxm_execute_ursa_Set_b0_q(&g_xMxm, q);
  XMxm_execute_ursa_Set_m(&g_xMxm, m);
  
  XMxm_execute_ursa_Set_addr_a0(&g_xMxm, addr_a);
  XMxm_execute_ursa_Set_addr_b0(&g_xMxm, addr_b);
  XMxm_execute_ursa_Set_addr_c0(&g_xMxm, addr_c);

  // start the accelerator
	XMxm_execute_ursa_Start(&g_xMxm);

	k = TIMEOUT_STEPS_FOR_OPS*(p*q*m);

	while ( (XMxm_execute_ursa_IsDone(&g_xMxm) == 0 ) && ( k != 0 ) ){
		// usleep(TIMEOUT_USLEEP);
    nop_sleep(10);
		k -= 1;
	}
	if (k==0) {
		return ERROR_TIMEOUT+__LINE__;
	}

  // u32 u32Return = XMxm_execute_ursa_Get_return(&g_xMxm);

  k = TIMEOUT_STEPS_FOR_OPS;
	while ( (XMxm_execute_ursa_IsIdle(&g_xMxm) == 0 ) && ( k != 0 ) ){
		// usleep(TIMEOUT_USLEEP);
    nop_sleep(10);
		k -= 1;
	}
	if (k==0) {
		return ERROR_TIMEOUT+__LINE__;
	}

  //OUTPUT (C)
  for (i=0;i<p;i++) {
    for(j=0;j<q;j++) {
        printf("%lx ",g_ca[i*q+j]);
    }
    printf("\n\r");
  }


  return XST_SUCCESS;
}



// ⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⢰⣿⡿⠗⠀⠠⠄⡀⠀⠀⠀⠀
// ⠀⠀⠀⠀⡜⠁⠀⠀⠀⠀⠀⠈⠑⢶⣶⡄
// ⢀⣶⣦⣸⠀⢼⣟⡇⠀⠀⢀⣀⠀⠘⡿⠃
// ⠀⢿⣿⣿⣄⠒⠀⠠⢶⡂⢫⣿⢇⢀⠃⠀
// ⠀⠈⠻⣿⣿⣿⣶⣤⣀⣀⣀⣂⡠⠊⠀⠀
// ⠀⠀⠀⠃⠀⠀⠉⠙⠛⠿⣿⣿⣧⠀⠀⠀
// ⠀⠀⠘⡀⠀⠀⠀⠀⠀⠀⠘⣿⣿⡇⠀⠀
// ⠀⠀⠀⣷⣄⡀⠀⠀⠀⢀⣴⡟⠿⠃⠀⠀
// ⠀⠀⠀⢻⣿⣿⠉⠉⢹⣿⣿⠁⠀⠀⠀⠀
// ⠀⠀⠀⠀⠉⠁⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀
// URSA (UFRGS Reconfigurable Systolic Array)

int ursa_init(){
  int rvx_status;

  XMxm_execute_ursa_Config *xMxmConfigPtr;
  XMxm_execute_ursa_Config xMxmConfig; //gambi

  xMxmConfigPtr = XMxm_execute_ursa_LookupConfig(XPAR_MXM_EXECUTE_URSA_0_BASEADDR);

  if (xMxmConfigPtr == NULL) {
    printf("[init] MXM CONTROL not found.\n\r");
    return XST_DEVICE_NOT_FOUND;
  }else{
    printf("[init] MXM CONTROL FOUND:\n\r");
    printf("[init] AP CONTROL  0x%08lx\n\r", xMxmConfigPtr->Ap_BaseAddress);
    printf("[init] MEM CONTROL 0x%08lx\n\r", xMxmConfigPtr->Control_BaseAddress);
  }

  xMxmConfig.Ap_BaseAddress = xMxmConfigPtr->Control_BaseAddress; //gambi
  xMxmConfig.Control_BaseAddress = xMxmConfigPtr->Ap_BaseAddress; //gambi
  printf("[init] Inverts AP/CONTROL:\n\r");

  rvx_status = XMxm_execute_ursa_CfgInitialize(&g_xMxm, &xMxmConfig); //gambi
  if (rvx_status != XST_SUCCESS)
  {
      printf("[init] MXM NL Init failed: %d.\n\r", rvx_status);
      return rvx_status;
  }

  return XST_SUCCESS;
}

int ursa_post_reset_setup(){

	XMxm_execute_ursa_InterruptGlobalDisable(&g_xMxm);
	XMxm_execute_ursa_InterruptDisable(&g_xMxm, 3);
	XMxm_execute_ursa_DisableAutoRestart(&g_xMxm);

  return XST_SUCCESS;    
}

/************************************************/
/************ CNN *******************************/
/************************************************/

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
	if(inference_count==0){
		if( populate_aw_with_all_the_weights(g_aw) != EXIT_SUCCESS){
			return EXIT_FAILURE;
		}
	}

  //printf("[input] ok...\n\r");

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
		g_aw,
		g_bi,
		g_ca,
    &g_xMxm,
    0 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	#if USE_TAB_QUANT
	    if ( net_process_layer_relu_and_clamp_table(
            0, 0,
            max_value_tab_1,
            (int32_t)255,
            CONV1_CH_OUT, CONV1_WH_OUT,
			&weigths_tab_result_1	 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }

	#else
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

	#endif /*USE_TAB_QUANT*/


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
		g_aw,
		g_bi,
		g_ca,
    &g_xMxm,
    0 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	#if USE_TAB_QUANT
        if ( net_process_layer_relu_and_clamp_table(
            0, 0,
            max_value_tab_2,
            (int32_t)255,
            CONV2_CH_OUT, CONV2_WH_OUT,
		    &weigths_tab_result_2 
        ) != EXIT_SUCCESS ){
            return EXIT_FAILURE;
        }
	#else
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

	#endif /*USE_TAB_QUANT*/

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
		g_aw,
		g_bi,
		g_ca,
    &g_xMxm,
    0  
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	#if USE_TAB_QUANT
		if ( net_process_layer_relu_and_clamp_table(
		    0, 0,
		    max_value_tab_3,
		    (int32_t)255,
		    CONV3_CH_OUT, CONV3_WH_OUT,
			&weigths_tab_result_3  
		) != EXIT_SUCCESS ){
		    return EXIT_FAILURE;
		}
	#else
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
	#endif /*USE_TAB_QUANT*/


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
		g_aw,
		g_bi,
		g_ca,
    &g_xMxm,
    0 
	) != EXIT_SUCCESS ) {
		return EXIT_FAILURE;
	}

	#if USE_TAB_QUANT
		if ( net_process_layer_relu_and_clamp_table(
		    0, 0,
		    max_value_tab_4,
		    (int32_t)255,
		    CONV4_CH_OUT, CONV4_WH_OUT,
			&weigths_tab_result_4  
		) != EXIT_SUCCESS ){
		    return EXIT_FAILURE;
		}
	#else
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

	#endif /*USE_TAB_QUANT*/

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

	#if USE_TAB_QUANT 

	#else
		if ( net_process_global_pool(0)  != EXIT_SUCCESS ) {
			return EXIT_FAILURE;
		}
	#endif /*USE_TAB_QUANT*/

	max_out = GPOOL_MINIMUM;
		predicted_label = 0xFF;
		for (i=0; i<POOLING_CH_OUT; i++) {
			if ( max_out < g_pooling_buffer[i] ) {
				max_out = g_pooling_buffer[i];
				predicted_label = i;
			}
		}

		gold_label = g_gold_labels.labels[image_index];

	if (predicted_label == gold_label) {
		printf("[%d] Correct\n\r",inference_count);
	}
	else {
		printf("[%d] Error\n\r",inference_count);
	}

	return XST_SUCCESS;
}

int main(){
	int rvx_status;

	uart_write_string(DEFAULT_UART, "URSA driver implementation v2 25_09\r\n");

	printf("[probe] 0x40000000 = 0x%08lx\n\r", (unsigned long)*(volatile uint32_t *)0x40000000);
	printf("[probe] 0x40010000 = 0x%08lx\n\r", (unsigned long)*(volatile uint32_t *)0x40010000);

	//1
	rvx_status = ursa_init();
	if (rvx_status != XST_SUCCESS) {
		printf("[main] URSA init failed 0x%08x. Abort.\n\r", rvx_status);
		return rvx_status;
	}

	//2
	rvx_status = ursa_post_reset_setup();
	if (rvx_status != XST_SUCCESS) {
		printf("[main] URSA setup failed 0x%08x. Abort.\n\r", rvx_status);
		return rvx_status;
	}

	// printf(">\n\r");
	// process_image_or_hang(0, 0);
	// process_image_or_hang(1, 1);
	// process_image_or_hang(2, 3);

	//3
	rvx_status = ursa_test();
	if (rvx_status != XST_SUCCESS) {
		printf("[main] URSA test failed 0x%08x. Abort.\n\r", rvx_status);
		return rvx_status;
	}
	

	printf("Two inferences for testing\n\r");
	process_image_or_hang(0, 0);
	process_image_or_hang(1, 1);
	
  	// CNN processing test
	// int image_index=0;
	// int inference_count = 0;
	// inference_count += 1;

	// for (int round = 0; round < 3; round++) {
	// 	printf("=== ROUND %d ===\n\r", round+1);
	// 	printf("Processing images...\n\r");
	// 	// CNN por ~5s
	// 	for (int i = 0; i < 59; i++) {
	// 			process_image_or_hang(image_index, inference_count);
	// 			inference_count++;
	// 	}
	// 	inference_count = 1;

	// 	printf("Waiting...\n\r");
	// 	// NOP por ~5s
	// 	uint32_t total_nops = 66666666;
	// 	while (total_nops--) {
	// 			asm volatile("nop");
	// 	}
	// }


	/*
	const uint32_t clk_freq_hz = 40000000; // 40 MHz
  	mtimer_enable(DEFAULT_MTIMER);
  	uint64_t t0 = mtimer_get_counter(DEFAULT_MTIMER);

	process_image_or_hang(image_index,inference_count);

	uint64_t t1 = mtimer_get_counter(DEFAULT_MTIMER);
  	uint64_t diff_cycles = t1 - t0;
	uint64_t ns_per_func = (diff_cycles * 1000000000ULL) / (clk_freq_hz * 1000ULL);

    printf("[ursa_test] Δ = %lu ciclos | ≈ %lu ns/func @40MHz\n\r",
           (unsigned long)diff_cycles,
           (unsigned long)ns_per_func);
	*/

  return EXIT_SUCCESS;
}