/* Checks mxm_multiply against a CPU reference over a set of shapes.
 * Uses only mxm.h, so one binary runs with any libmxm.so.1:
 *   sudo LD_LIBRARY_PATH=build/sa16 ./test_mxm [design.bit.bin [MHz]]
 *   LD_LIBRARY_PATH=build/sim-sa8   ./test_mxm      (host, software model)
 * Operands are small (|A| <= 4, B <= 15) so no 20-bit accumulator wraps
 * inside one chunk of at most 256 steps (256*4*15 < 2^19). */
#define _POSIX_C_SOURCE 200809L

#include "mxm.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static double now_us(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec * 1e6 + ts.tv_nsec / 1e3;
}

static void ref_gemm(int P, int Q, int M, const int8_t *A, const uint8_t *B, int32_t *C)
{
    for (int i = 0; i < P; i++)
        for (int j = 0; j < Q; j++) {
            int32_t acc = 0;
            for (int k = 0; k < M; k++) acc += (int32_t)A[i * M + k] * (int32_t)B[k * Q + j];
            C[i * Q + j] = acc;
        }
}

int main(int argc, char **argv)
{
    const char *bitstream = (argc > 1) ? argv[1] : NULL;
    const double mhz      = (argc > 2) ? atof(argv[2]) : 0.0;

    printf("backend: %s\n", mxm_backend());
    setenv("URSA_DEBUG", "1", 0);   /* URSA backend: print the FCLK0 setting */

    mxm_ctx_t *ctx = mxm_init(bitstream, mhz);
    if (!ctx) { fprintf(stderr, "mxm_init failed: %s\n", strerror(errno)); return 1; }

    static const int shapes[][3] = {   /* P, Q, M */
        {   8,   8,    1 }, {   8,   8,   16 }, {   8,   8,  256 },
        {  16,  32,   64 }, {  64,  64,  144 },
        {   5,   7,    3 }, {  13,  29,   77 },   /* not multiples of the array */
        {  32,  32,  300 }, {  24,  40, 1000 },   /* M > 256: chunked */
        { 128, 200,  288 }, { 100, 513,  200 },   /* larger than the windows */
    };
    const int n_shapes = (int)(sizeof(shapes) / sizeof(shapes[0]));

    srand(1234);
    int fails = 0;
    printf("%6s %6s %6s  %10s  %s\n", "P", "Q", "M", "us", "result");
    for (int s = 0; s < n_shapes; s++) {
        const int P = shapes[s][0], Q = shapes[s][1], M = shapes[s][2];
        int8_t  *A  = malloc((size_t)P * M);
        uint8_t *B  = malloc((size_t)M * Q);
        int32_t *C  = malloc((size_t)P * Q * sizeof(int32_t));
        int32_t *Cr = malloc((size_t)P * Q * sizeof(int32_t));
        for (int i = 0; i < P * M; i++) A[i] = (int8_t)(rand() % 9 - 4);
        for (int i = 0; i < M * Q; i++) B[i] = (uint8_t)(rand() % 16);
        memset(C, 0x5A, (size_t)P * Q * sizeof(int32_t));

        ref_gemm(P, Q, M, A, B, Cr);
        const double t0 = now_us();
        const int st = mxm_multiply(ctx, P, Q, M, A, M, B, Q, C, Q);
        const double t1 = now_us();

        int bad = 0;
        for (int i = 0; i < P * Q && !st; i++) bad += (C[i] != Cr[i]);
        const int ok = (st == 0 && bad == 0);
        fails += !ok;
        printf("%6d %6d %6d  %10.1f  %s", P, Q, M, t1 - t0, ok ? "PASS" : "FAIL");
        if (st) printf(" (status %d)", st);
        else if (bad) printf(" (%d mismatches)", bad);
        printf("\n");

        free(A); free(B); free(C); free(Cr);
    }

    mxm_destroy(ctx);
    printf("%s: %d/%d shapes failed\n", fails ? "FAILED" : "OK", fails, n_shapes);
    return fails ? 1 : 0;
}
