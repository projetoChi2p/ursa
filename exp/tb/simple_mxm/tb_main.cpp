
#include <stdio.h>
#include <cstdlib>  
#include "../../src/shell.h"
#include "matrices.h"

//Endereços das matrizes A, B e C
uint8_t g_mem_a[P*M];
int8_t  g_mem_b[M*Q];
int32_t g_mem_c[P*Q];
int32_t g_mem_c_gold[P*Q];

#ifdef LABFT
    bool     tile_done;
    bool     labft_irq;
    uint16_t labft_count;
#endif


int main() 
{
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
        // tile_done,
        // labft_irq,
        labft_count
    );
#else
    uint8_t sa_status = mxm_execute_ursa(
        (int8_t*)g_mem_a,  P,
        (uint8_t*)g_mem_b, Q,
        g_mem_c,           M
    );
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
    if(pass) printf("[PASS] URSA output matches gold!\n");
    else printf("[FAIL] URSA output not matches gold!\n");
	
	return 0;
}