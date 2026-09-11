#include "matrices.h"

void init_matrix_a(int8_t *a, int rows, int cols)
{
    int x = 1;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            a[i * cols + j] = (int8_t)x;
            x++;
            if (x == 10) x = 1;
        }
    }
}

void init_matrix_b(uint8_t *b, int rows, int cols)
{
    int x = 9;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            b[i * cols + j] = (uint8_t)x;
            x--;
            if (x == 0) x = 9;
        }
    }
}

void print_matrix_a(const int8_t *a, int rows, int cols)
{
    printf("Matrix A (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", a[i * cols + j]);
        printf("\n");
    }
}

void print_matrix_b(const uint8_t *b, int rows, int cols)
{
    printf("Matrix B (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%4d ", b[i * cols + j]);
        printf("\n");
    }
}

/* Reference product.
 *
 * The accumulator is truncated to ACC_BITS at every step, the way the ap_int
 * in the PE wraps. C simulation of the design itself does not do this: the
 * #else branch of settings.h uses a native int32_t, because AP_FIXED is only
 * set under __SYNTHESIS__. Doing it here means a shape that overflows in
 * hardware also overflows in the reference, instead of failing as a mismatch
 * whose cause is not obvious.
 */
void gold_mxm(const int8_t *a, const uint8_t *b, int32_t *c, int p, int m, int q)
{
    const int shift = 32 - ACC_BITS;

    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            int32_t acc = 0;
            for (int k = 0; k < m; k++) {
                acc += (int32_t)a[i * m + k] * (int32_t)b[k * q + j];
                acc = (int32_t)(((uint32_t)acc << shift)) >> shift;
            }
            c[i * q + j] = acc;
        }
    }
}

void print_matrix_c(const int32_t *c, int rows, int cols)
{
    printf("Matrix C (%dx%d):\n", rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++)
            printf("%6d ", c[i * cols + j]);
        printf("\n");
    }
}

int compare_mxm(const int32_t *c, const int32_t *c_gold, int p, int q)
{
    int pass = 1;
    for (int i = 0; i < p * q; i++) {
        if (c[i] != c_gold[i]) {
            if (pass) {
                printf("[FAIL] first mismatch at (%d,%d): got %d, expected %d\n",
                       i / q, i % q, c[i], c_gold[i]);
            }
            pass = 0;
        }
    }
    return pass;
}