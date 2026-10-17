/* libmxm backend for URSA v3: the common API of mxm.h on top of ursa_linux.h. */
#define _POSIX_C_SOURCE 200809L

#include "mxm.h"
#include "ursa_linux.h"

#include <errno.h>
#include <stdio.h>

#ifndef SA_SIZE
    #define SA_SIZE 8
#endif

#define STR_(x) #x
#define STR(x)  STR_(x)

#ifdef URSA_SIM
    #define URSA_TARGET "software model"
#else
    #define URSA_TARGET "Linux /dev/mem"
#endif

/* The context is the URSA device itself. */
struct mxm_ctx;

const char *mxm_backend(void)
{
    return "URSA v3, " STR(SA_SIZE) "x" STR(SA_SIZE) ", BRAM, " URSA_TARGET;
}

mxm_ctx_t *mxm_init(const char *bitstream, double clk_mhz)
{
    int e;
    if (bitstream && (e = ursa_load_bitstream(bitstream)) != 0) {
        errno = -e;
        return NULL;
    }
    if (clk_mhz > 0) {
        uint32_t hz = 0;
        if ((e = ursa_set_fclk0((uint32_t)(clk_mhz * 1e6 + 0.5), &hz)) != 0) {
            fprintf(stderr, "mxm_init: setting FCLK0 failed: %d\n", e);
            errno = -e;
            return NULL;
        }
    }
    return (mxm_ctx_t *)ursa_open();
}

int mxm_multiply(mxm_ctx_t *ctx, int P, int Q, int M,
                 const int8_t *A, int lda,
                 const uint8_t *B, int ldb,
                 int32_t *C, int ldc)
{
    return ursa_gemm((ursa_dev_t *)ctx, P, Q, M, A, lda, B, ldb, C, ldc);
}

void mxm_destroy(mxm_ctx_t *ctx)
{
    ursa_close((ursa_dev_t *)ctx);
}
