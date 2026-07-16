#include <stdio.h>
#include "matrices.h"

// Endereços das matrizes A, B e C
data_a_t a_mtx[P*M];
data_b_t b_mtx[M*Q];
data_c_t c_mtx[P*Q];
data_c_t c_gold_mtx[P*Q];

int main (void){
    matrices_init_a(a_mtx, P, M);
    matrices_init_b(b_mtx, M, Q);
    matrices_init_c(c_mtx, P, Q);
    matrices_init_c(c_gold_mtx, P, Q);

    gold_mxm(a_mtx, b_mtx, c_gold_mtx, P, M, Q);

    mxm_execute_ursa(a_mtx, P, b_mtx, Q, c_mtx, M);

    int pass = compare_mxm(c_mtx, c_gold_mtx, P, Q);
    
    if(pass) 
        printf("[PASS] URSA output matches gold!\n");
    else 
        printf("[FAIL] URSA output not matches gold!\n");

    return 0;
}