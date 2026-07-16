#include "matrices.h"

void matrices_init_a(data_a_t *a, int rows, int cols){
    int x=1;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            a[i * cols + j] = x;
            x++;
            if(x==10) x=1;
        }
    }
}

void matrices_init_b(data_b_t *b, int rows, int cols){
    int x=9;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            b[i * cols + j] = x;
            x--;
            if(x==0) x=9;
        }
    }
}

void matrices_init_c(data_c_t *c, int rows, int cols){
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            c[i * cols + j] = 0;
        }
    }
}

void matrices_print_a(data_a_t *a, int rows, int cols){
    printf("Matrix LR(%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", a[i * cols + j]);
        printf("\n");
    }
}

void matrices_print_b(data_b_t *b, int rows, int cols){
    printf("Matrix TB (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", b[i * cols + j]);
        printf("\n");
    }
}

void matrices_print_c(data_c_t *c, int rows, int cols){
    printf("Matrix TB (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", c[i * cols + j]);
        printf("\n");
    }
}

void gold_mxm(data_a_t *a, data_b_t *b, data_c_t *c, int p, int m, int q){
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            c[i * q + j] = 0;
            for (int k = 0; k < m; k++) {
                c[i * q + j] += (int32_t)a[i * m + k] * (int32_t)b[k * q + j];
            }
        }
    }
}

int compare_mxm(data_c_t *c, data_c_t *c_gold, int p, int q)
{
    int pass = 1;
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            int idx = i * q + j;
            if (c[idx] != c_gold[idx]) 
            {
                pass = 0;
                printf("[FAIL] c[%d][%d]: got %d, expected %d\n", i, j, c[idx], c_gold[idx]);
            }
        }
    }

    return pass;
}