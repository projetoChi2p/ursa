#include <stdio.h>
#include <cstdlib>

#include "../../hls_src/settings.h"
#include "matrices.h"

/* A, B and C. Types match data_a_t, data_b_t and data_c_t in settings.h, so
 * no casts are needed at the call site and a signedness mistake would be a
 * compile error rather than a wrong result.
 */
// int8_t   g_mem_a[P * M];
// uint8_t  g_mem_b[M * Q];
// int32_t  g_mem_c[P * Q];
// int32_t  g_mem_c_gold[P * Q];
int8_t   g_mem_a[MEM_DEPTH];
uint8_t  g_mem_b[MEM_DEPTH];
int32_t  g_mem_c[MEM_DEPTH];
int32_t  g_mem_c_gold[MEM_DEPTH];


int main()
{
    /* Shape and geometry, printed so a cosimulation log says which
       configuration produced it. */
    printf("=== URSA testbench ===\n");
    printf("SA_SIZE=%d  ACC_BITS=%d\n", SA_SIZE, ACC_BITS);
    printf("P=%d  Q=%d  M=%d\n", P, Q, M);
    printf("tiles=%d  k iterations per tile=%d\n",
           (P / SA_SIZE) * (Q / SA_SIZE), M + 2 * SA_SIZE - 2);

    if ((P % SA_SIZE) != 0 || (Q % SA_SIZE) != 0) {
        printf("[FAIL] P and Q must be multiples of SA_SIZE=%d\n", SA_SIZE);
        return 1;
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

    uint8_t sa_status = mxm_execute_ursa(g_mem_a, P,
                                         g_mem_b, Q,
                                         g_mem_c, M);

#ifdef DEBUG
    printf("=== URSA Result ===\n");
    print_matrix_c(g_mem_c, P, Q);
#endif

    if (sa_status != SA_SUCCESS) {
        printf("[FAIL] URSA returned status %u\n", (unsigned)sa_status);
        return 1;
    }

    if (compare_mxm(g_mem_c, g_mem_c_gold, P, Q)) {
        printf("[PASS] URSA output matches gold\n");
        return 0;
    }

    printf("[FAIL] URSA output does not match gold\n");
    return 1;
}