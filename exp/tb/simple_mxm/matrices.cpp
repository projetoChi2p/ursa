#include "matrices.h"

void init_matrix_a(uint8_t *a, int rows, int cols) 
{
    int x=1;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            // a[i * cols + j] = (uint8_t)(i * cols + j + 1);
            a[i * cols + j] = x;
            x++;
            if(x==10) x=1;
        }
    }
}

void init_matrix_b(int8_t *b, int rows, int cols) 
{
    int x=9;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            // b[i * cols + j] = (int8_t)(i * cols + j + 5);
            b[i * cols + j] = x;
            x--;
            if(x==0) x=9;
        }
    }
}

void print_matrix_a(uint8_t *a, int rows, int cols) 
{
    printf("Matrix A (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", a[i * cols + j]);
        printf("\n");
    }
}

void print_matrix_b(int8_t *b, int rows, int cols) 
{
    printf("Matrix B (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", b[i * cols + j]);
        printf("\n");
    }
}

void gold_mxm(uint8_t *a, int8_t *b, int32_t *c, int p, int m, int q)
{
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            c[i * q + j] = 0;
            for (int k = 0; k < m; k++) {
                c[i * q + j] += (int32_t)a[i * m + k] * (int32_t)b[k * q + j];
            }
        }
    }
}

void print_matrix_c(int32_t *c, int rows, int cols)
{
    printf("Matrix C (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%6d ", c[i * cols + j]);
        printf("\n");
    }
}

int compare_mxm(int32_t *c, int32_t *c_gold, int p, int q)
{
    int pass = 1;
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            int idx = i * q + j;
            if (c[idx] != c_gold[idx]) 
            {
#ifdef DEBUG
                printf("[FAIL] c[%d][%d]: got %d, expected %d\n", 
                        i, j, c[idx], c_gold[idx]);
#endif
                pass = 0;
            }
        }
    }
    if (pass)
    {
#ifdef DEBUG
        printf("[PASS] URSA output matches gold!\n");
#endif
    }

    return pass;
}