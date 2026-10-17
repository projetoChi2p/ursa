// ops.cpp -- the ursa:: operators (CPU dispatch key) and the Python module.
//
// All operators take signed int8 tensors and return exact int32 results
// (the semantics of an int8 x int8 -> int32 matmul / conv). The weight (or
// the left operand) goes to URSA's signed A side; the activation goes to the
// unsigned B side, offset by its zero point (see backend.h).

#include <torch/extension.h>

#include "backend.h"

#include <vector>

namespace ursa_torch {

using at::Tensor;

namespace {

// B side of src[K x Q] (int8, any strides): dst[k][q] = src[k][q] + zp as
// uint8, row-major. Returns max(dst).
int64_t to_b_side(const Tensor& src, int64_t zp, uint8_t* dst) {
  const auto s = src.accessor<int8_t, 2>();
  const uint8_t mask = zp ? 0x80 : 0x00;  // x + 128 == x ^ 0x80 as uint8
  const int64_t K = src.size(0), Q = src.size(1);
  uint8_t bmax = 0;
  for (int64_t k = 0; k < K; k++) {
    uint8_t* row = dst + k * Q;
    for (int64_t q = 0; q < Q; q++) {
      const uint8_t v = static_cast<uint8_t>(s[k][q]) ^ mask;
      row[q] = v;
      bmax = v > bmax ? v : bmax;
    }
  }
  return bmax;
}

// a[P x K] * b[K x Q] -> int32 [P x Q].
Tensor mm_2d(const Tensor& a_in, const Tensor& b) {
  const Tensor a = a_in.contiguous();
  const int64_t P = a.size(0), K = a.size(1), Q = b.size(1);
  const int64_t zp = zero_point(b);
  Tensor bu = at::empty({K, Q}, b.options().dtype(at::kByte));
  const int64_t bmax = to_b_side(b, zp, bu.data_ptr<uint8_t>());
  Tensor c = at::empty({P, Q}, a.options().dtype(at::kInt));
  gemm_exact(a.data_ptr<int8_t>(), K, bu.data_ptr<uint8_t>(), Q, c.data_ptr<int32_t>(), Q, P, Q,
             K, zp, bmax);
  return c;
}

}  // namespace

// ---- operators ------------------------------------------------------------------

// a [P, K] @ b [K, Q]
Tensor mm(const Tensor& a, const Tensor& b) {
  check_int8(a, "mm", "a");
  check_int8(b, "mm", "b");
  TORCH_CHECK(a.dim() == 2 && b.dim() == 2, "ursa::mm: a and b must be 2-D");
  TORCH_CHECK(a.size(1) == b.size(0), "ursa::mm: inner dimensions differ (", a.size(1), " vs ",
              b.size(0), ")");
  return mm_2d(a, b);
}

// a [B, P, K] @ b [B, K, Q]
Tensor bmm(const Tensor& a, const Tensor& b) {
  check_int8(a, "bmm", "a");
  check_int8(b, "bmm", "b");
  TORCH_CHECK(a.dim() == 3 && b.dim() == 3, "ursa::bmm: a and b must be 3-D");
  TORCH_CHECK(a.size(0) == b.size(0), "ursa::bmm: batch sizes differ (", a.size(0), " vs ",
              b.size(0), ")");
  TORCH_CHECK(a.size(2) == b.size(1), "ursa::bmm: inner dimensions differ (", a.size(2), " vs ",
              b.size(1), ")");
  Tensor out = at::empty({a.size(0), a.size(1), b.size(2)}, a.options().dtype(at::kInt));
  for (int64_t i = 0; i < a.size(0); i++) out[i].copy_(mm_2d(a[i], b[i]));
  return out;
}

// input [*, K], weight [O, K] -> [*, O]  (F.linear without bias)
Tensor linear(const Tensor& input, const Tensor& weight) {
  check_int8(input, "linear", "input");
  check_int8(weight, "linear", "weight");
  TORCH_CHECK(input.dim() >= 1 && weight.dim() == 2, "ursa::linear: weight must be 2-D");
  const int64_t K = weight.size(1), O = weight.size(0);
  TORCH_CHECK(input.size(-1) == K, "ursa::linear: input has ", input.size(-1),
              " features, weight expects ", K);
  std::vector<int64_t> out_shape(input.sizes().begin(), input.sizes().end() - 1);
  out_shape.push_back(O);
  const Tensor x = input.reshape({-1, K});
  // C [O, M] = W [O, K] * x^T [K, M]
  const Tensor c = mm_2d(weight, x.t());
  return c.t().contiguous().view(out_shape);
}

// input [N, C, H, W], weight [O, C, kh, kw] -> [N, O, OH, OW]  (groups = 1, dilation = 1)
Tensor conv2d(const Tensor& input, const Tensor& weight, at::IntArrayRef stride,
              at::IntArrayRef padding) {
  check_int8(input, "conv2d", "input");
  check_int8(weight, "conv2d", "weight");
  TORCH_CHECK(input.dim() == 4 && weight.dim() == 4, "ursa::conv2d: input and weight must be 4-D");
  TORCH_CHECK(stride.size() == 2 && padding.size() == 2, "ursa::conv2d: stride and padding are pairs");
  const int64_t N = input.size(0), C = input.size(1), H = input.size(2), W = input.size(3);
  const int64_t O = weight.size(0), kh = weight.size(2), kw = weight.size(3);
  const int64_t sh = stride[0], sw = stride[1], ph = padding[0], pw = padding[1];
  TORCH_CHECK(weight.size(1) == C, "ursa::conv2d: input has ", C, " channels, weight expects ",
              weight.size(1), " (groups != 1 is not supported)");
  TORCH_CHECK(sh > 0 && sw > 0 && ph >= 0 && pw >= 0, "ursa::conv2d: bad stride / padding");
  const int64_t OH = (H + 2 * ph - kh) / sh + 1, OW = (W + 2 * pw - kw) / sw + 1;
  TORCH_CHECK(OH > 0 && OW > 0, "ursa::conv2d: kernel larger than the padded input");
  const int64_t K = C * kh * kw, L = OH * OW, Q = N * L;

  const Tensor x = input.contiguous();
  const Tensor w = weight.contiguous();
  const int64_t zp = zero_point(x);
  const uint8_t mask = zp ? 0x80 : 0x00;
  const uint8_t pad = static_cast<uint8_t>(zp);  // a padded zero is a real zero

  // im2col straight into the B side: B[(c, i, j)][(n, oh, ow)], so C = W * B
  // is [O, N, OH, OW] without transposing the weights.
  Tensor bu = at::empty({K, Q}, x.options().dtype(at::kByte));
  const int8_t* xp = x.data_ptr<int8_t>();
  uint8_t* bp = bu.data_ptr<uint8_t>();
  uint8_t bmax = 0;
  for (int64_t c = 0; c < C; c++)
    for (int64_t i = 0; i < kh; i++)
      for (int64_t j = 0; j < kw; j++) {
        uint8_t* row = bp + ((c * kh + i) * kw + j) * Q;
        for (int64_t n = 0; n < N; n++) {
          const int8_t* plane = xp + (n * C + c) * H * W;
          uint8_t* dst = row + n * L;
          for (int64_t oh = 0; oh < OH; oh++) {
            const int64_t h = oh * sh + i - ph;
            for (int64_t ow = 0; ow < OW; ow++) {
              const int64_t ww = ow * sw + j - pw;
              const uint8_t v = (h >= 0 && h < H && ww >= 0 && ww < W)
                                    ? static_cast<uint8_t>(plane[h * W + ww]) ^ mask
                                    : pad;
              dst[oh * OW + ow] = v;
              bmax = v > bmax ? v : bmax;
            }
          }
        }
      }

  Tensor c = at::empty({O, Q}, x.options().dtype(at::kInt));
  gemm_exact(w.data_ptr<int8_t>(), K, bp, Q, c.data_ptr<int32_t>(), Q, O, Q, K, zp, bmax);
  return c.view({O, N, OH, OW}).permute({1, 0, 2, 3}).contiguous();
}

// One unguarded mxm_multiply: a int8 [P, K], b uint8 [K, Q] (wraps like the hardware).
Tensor mm_raw(const Tensor& a_in, const Tensor& b_in) {
  check_int8(a_in, "mm_raw", "a");
  TORCH_CHECK(b_in.device().is_cpu() && b_in.scalar_type() == at::kByte,
              "ursa::mm_raw: b must be a uint8 CPU tensor");
  TORCH_CHECK(a_in.dim() == 2 && b_in.dim() == 2 && a_in.size(1) == b_in.size(0),
              "ursa::mm_raw: a [P, K] and b [K, Q] expected");
  const Tensor a = a_in.contiguous(), b = b_in.contiguous();
  const int64_t P = a.size(0), K = a.size(1), Q = b.size(1);
  Tensor c = at::zeros({P, Q}, a.options().dtype(at::kInt));
  gemm_raw(a.data_ptr<int8_t>(), K, b.data_ptr<uint8_t>(), Q, c.data_ptr<int32_t>(), Q, P, Q, K);
  return c;
}

// The reduction chunks gemm_exact uses for A (int8 [P, K]) and B values up to bmax.
std::vector<int64_t> plan(const Tensor& a_in, int64_t bmax) {
  check_int8(a_in, "plan", "a");
  TORCH_CHECK(a_in.dim() == 2, "ursa::plan: a must be 2-D");
  const Tensor a = a_in.contiguous();
  return plan_chunks(a.data_ptr<int8_t>(), a.size(0), a.size(1), a.size(1), bmax_bucket(bmax));
}

}  // namespace ursa_torch

TORCH_LIBRARY(ursa, m) {
  m.def("mm(Tensor a, Tensor b) -> Tensor");
  m.def("bmm(Tensor a, Tensor b) -> Tensor");
  m.def("linear(Tensor input, Tensor weight) -> Tensor");
  m.def("conv2d(Tensor input, Tensor weight, int[2] stride=1, int[2] padding=0) -> Tensor");
  m.def("mm_raw(Tensor a, Tensor b) -> Tensor");
  m.def("plan(Tensor a, int bmax=255) -> int[]");
}

TORCH_LIBRARY_IMPL(ursa, CPU, m) {
  using namespace ursa_torch;
  m.impl("mm", &mm);
  m.impl("bmm", &bmm);
  m.impl("linear", &linear);
  m.impl("conv2d", &conv2d);
  m.impl("mm_raw", &mm_raw);
  m.impl("plan", &plan);
}

PYBIND11_MODULE(TORCH_EXTENSION_NAME, m) {
  using namespace ursa_torch;
  m.doc() = "URSA v3 (libmxm) backend for PyTorch";
  m.def("backend", &backend_name, "mxm_backend() of the linked libmxm");
  m.def("sa_size", &sa_size, "Systolic array size of the linked libmxm (0 if unknown)");
  m.attr("ACC_BITS") = kAccBits;
  m.def("open", [] { auto lock = acquire(); }, "Open the accelerator (mxm_init)");
  m.def("close", &device_close, "Release the accelerator (mxm_destroy)");
  m.def("is_open", &device_open, "Whether the accelerator is open");
}
