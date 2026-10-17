// backend.h -- the libmxm context, the 20-bit guard and the exact int8 GEMM.
//
// URSA computes C[P x Q] (int32) = A[P x K] (int8) * B[K x Q] (uint8) with
// PE accumulators of ACC_BITS (20) bits that wrap inside one mxm_multiply
// call. Everything here builds an exact int32 product on top of it:
//
//   * the B side is unsigned: a signed operand b is sent as b + zp
//     (zp = 128, i.e. b ^ 0x80) and zp * rowsum(A) is subtracted afterwards;
//     an operand that is >= 0 is sent as is (zp = 0);
//   * the reduction is split into chunks whose sums cannot leave the
//     accumulator range for any B in [0, bmax] (plan_chunks), and the chunk
//     results are added in int32 on the CPU.

#pragma once

#include <ATen/ATen.h>

#include <cstdint>
#include <mutex>
#include <string>
#include <vector>

extern "C" {
#include <mxm.h>
}

namespace ursa_torch {

constexpr int kAccBits = 20;
constexpr int64_t kAccMax = (int64_t(1) << (kAccBits - 1)) - 1;  // 524287
constexpr int64_t kAccMin = -(int64_t(1) << (kAccBits - 1));     // -524288

// ---- device -----------------------------------------------------------------

// Locks the device and opens it on first use (mxm_init with URSA_BITSTREAM /
// URSA_CLK_MHZ when set, otherwise what is already loaded). libmxm is not
// thread-safe: every call into it must hold the returned lock.
std::unique_lock<std::mutex> acquire();
mxm_ctx_t* context();  // valid while holding acquire()
void device_close();
bool device_open();
std::string backend_name();  // mxm_backend()
int64_t sa_size();           // parsed from mxm_backend() ("..., 8x8, ..."), 0 if unknown

// ---- guard --------------------------------------------------------------------

// Chunk boundaries [0 = k_0 < k_1 < ... < k_n = K] over the reduction of A
// (P x K, row stride lda) such that for every row p and chunk c,
//     bmax * sum_{k in c, A>0} A[p][k] <= kAccMax  and
//     bmax * sum_{k in c, A<0} A[p][k] >= kAccMin.
// The wrap is modular, so only a chunk's final sum has to fit. Greedy: a
// chunk grows until the next column would break the bound for some row.
std::vector<int64_t> plan_chunks(const int8_t* A, int64_t P, int64_t K, int64_t lda, int64_t bmax);

// Smallest 2^n - 1 >= v (the bmax the plans are made for), at least 1.
int64_t bmax_bucket(int64_t v);

// ---- GEMM ---------------------------------------------------------------------

// C[P x Q] = A[P x K] * (B[K x Q] - zp), exact. A int8 row-major (lda), B
// uint8 row-major (ldb), C int32 row-major (ldc). bmax = max(B). Runs
// mxm_multiply once per chunk; must not hold acquire().
void gemm_exact(const int8_t* A, int64_t lda, const uint8_t* B, int64_t ldb, int32_t* C,
                int64_t ldc, int64_t P, int64_t Q, int64_t K, int64_t zp, int64_t bmax);

// One unguarded mxm_multiply (wraps at ACC_BITS like the hardware).
void gemm_raw(const int8_t* A, int64_t lda, const uint8_t* B, int64_t ldb, int32_t* C,
              int64_t ldc, int64_t P, int64_t Q, int64_t K);

// ---- helpers ------------------------------------------------------------------

void check_int8(const at::Tensor& t, const char* op, const char* name);

// Zero point for a signed int8 operand that goes to the uint8 side: 0 when
// every element is >= 0, else 128.
int64_t zero_point(const at::Tensor& t);

}  // namespace ursa_torch
