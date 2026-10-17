/* Common matrix-multiplication API (libmxm.so.1).
 *
 *     C[P x Q] (int32) = A[P x M] (int8) * B[M x Q] (uint8)
 *
 * row-major, with leading dimensions (row strides, in elements). Nothing in
 * this header depends on the backend or its build configuration, so any
 * libmxm.so.1 (URSA at another array size, a fixed build, another backend)
 * can replace the one an application was linked with, without rebuilding it:
 *
 *     LD_LIBRARY_PATH=build/sa16 ./app
 *
 *     mxm_ctx_t *ctx = mxm_init("design.bit.bin", 100.0);   // or (NULL, 0)
 *     mxm_multiply(ctx, P, Q, M, A, M, B, Q, C, Q);
 *     mxm_destroy(ctx);
 */
#ifndef MXM_H_
#define MXM_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MXM_API __attribute__((visibility("default")))

typedef struct mxm_ctx mxm_ctx_t;

/* Initialise the backend.
   bitstream: hardware image to load first, or NULL to use what is loaded
              (URSA: a .bit.bin, see ursa_load_bitstream).
   clk_mhz:   accelerator clock to set, or <= 0 to keep the current one.
   Backends without hardware ignore both. Returns NULL on failure, with
   errno set and a message on stderr. */
MXM_API mxm_ctx_t *mxm_init(const char *bitstream, double clk_mhz);

/* C = A * B, any shape. Returns 0 or a negative errno
   (-EINVAL, -ETIMEDOUT, -EIO). C is undefined on error. */
MXM_API int mxm_multiply(mxm_ctx_t *ctx, int P, int Q, int M,
                         const int8_t  *A, int lda,
                         const uint8_t *B, int ldb,
                         int32_t       *C, int ldc);

/* Release everything mxm_init acquired. Accepts NULL. */
MXM_API void mxm_destroy(mxm_ctx_t *ctx);

/* Human-readable description of the linked backend and its build,
   e.g. "URSA v3, 16x16, BRAM, Linux /dev/mem". Static string. */
MXM_API const char *mxm_backend(void);

#ifdef __cplusplus
}
#endif

#endif /* MXM_H_ */
