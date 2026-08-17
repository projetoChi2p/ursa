
#include <stdio.h>
#include <cstdlib>  

#include "../../src/settings.h"
#include "matrices.h"

//Endereços das matrizes A, B e C
uint8_t g_mem_a[P*M];
int8_t  g_mem_b[M*Q];
int32_t g_mem_c[P*Q];
int32_t g_mem_c_gold[P*Q];

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

    uint8_t sa_status = mxm_execute_ursa(
        (int8_t*)g_mem_a,  P,
        (uint8_t*)g_mem_b, Q,
        g_mem_c,           M
    );

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