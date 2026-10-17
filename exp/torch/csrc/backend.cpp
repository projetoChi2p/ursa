// backend.cpp -- libmxm context, the 20-bit guard and the exact GEMM.

#include "backend.h"

#include <c10/util/Exception.h>

#include <algorithm>
#include <cctype>
#include <cerrno>
#include <climits>
#include <cstdlib>
#include <cstring>

namespace ursa_torch {

// ---- device -----------------------------------------------------------------

namespace {

// Used by close_at_exit(), which runs from std::atexit: allocated once and
// never destroyed, so it outlives every static destroyed before the handler.
std::mutex& device_mutex() {
  static std::mutex* m = new std::mutex;
  return *m;
}

mxm_ctx_t* ctx = nullptr;
bool atexit_registered = false;

void close_at_exit() {
  std::lock_guard<std::mutex> lock(device_mutex());
  mxm_destroy(ctx);
  ctx = nullptr;
}

}  // namespace

std::unique_lock<std::mutex> acquire() {
  std::unique_lock<std::mutex> lock(device_mutex());
  if (ctx == nullptr) {
    const char* bit = std::getenv("URSA_BITSTREAM");
    const char* clk = std::getenv("URSA_CLK_MHZ");
    if (bit != nullptr && bit[0] == '\0') bit = nullptr;
    const double mhz = clk ? std::atof(clk) : 0.0;
    errno = 0;
    ctx = mxm_init(bit, mhz);
    TORCH_CHECK(ctx != nullptr, "URSA: mxm_init(", bit ? bit : "NULL", ", ", mhz, ") failed (",
                std::strerror(errno), ", backend '", mxm_backend(),
                "'). Is the bitstream loaded and the process root (/dev/mem)? "
                "See the messages above on stderr.");
    if (!atexit_registered) {
      std::atexit(close_at_exit);
      atexit_registered = true;
    }
  }
  return lock;
}

mxm_ctx_t* context() { return ctx; }

void device_close() {
  std::lock_guard<std::mutex> lock(device_mutex());
  mxm_destroy(ctx);
  ctx = nullptr;
}

bool device_open() {
  std::lock_guard<std::mutex> lock(device_mutex());
  return ctx != nullptr;
}

std::string backend_name() { return mxm_backend(); }

int64_t sa_size() {
  const std::string s = mxm_backend();
  for (size_t i = 0; i < s.size(); i++) {
    if (!std::isdigit(static_cast<unsigned char>(s[i])) || (i > 0 && std::isdigit(static_cast<unsigned char>(s[i - 1]))))
      continue;
    size_t j = i;
    while (j < s.size() && std::isdigit(static_cast<unsigned char>(s[j]))) j++;
    if (j < s.size() && s[j] == 'x') {
      const std::string n = s.substr(i, j - i);
      if (s.compare(j + 1, n.size(), n) == 0) return std::stoll(n);
    }
  }
  return 0;
}

// ---- guard --------------------------------------------------------------------

int64_t bmax_bucket(int64_t v) {
  int64_t b = 1;
  while (b < v) b = 2 * b + 1;
  return b;
}

std::vector<int64_t> plan_chunks(const int8_t* A, int64_t P, int64_t K, int64_t lda, int64_t bmax) {
  std::vector<int64_t> bounds{0};
  if (K == 0) return bounds;
  bmax = std::max<int64_t>(bmax, 1);
  const int64_t pos_lim = kAccMax / bmax;     // sum of positive weights allowed
  const int64_t neg_lim = (-kAccMin) / bmax;  // sum of |negative weights| allowed
  // A single column always fits: 127 * 255 and 128 * 255 are far below 2^19.
  std::vector<int32_t> pos(P, 0), neg(P, 0);
  for (int64_t k = 0; k < K; k++) {
    bool fits = true;
    for (int64_t p = 0; p < P && fits; p++) {
      const int v = A[p * lda + k];
      fits = v > 0 ? pos[p] + v <= pos_lim : neg[p] - v <= neg_lim;
    }
    if (!fits) {
      bounds.push_back(k);
      std::fill(pos.begin(), pos.end(), 0);
      std::fill(neg.begin(), neg.end(), 0);
    }
    for (int64_t p = 0; p < P; p++) {
      const int v = A[p * lda + k];
      if (v > 0) pos[p] += v; else neg[p] -= v;
    }
  }
  bounds.push_back(K);
  return bounds;
}

// ---- GEMM ---------------------------------------------------------------------

namespace {

void check_dims(int64_t P, int64_t Q, int64_t K, int64_t lda, int64_t ldb, int64_t ldc) {
  for (int64_t v : {P, Q, K, lda, ldb, ldc})
    TORCH_CHECK(v <= INT_MAX, "URSA: dimension ", v, " exceeds the int range of mxm_multiply");
}

void multiply(int P, int Q, int K, const int8_t* A, int64_t lda, const uint8_t* B, int64_t ldb,
              int32_t* C, int64_t ldc) {
  const int rc = mxm_multiply(context(), P, Q, K, A, static_cast<int>(lda), B,
                              static_cast<int>(ldb), C, static_cast<int>(ldc));
  TORCH_CHECK(rc == 0, "URSA: mxm_multiply(P=", P, ", Q=", Q, ", M=", K, ") failed: ",
              std::strerror(-rc), " (", rc, ")");
}

}  // namespace

void gemm_exact(const int8_t* A, int64_t lda, const uint8_t* B, int64_t ldb, int32_t* C,
                int64_t ldc, int64_t P, int64_t Q, int64_t K, int64_t zp, int64_t bmax) {
  if (P == 0 || Q == 0) return;
  check_dims(P, Q, K, lda, ldb, ldc);
  const std::vector<int64_t> bounds = plan_chunks(A, P, K, lda, bmax_bucket(bmax));
  std::vector<int32_t> part;
  {
    auto lock = acquire();
    if (K == 0) {
      for (int64_t p = 0; p < P; p++) std::fill(C + p * ldc, C + p * ldc + Q, 0);
    }
    for (size_t c = 0; c + 1 < bounds.size(); c++) {
      const int64_t k0 = bounds[c], k1 = bounds[c + 1];
      if (c == 0) {
        multiply(P, Q, k1 - k0, A + k0, lda, B + k0 * ldb, ldb, C, ldc);
        continue;
      }
      part.resize(static_cast<size_t>(P * Q));
      multiply(P, Q, k1 - k0, A + k0, lda, B + k0 * ldb, ldb, part.data(), Q);
      for (int64_t p = 0; p < P; p++) {
        int32_t* c_row = C + p * ldc;
        const int32_t* s_row = part.data() + p * Q;
        for (int64_t q = 0; q < Q; q++) c_row[q] += s_row[q];
      }
    }
  }
  if (zp != 0) {
    for (int64_t p = 0; p < P; p++) {
      int32_t rowsum = 0;
      for (int64_t k = 0; k < K; k++) rowsum += A[p * lda + k];
      const int32_t corr = static_cast<int32_t>(zp) * rowsum;
      int32_t* c_row = C + p * ldc;
      for (int64_t q = 0; q < Q; q++) c_row[q] -= corr;
    }
  }
}

void gemm_raw(const int8_t* A, int64_t lda, const uint8_t* B, int64_t ldb, int32_t* C,
              int64_t ldc, int64_t P, int64_t Q, int64_t K) {
  if (P == 0 || Q == 0) return;
  check_dims(P, Q, K, lda, ldb, ldc);
  auto lock = acquire();
  multiply(P, Q, K, A, lda, B, ldb, C, ldc);
}

// ---- helpers ------------------------------------------------------------------

void check_int8(const at::Tensor& t, const char* op, const char* name) {
  TORCH_CHECK(t.device().is_cpu(), "ursa::", op, ": ", name, " must be a CPU tensor, got ",
              t.device());
  TORCH_CHECK(t.scalar_type() == at::kChar, "ursa::", op, ": URSA multiplies int8 operands; ",
              name, " is ", c10::toString(t.scalar_type()),
              ". Quantize the network first (ursa_torch.nn.convert + calibrate).");
}

int64_t zero_point(const at::Tensor& t) {
  if (t.numel() == 0) return 0;
  return t.min().item<int8_t>() < 0 ? 128 : 0;
}

}  // namespace ursa_torch
