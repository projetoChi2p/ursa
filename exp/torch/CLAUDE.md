# Writing networks for URSA (ursa_torch)

`ursa_torch` runs the int8 products of a PyTorch network (convs, linears, attention matmuls) on URSA v3 through
libmxm. Everything else runs in fp32 on the board's Cortex-A9. This file covers how to write, quantize, verify and
deploy a network. README.md describes the backend itself.

## What runs where

| On URSA (int8 × int8 → exact int32) | On the CPU (fp32) |
|---|---|
| `nn.Conv2d`: groups=1, dilation=1, explicit zero padding, any kernel/stride | BatchNorm (folded into the conv beforehand) |
| `nn.Linear`, any number of leading dims | ReLU, GELU, LayerNorm, softmax, pooling, Flatten |
| `nn.MultiheadAttention`: projections, `QKᵀ`, `P·V` | residual adds, concatenation, masks, the dequantization |
| `QMatmul`: any activation × activation product | everything not listed on the left |

**Quantization** is distil's (`~/Documents/dac/distil/qops.py`) and must stay that way. Don't invent a new scheme.
- Weights are symmetric int8 per output channel (`weight_scale`).
- Activations are symmetric int8 per tensor, using a calibrated `act_scale` buffer.
- Products are exact int32, dequantized in fp32 as `acc · act_scale · s_w + bias`.
- Attention probabilities use the fixed scale 1/127.

There are no zero points or requantization multipliers on the user side.

## The workflow

```python
import torch, ursa_torch

model = MyNet().eval()                      # 1. an ordinary fp32 module, trained as usual
model.load_state_dict(torch.load("fp32.pt"))
qmodel = ursa_torch.convert(model)          # 2. Conv2d(+BN)/Linear/MHA -> QConv2d/QLinear/QMultiheadAttention
ursa_torch.calibrate(qmodel, train_batches, n_batches=20)   # 3. activation scales (99.99th pct of |x|)
torch.save(qmodel.state_dict(), "int8.pt")  # 4. int8 checkpoint: fp32 weights + act_scale buffers
ursa_torch.freeze(qmodel)                   # 5. inference: int8 weights cached
with torch.no_grad():
    y = qmodel(x)
```

- **`convert()` replaces modules, not code.**
  - Only `nn.Conv2d`, `nn.Linear` and `nn.MultiheadAttention` instances (and distil `qops` modules) are converted.
  - A `F.conv2d`, `torch.matmul` or `@` written in `forward` stays fp32 on the CPU.
  - So write layers as modules. For activation × activation products, hold a `ursa_torch.QMatmul()` and call it.
- **Calibrate with real inputs, in the conditions you'll run.** That means the same masks, the same preprocessing,
  and training-split images. Random calibration data only suits smoke tests.
  - Example: a causal mask changes the attention output's range. Calibrating without it clipped the out-projection
    and gave 16% error.
- **Loading a checkpoint:** build the fp32 model, `convert()`, then `load_state_dict(int8.pt)`. Don't calibrate
  again.
  - Distil int8 checkpoints load this way, provided the module names match (see `examples/resnet18.py`).
  - Loading a state dict clears any frozen weights; call `freeze()` again afterwards.
- **`swap.enabled()`** (dynamic per-tensor scales, no conversion) is for quick experiments on float models. For
  results, use convert + calibrate.

## Network rules

1. **BatchNorm must directly follow its conv inside an `nn.Sequential`**: `nn.Sequential(conv, bn, relu)`.
   - `convert()` folds those pairs. A BatchNorm anywhere else raises `ValueError`, including torchvision's
     `self.bn1` attributes.
   - Either define blocks the distil way (`examples/resnet18.py`: `self.body = nn.Sequential(conv, bn, relu, ...)`),
     or fold before converting:
     ```python
     from torch.nn.utils.fusion import fuse_conv_bn_eval
     def fold_bn(m):  # conv/bn registered one after the other (torchvision: conv1, bn1, ...)
         names = list(m._modules)
         for a, b in zip(names, names[1:]):
             if isinstance(m._modules[a], nn.Conv2d) and isinstance(m._modules[b], nn.BatchNorm2d):
                 m._modules[a] = fuse_conv_bn_eval(m._modules[a], m._modules[b])
                 m._modules[b] = nn.Identity()
         for c in m.children():
             fold_bn(c)
         return m
     qmodel = ursa_torch.convert(fold_bn(model.eval()))
     ```
2. **Unsupported convolutions:**
   - `groups != 1` (depthwise / grouped) and `dilation != 1` are rejected by `QConv2d.from_float`.
   - Use string padding (`'same'`) or a non-zero `padding_mode` as explicit integer padding instead.
   - Depthwise-heavy nets (MobileNet, EfficientNet) are a poor fit.
3. **Attention: use `nn.MultiheadAttention`**, directly or through `nn.TransformerEncoder(Layer)`.
   - `convert()` replaces it with `QMultiheadAttention`.
   - `bias_k` / `bias_v` / `add_zero_attn` are not supported, and dropout is ignored (inference).
   - Hand-written attention must call `QMatmul` modules for `q @ kᵀ` and `p @ v`.
   - Pass `enable_nested_tensor=False` to `nn.TransformerEncoder`. `convert()` disables the nested path anyway.
4. **Prefer ReLU before a conv or linear.**
   - A non-negative input goes to URSA's unsigned side as is (`B ≤ 127`).
   - A signed one is offset by +128 (`B ≤ 255`), which halves the reduction length per call under the 20-bit guard,
     so it needs about twice as many URSA calls.
   - The stem (normalized images) and post-LayerNorm projections are inherently signed. That is fine; it's just
     slower.
5. **Keep shapes static and the batch in one call.** conv2d stacks the whole batch into one GEMM (`Q = N·OH·OW`).
   Batching inputs amortizes the per-call A packing.
6. **Activations are signed int8 in [-127, 127] even after ReLU**, as in distil. Half the range is unused there; this
   is intended, for compatibility with distil checkpoints.

## Verifying a network

Always check against the exact CPU reference before trusting hardware numbers.
- `examples/resnet18.py` shows the pattern: `on_cpu()` swaps `kernels._ursa` for exact int64 ops.
- The outputs must be **identical**: max |difference| 0.
- A nonzero difference means the bitstream or libmxm is wrong, not the network.

```python
from ursa_torch import kernels
class ExactCPU:  # same semantics as torch.ops.ursa, no accelerator
    linear = staticmethod(lambda x, w: (x.long() @ w.long().t()).int())
    conv2d = staticmethod(lambda x, w, s, p: torch.nn.functional.conv2d(
        x.double(), w.double(), stride=tuple(s), padding=tuple(p)).round().int())
    bmm = staticmethod(lambda a, b: torch.bmm(a.long(), b.long()).int())
saved, kernels._ursa = kernels._ursa, ExactCPU
ref = qmodel(x)
kernels._ursa = saved
```

**Accuracy loss vs fp32** comes from quantization alone, so judge it on the CPU first:
- A calibrated CNN is typically within 1–3% relative logit error.
- The attention-probability quantization adds roughly 2–5% for transformers.

**URSA call counts:** `torch.ops.ursa.plan(w_int8_2d, bmax)` returns a layer's reduction chunks.
`examples/resnet18.py --layers` prints them per layer.

## Running it

- **Host, with no hardware:** the software model of the IP is bit-exact with the hardware, including the 20-bit wrap.
  ```sh
  make -C ../output-stationary-v3/linux sim SA=8
  MXM_HOME=$PWD/../output-stationary-v3/linux/build/sim-sa8 pip install --no-build-isolation -e .
  python -m pytest tests/
  ```
- **Board (PYNQ, armv7, torch 1.13 / Python 3.10):** never compile on the board.
  1. `scripts/cross_build.sh [--install user@board]` cross-builds the wheel on the PC with the Vitis toolchain.
  2. Copy the network script, its checkpoint and its data to the board.
  3. Run `sudo -E python3 script.py` with the bitstream loaded.

**Torch 1.13 on the board:**
- There is no `F.scaled_dot_product_attention`, and no `torch.compile` / FakeTensor support.
- Write code that runs on 1.13: no `torch.nn.functional.scaled_dot_product_attention`, no `torch._check`, no newer
  `nn.Transformer` arguments.
- To check, build the extension against torch 1.13.1 x86 / Python 3.10 on the host.

## Adding a new layer type

The C++ operators are generic int8 GEMMs (`mm`, `bmm`, `linear`, `conv2d`), so a new layer is a Python module:

1. **Quantize** the inputs with `fake_quant(x, scale)` (per-tensor scale buffers, calibrated) and the weights with
   `fake_quant(w, weight_scale(w).view(-1, …))`.
2. **Multiply** with `kernels.int_linear` / `int_conv2d` / `int_matmul`. These return exact products as float and
   carry a straight-through backward.
3. **Dequantize:** `y * (s_x * s_w) + bias`.
4. **Calibration hooks:**
   - When `self.observer` is set, call `self.observer("<buffer>", x)` for every scale buffer and run the fp32 math
     through `torch.ops.aten.*`, not `F.*` or `torch.*`, so `swap` never intercepts it.
   - Register the class and its buffer names in `nn.QUANTIZED` / `nn._SCALES`.
5. **Convert:** teach `convert()` the float module → new module mapping (a `from_float` classmethod).
6. **Test:**
   - an exact-equality test against a fake-quant fp64 reference, in `tests/test_models.py`;
   - a run on torch 1.13.

Things to avoid in kernels:
- Don't quantize with a zero point or asymmetric ranges. The C++ layer adds URSA's unsigned offset itself.
- Don't call libmxm directly from Python. The C++ layer's 20-bit guard is what makes results exact.
