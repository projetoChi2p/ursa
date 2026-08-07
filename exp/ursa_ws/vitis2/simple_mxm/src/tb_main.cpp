// use for vitis
#include "platform.h"

#include <stdio.h>
#include <cstdlib>  
#include <xil_printf.h>
#include <xil_types.h>
#include <xstatus.h>
#include <xiltimer.h>

#include "settings.h"
#include "matrices.h"
#include "timer.h"
#include "ursa_math.h"
#include "ursa.h"


// A, B and C addresses
pixel_t *g_mem_a = (pixel_t*) BRAM_AW_BASEADDR;
weight_t *g_mem_b = (weight_t*) BRAM_BI_BASEADDR;
int32_t *g_mem_c = (int32_t*) BRAM_CA_BASEADDR;

// ARM CPU will calculate the correct anwer in software and store in this array
int32_t g_mem_c_gold[P*Q];

// time variables
XTime start_time, end_time;

#ifdef LABFT
    // bool     labft_irq;
    uint16_t labft_count;
#endif


int main() 
{   
    // status
    int xil_status;

    // init
    init_platform();

    app_timer_init();

    // ursa init
    xil_status = ursa_init(&xUrsa0, URSA_0_AP_BASEADDR);
    if (xil_status != XST_SUCCESS){
        xil_printf("[main] URSA_0 init failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

    // post reset setup
    xil_status = ursa_post_reset_setup(&xUrsa0);
    if (xil_status != XST_SUCCESS){
        xil_printf("[main] URSA_0 setup failed 0x%08x. Abort.\n\r", xil_status);
        return xil_status;
    }

	init_matrix_a(g_mem_a, P, M);
    init_matrix_b(g_mem_b, M, Q);
	gold_mxm(g_mem_a, g_mem_b, g_mem_c_gold, P, M, Q);

#ifdef DEBUG
    printf("=== Input Matrices ===\n");
    print_matrix_a(g_mem_a, P, M);
    print_matrix_b(g_mem_b, M, Q);
    
    printf("=== Gold Result ===\n");
   	print_matrix_c(g_mem_c_gold, P, Q);
#endif

#ifdef LABFT
    uint8_t sa_status = mxm_execute_ursa(
        (int8_t*)g_mem_a,  P,
        (uint8_t*)g_mem_b, Q,
        g_mem_c,           M,
        // labft_irq,
        labft_count
    );
#else
    // start timer
    app_timer_start(0);

    // implementar tiling aqui!

    // MxM execute
    uint8_t sa_status = mxm_execute_ursa(
        &xUrsa0,
        P, Q, M,
        (UINTPTR) g_mem_a, (UINTPTR) g_mem_b, (UINTPTR) g_mem_c
    );

    // stop the timer
    app_timer_stop(0);
#endif
	
#ifdef LABFT
    if (sa_status != SA_SUCCESS)
    {
        if (sa_status == SA_LABFT_ERROR)
        {
            uint16_t total_tiles = (P / SA_SIZE) * (Q / SA_SIZE);
            printf("[LABFT ERROR] %d de %d tiles com erro detectado (%.1f%%)\n",
                   labft_count, total_tiles,
                   100.0f * labft_count / total_tiles);
        }
        else
        {
            printf("[ERROR] mxm_execute_ursa falhou!\n");
            return EXIT_FAILURE;
        }
    }
    else
    {
        printf("[LABFT] Nenhum erro detectado em nenhum tile.\n");
    }
#endif

#ifdef DEBUG
    printf("=== URSA Result ===\n");
    print_matrix_c(g_mem_c, P, Q);
#endif
    
    int pass=0;
	pass=compare_mxm(g_mem_c, g_mem_c_gold, P, Q);
    
    printf("SA_SIZE = %d\n", SA_SIZE);

    if(pass)  {
        printf("[PASS] URSA output matches gold!\n");
        printf("URSA Execution Time: %lu [us]\n\n", (unsigned long)app_timer_total_us(0)); 
    }
    else 
        printf("[FAIL] URSA output not matches gold!\n\n");

	
    cleanup_platform();
	return 0;
}