# ursa_torch — PyTorch int8 backend for URSA v3

Runs quantized convnets, MLPs and attention on the URSA v3 output-stationary systolic array (Zynq-7020, PYNQ) through
`libmxm` (`mxm.h`, the Linux driver in `../output-stationary-v3/linux`). It is structured like
`gemmini_torch_backend`:

- C++ operators `torch.ops.ursa.*`;
- fake kernels;
- modules plus `convert()`;
- a `swap.enable()` initializer.

It uses the int8 kernels and quantization of the distil pipeline (`~/Documents/dac/distil/qops.py`).

Only int8 is supported: weights and activations are symmetric int8 in [-127, 127]. Weights are scaled per output
channel and activations per tensor. Products accumulate **exactly** in int32 and are dequantized in fp32
(`y = acc · s_x · s_w + bias`). The accelerator is assumed to be preloaded with its bitstream.

## How a product reaches URSA

URSA computes `C[P×Q] int32 = A[P×K] int8 · B[K×Q] uint8`. Each PE accumulator is 20 bits and wraps silently within
one call. The C++ layer (`csrc/backend.cpp`) builds an exact int8 × int8 → int32 product on top of that:

- **Operand placement.** Weights, or the left operand, go on the signed A side. Activations go on the unsigned B side.
  - A signed activation is sent as `x + 128` (`x ^ 0x80`), and `128 · rowsum(A)` is subtracted from the result.
  - An activation that is ≥ 0 (after ReLU, softmax probabilities) is sent as is.
- **20-bit guard** (`plan_chunks`, a port of `urt_guard_ok` from the hw tests).
  - The reduction is split greedily into chunks such that, for every row, `bmax · Σ⁺A ≤ 2¹⁹−1` and
    `bmax · Σ⁻A ≥ −2¹⁹`. `bmax` is the actual maximum of B, rounded up to 2ⁿ−1.
  - Each chunk is one `mxm_multiply`, and the chunks are summed in int32 on the CPU.
  - With real weights chunks are long, because the weight mass is far below the worst case of 127.
  - For attention P·V, P is on the A side and its rows sum to ≈127, so the whole row fits in one chunk.
- **Layouts.**
  - conv2d: im2col is written straight into B as `[C·kh·kw, N·OH·OW]`, so `C = W · B` is already NCHW.
  - linear: computed as `W · xᵀ`.
- **Locking.** libmxm is not thread-safe, so every call holds a process-wide mutex. The device opens on first use
  with `mxm_init(NULL, 0)`, i.e. the loaded bitstream. Set `URSA_BITSTREAM` / `URSA_CLK_MHZ` to load or clock one
  instead.

| operator | semantics |
|---|---|
| `ursa::mm(a[P,K], b[K,Q])` | `a @ b`, int8 → int32 |
| `ursa::bmm(a[B,P,K], b[B,K,Q])` | batched `a @ b` |
| `ursa::linear(x[*,K], w[O,K])` | `x @ wᵀ` (`torch._int_mm(x, w.t())`) |
| `ursa::conv2d(x, w, stride, padding)` | `F.conv2d`, groups = dilation = 1 |
| `ursa::mm_raw(a int8, b uint8)` | one unguarded `mxm_multiply` (wraps at 20 bits like the hardware) |
| `ursa::plan(a, bmax)` | the guard's chunk boundaries |

## Python API

```python
import torch, ursa_torch

# 1. Converted model (recommended): calibrated scales, int8 weights cached.
model = ursa_torch.convert(float_model)       # Conv2d(+BN) / Linear / MultiheadAttention -> QConv2d / QLinear / QMultiheadAttention
ursa_torch.calibrate(model, train_loader)     # percentile-99.99 per-tensor scales (distil's quantize.calibrate)
ursa_torch.freeze(model)
with torch.no_grad():
    y = model(x)

# 2. Unmodified float model, quantized on the fly (dynamic absmax scales).
with ursa_torch.enabled():                    # F.linear / F.conv2d / sdpa / matmul / mm / bmm / baddbmm / @
    y = float_model(x)

# 3. distil's own code on URSA.
from ursa_torch import distil
distil.install()                              # patches qops.int_conv2d / int_linear / emulated_matmul
model = models.load(cfg, "runs/.../distilled.pt")
```

- **`QConv2d` / `QLinear`**
  - They have the state of distil's modules (`weight`, `bias`, `act_scale`), so distil int8 checkpoints load
    directly.
  - `convert()` also turns distil `qops` modules into ursa modules.
  - The backward pass is distil's straight-through fp32 one, so QAT/distillation can train through the hardware.
- **`QMultiheadAttention`**
  - q/k/v/out projections are `QLinear`.
  - `QKᵀ` and `P·V` run on URSA, with q, k and v scaled per tensor and P with a fixed 1/127.
  - Masks and softmax run in fp32 on the CPU. LayerNorm, GELU, pooling and residual adds also stay on the CPU.
  - `nn.TransformerEncoder(Layer)` works after `convert()`, since its fused fast path is never taken.
- **`QMatmul`**: an activation × activation product with calibrated scales, for custom attention code.
- **`swap.enable(strict=True)`** raises `UrsaUnsupportedError` instead of falling back. Fallbacks happen for grouped
  or dilated convs and attention dropout.

## Board setup (PYNQ, armv7, Python 3.10)

Nothing is compiled on the board. Compiling a torch extension needs about 1 GB per job, which a Zynq board doesn't
have. The extension is cross-built on the PC with the Vitis aarch32 Linux toolchain and installed as a wheel.

1. **Cross-build on the PC** (needs Vitis, `python3`, `curl`, `dpkg-deb`; no torch):
   ```sh
   scripts/cross_build.sh                          # -> dist/ursa_torch-0.1.0-cp310-cp310-linux_armv7l.whl
   scripts/cross_build.sh --install xilinx@pynq    # also scp + pip install it on the board
   ```
   - **torch headers and libraries** come from the board's torch wheel. The default is
     `torch-1.13.0a0+git7c98e70-cp310-cp310-linux_armv7l.whl` from
     <https://github.com/maxisoft/pytorch-arm/releases/tag/v1.0.0>; pass `--torch-wheel` for another. The C++ and
     pybind11 ABI are read from the wheel's binaries.
   - **C/C++ runtime** comes from an Ubuntu armhf sysroot fetched from ports.ubuntu.com: `--release jammy`, i.e.
     Ubuntu 22.04, the PYNQ 3.x base. `--sysroot DIR` uses another one.
     - The toolchain's own sysroot is deliberately not used. Its glibc 2.39 and libstdc++ 6.0.32 are newer than the
       board's, and a binary linked against them would not load there.
     - After linking, the script checks every `GLIBC_` / `GLIBCXX_` / `CXXABI_` version the extension needs against
       the sysroot.
     - A `--no-undefined` check link catches torch ABI mismatches.
   - **Target flags** are `-mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard -mthumb`. The Vitis compiler defaults to
     armv5t.
   - **Toolchain**: `--cross-compile PREFIX` (or `CROSS_COMPILE`) selects another one. The default is the newest
     `Vitis/*/gnu/aarch32/lin/gcc-arm-linux-gnueabi` under `/tools/xil`, `/tools/Xilinx` or `/opt/Xilinx`.
2. **libmxm.** Install it on the board for the size of the loaded bitstream. 8x8 is recommended, because 16x16
   misses timing at 100 MHz. It is cross-built too:
   ```sh
   ../output-stationary-v3/linux/make_pynq.sh 8 xilinx@pynq
   # on the board:
   sudo cp ursa_sa8/lib/libmxm.so* /usr/local/lib && sudo ldconfig
   ```
3. **On the board**, install the torch wheel and the ursa_torch wheel (`pip install --no-deps <wheel>` if
   `--install` wasn't used), plus `pytest pyyaml` for the tests. Then run as root (`/dev/mem`) with the bitstream
   already loaded:
   ```sh
   sudo -E python3 -m pytest tests/
   ```

`libmxm.so.1` can be swapped at run time (`LD_LIBRARY_PATH=.../build/sa16`) without rebuilding. `ursa_torch.info()`
reports which one is in use.

**Support on torch < 2.1 (the 1.13 wheel).**
- Everything runs, except the fake kernels (`torch.compile` / FakeTensor) and `opcheck`. Their tests are skipped.
- `swap.enable()` disables the native MHA/Transformer fast path:
  - on torch ≥ 2.0 through `torch.backends.mha`;
  - on 1.13 by making `torch.overrides.has_torch_function` return True while enabled. Only `nn.MultiheadAttention`
    and `nn.Transformer*` look it up there.

## Development host (x86, software model)

`make sim` builds a bit-exact model of the IP, including the 20-bit wrap:

```sh
make -C ../output-stationary-v3/linux sim SA=8
MXM_HOME=$PWD/../output-stationary-v3/linux/build/sim-sa8 pip install --no-build-isolation -e .
python -m pytest tests/
```

## Tests and examples

- **`tests/test_meta.py`**: no hardware involved. Covers fake shapes, the dtype policy, the guard planner against a
  Python reference, and swap bookkeeping.
- **`tests/test_ops.py`**: every operator is checked for **exact** equality with an int64 reference. Cases:
  - shapes that are not multiples of SA, K > 256, padding and stride;
  - signed and unsigned activations;
  - all-extreme operands, which wrap without the guard. `mm_raw` checks that the wrap is real.
- **`tests/test_models.py`**:
  - QConv2d/QLinear against the fake-quant reference;
  - backward;
  - attention against an fp64 reference;
  - MultiheadAttention and TransformerEncoder against fp32;
  - swap on a float model with conv + MHA + sdpa + matmul;
  - a distil ResNet9 through `distil.install()`, against distil's accurate mode.
- **`examples/distil_resnet.py`**: evaluates a distil int8 checkpoint on URSA next to the CPU.
  ```sh
  sudo -E python examples/distil_resnet.py --config config.yaml --n 500
  ```
- **`examples/resnet18.py`**: distil's CIFAR ResNet-18, defined in the example with distil's module names. It loads
  a distil int8 checkpoint (`--checkpoint`) or fp32 one (`--float-checkpoint`, calibrated there), or uses random
  weights.
  - It reads CIFAR from the python pickles, so it needs neither distil nor torchvision on the board.
  - Every batch is also checked against an exact int64 CPU run, and must match bit for bit.
  - `--layers` prints each layer's GEMM and how many URSA calls the 20-bit guard needs.
  ```sh
  sudo -E python3 examples/resnet18.py --checkpoint distilled.pt --data cifar100 --data-dir data --layers
  ```
- **`examples/mlp.py`**: trains an MLP in fp32, then quantizes it and evaluates on URSA.
- **`examples/vit_tiny.py`**: a tiny ViT through `convert`+`calibrate` and through `swap`.

## Performance notes

- Every chunk is a separate `mxm_multiply`.
- libmxm packs A and B on the ARM and copies them through `/dev/mem` word by word. On the Cortex-A9 this CPU work,
  together with im2col and the epilogue, dominates the run time.
- To reduce it:
  - Use ReLU'd activations where possible: zp = 0 and `bmax` = 127 give chunks twice as long.
  - Batch inputs: conv2d stacks the whole batch along Q.
