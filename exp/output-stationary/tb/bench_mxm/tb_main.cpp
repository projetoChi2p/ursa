// /* URSA testbench driven by the generated benchmark suite.
//  *
//  * Runs every case through mxm_execute_ursa and compares against the golden
//  * checksum. On a mismatch it also locates the first differing element, which
//  * the checksum alone cannot do.
//  *
//  * Element types come from the benchmark header and must mirror settings.h:
//  * A is int8_t (data_a_t), B is uint8_t (data_b_t), C is int32_t (data_c_t).
//  *
//  * Cases whose P or Q is not a multiple of SA_SIZE are skipped: the shell
//  * computes call_a = a0_p/SA_SIZE and call_b = b0_q/SA_SIZE with integer
//  * division, so the remainder would simply not be computed.
//  *
//  * Written in plain C style, compiled as C++.
//  * 
//  * UM (16/08/2026): Written by claude.ai and validated for Ulisses Maffazioli
//  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "../../src/settings.h"
#include "ursa_bench.h"

/* Reference GEMM, used only to locate the first mismatch. The accumulator
 * wraps at BENCH_ACC_BITS to mirror the PE. */
static inline int32_t acc_wrap(int32_t v)
{
#if BENCH_ACC_BITS >= 32
    return v;
#else
    const int32_t half = (int32_t)1 << (BENCH_ACC_BITS - 1);
    const int32_t mod  = (int32_t)1 << BENCH_ACC_BITS;
    int32_t r = (v + half) % mod;
    if (r < 0) r += mod;
    return r - half;
#endif
}

static void gemm_ref(const bench_a_t *A, const bench_b_t *B, bench_c_t *C,
                     uint32_t p, uint32_t q, uint32_t m)
{
    uint32_t i, j, k;
    for (i = 0; i < p; ++i) {
        for (j = 0; j < q; ++j) {
            int32_t acc = 0;
            for (k = 0; k < m; ++k) {
                acc = acc_wrap(acc + (int32_t)A[i * m + k] * (int32_t)B[k * q + j]);
            }
            C[i * q + j] = (bench_c_t)acc;
        }
    }
}

/* Report the first differing element. The tile coordinates tell which pass of
 * the shell loop produced it, and (i,j) within the tile points at the PE. */
static void locate_mismatch(const bench_c_t *got, const bench_c_t *want,
                            uint32_t p, uint32_t q)
{
    uint32_t i, j, n = 0;
    for (i = 0; i < p; ++i) {
        for (j = 0; j < q; ++j) {
            uint32_t idx = i * q + j;
            if (got[idx] != want[idx]) {
                if (n == 0) {
                    printf("    first diff at C[%u][%u]: got %d, expected %d\n",
                           i, j, (int)got[idx], (int)want[idx]);
                    printf("    tile (%u,%u), PE (%u,%u) inside the tile\n",
                           i / SA_SIZE, j / SA_SIZE,
                           i % SA_SIZE, j % SA_SIZE);
                }
                ++n;
            }
        }
    }
    printf("    %u of %u elements differ\n", n, p * q);
}

static double now_ms(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec * 1e3 + ts.tv_nsec / 1e6;
}

int main(int argc, char **argv)
{
    int verbose = (argc > 1 && strcmp(argv[1], "-v") == 0);
    uint32_t idx;
    uint32_t pass = 0, fail = 0, skipped = 0; 

    printf("URSA testbench, SA_SIZE=%d, %d cases, acc=%d bits\n\n",
           SA_SIZE, BENCH_NUM_CASES, BENCH_ACC_BITS);
    printf("%-16s %6s %6s %6s %10s  %s\n",
           "case", "P", "Q", "M", "ms", "check");
    printf("------------------------------------------------------------------\n");

    for (idx = 0; idx < BENCH_NUM_CASES; ++idx) {
        const bench_case_t *tc = &bench_cases[idx];

        /* The shell tiles by SA_SIZE with integer division. */
        if (tc->P % SA_SIZE != 0 || tc->Q % SA_SIZE != 0) {
            printf("%-16s %6u %6u %6u %10s  skipped (not a multiple of SA_SIZE)\n",
                   tc->name, tc->P, tc->Q, tc->M, "-");
            ++skipped;
            continue;
        }

        // number of elements in the matrix
        size_t na = (size_t)tc->P * tc->M; // na = P x M
        size_t nb = (size_t)tc->M * tc->Q; // nb = M x Q
        size_t nc = (size_t)tc->P * tc->Q; // nc = P x Q

        // allocates memory for the matrices
        bench_a_t *A = (bench_a_t *)malloc(na * sizeof(bench_a_t));
        bench_b_t *B = (bench_b_t *)malloc(nb * sizeof(bench_b_t));
        bench_c_t *C = (bench_c_t *)malloc(nc * sizeof(bench_c_t));

        if (A == NULL || B == NULL || C == NULL) {
            printf("%-16s allocation failed, skipped\n", tc->name);
            free(A); free(B); free(C);
            ++skipped;
            continue;
        }

        // initializes matrices A and B and sets matrix C to zero
        bench_fill(tc, A, B);
        memset(C, 0, nc * sizeof(bench_c_t));        

        // call accelerator
        double t0 = now_ms();
        sa_result_t st = mxm_execute_ursa(
            (int8_t  *)A, tc->P,
            (uint8_t *)B, tc->Q,
            (int32_t *)C, tc->M
        );
        double dt = now_ms() - t0;

        uint32_t got = bench_checksum(C, (uint32_t)nc);
        int ok = (st == SA_SUCCESS) && (got == tc->golden);
        if (ok) ++pass; else ++fail;

        printf("%-16s %6u %6u %6u %10.2f  %s",
               tc->name, tc->P, tc->Q, tc->M, dt, ok ? "ok" : "FAIL");
        if (st != SA_SUCCESS)
            printf(" (status=%u)", (unsigned)st);
        if (!ok || verbose)
            printf(" (golden=0x%08X got=0x%08X)", tc->golden, got);
        printf("\n");

        /* Only on failure: recompute in software to find where it broke. */
        if (!ok && st == SA_SUCCESS) {
            bench_c_t *ref = (bench_c_t *)malloc(nc * sizeof(bench_c_t));
            if (ref != NULL) {
                gemm_ref(A, B, ref, tc->P, tc->Q, tc->M);
                locate_mismatch(C, ref, tc->P, tc->Q);
                free(ref);
            }
        }

        free(A); free(B); free(C);
    }

    printf("\n%u passed, %u failed", pass, fail);
    if (skipped) printf(", %u skipped", skipped);
    printf("\n");
    return fail ? 1 : 0;
}



