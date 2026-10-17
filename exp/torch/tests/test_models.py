"""Modules, attention, swap and the distil hook, on whichever libmxm.so.1 the extension finds."""

import math
import os

import pytest
import torch
import torch.nn.functional as F
from torch import nn

import ursa_torch
from ursa_torch import distil, kernels
from ursa_torch.kernels import fake_quant, weight_scale

pytestmark = pytest.mark.filterwarnings("ignore")


@pytest.fixture(scope="module", autouse=True)
def device():
    try:
        ursa_torch.open()
    except RuntimeError as e:
        pytest.skip(f"accelerator not available: {e}")
    yield


class _Count:
    """Wraps torch.ops.ursa, counting the calls that reach the accelerator."""

    def __init__(self):
        self.n = 0

    def __getattr__(self, name):
        op = getattr(torch.ops.ursa, name)

        def call(*a, **k):
            self.n += 1
            return op(*a, **k)
        return call


@pytest.fixture
def count(monkeypatch):
    c = _Count()
    monkeypatch.setattr(kernels, "_ursa", c)
    return c


def _rel(a, b):
    return ((a - b).norm() / b.norm()).item()


# ---- QConv2d / QLinear ------------------------------------------------------------------


def test_qconv2d_matches_fake_quant_reference(count):
    torch.manual_seed(0)
    conv, bn = nn.Conv2d(8, 16, 3, stride=2, padding=1), nn.BatchNorm2d(16)
    bn.running_mean.uniform_(-0.2, 0.2)
    bn.running_var.uniform_(0.5, 2)
    q = ursa_torch.QConv2d.from_float(conv, bn)
    q.act_scale.fill_(0.02)
    x = torch.randn(2, 8, 13, 13)
    y = q(x)
    s_w = weight_scale(q.weight)
    ref = F.conv2d(fake_quant(x, q.act_scale).double(), fake_quant(q.weight, s_w.view(-1, 1, 1, 1)).double(),
                   stride=2, padding=1) * (q.act_scale * s_w).double().view(1, -1, 1, 1) + q.bias.double().view(1, -1, 1, 1)
    torch.testing.assert_close(y.double(), ref, rtol=1e-5, atol=1e-5)
    assert count.n == 1
    ursa_torch.freeze(q)
    assert torch.equal(q(x), y)


def test_qlinear_backward():
    torch.manual_seed(1)
    q = ursa_torch.QLinear.from_float(nn.Linear(20, 7))
    q.act_scale.fill_(0.03)
    x = torch.randn(4, 3, 20, requires_grad=True)
    q(x).square().sum().backward()
    assert x.grad.shape == x.shape and q.weight.grad.shape == q.weight.shape
    assert x.grad.abs().sum() > 0 and q.weight.grad.abs().sum() > 0


# ---- attention -----------------------------------------------------------------------------


def _ref_attention(q, k, v, qs, ks, vs, mask):
    logits = fake_quant(q, qs).double() @ fake_quant(k, ks).double().transpose(-2, -1)
    logits = logits * (qs * ks / math.sqrt(q.shape[-1])).double()
    if mask is not None:
        logits = logits + mask.double()
    p = torch.softmax(logits, -1)
    return (fake_quant(p.float(), kernels.P_SCALE).double() @ fake_quant(v, vs).double()) * (kernels.P_SCALE * vs).double()


def test_attention_kernel_exact():
    torch.manual_seed(2)
    q, k, v = torch.randn(2, 3, 10, 16), torch.randn(2, 3, 12, 16), torch.randn(2, 3, 12, 16)
    s = [kernels.tensor_scale(t) for t in (q, k, v)]
    mask = kernels.additive_mask(torch.rand(10, 12) > 0.3, False, 10, 12)
    mask[:, 0] = 0  # keep a key per row
    out, _ = kernels.attention(q, k, v, *s, mask)
    torch.testing.assert_close(out.double(), _ref_attention(q, k, v, *s, mask), rtol=1e-4, atol=1e-5)


@pytest.mark.parametrize("batch_first", [True, False])
def test_multihead_attention(batch_first, count):
    torch.manual_seed(3)
    mha = nn.MultiheadAttention(32, 4, batch_first=batch_first).eval()
    q = ursa_torch.convert(nn.Sequential(mha))[0]
    assert isinstance(q, ursa_torch.QMultiheadAttention)
    xs = [torch.randn(2, 9, 32) if batch_first else torch.randn(9, 2, 32) for _ in range(4)]
    causal = nn.Transformer.generate_square_subsequent_mask(9)
    kpm = torch.zeros(2, 9, dtype=torch.bool)
    kpm[1, -2:] = True
    # calibrated with the masks it runs with: a causal mask changes the attention output's range
    ursa_torch.calibrate(_SelfAttn(q, attn_mask=causal, key_padding_mask=kpm), xs)
    x = xs[0]
    with torch.no_grad():
        ref, ref_w = mha(x, x, x, attn_mask=causal, key_padding_mask=kpm)
        out, w = q(x, x, x, attn_mask=causal, key_padding_mask=kpm)
    assert count.n > 0
    assert out.shape == ref.shape and w.shape == ref_w.shape
    assert _rel(out, ref) < 0.05, _rel(out, ref)
    assert _rel(w, ref_w) < 0.05


class _SelfAttn(nn.Module):
    def __init__(self, mha, **masks):
        super().__init__()
        self.mha, self.masks = mha, masks

    def forward(self, x):
        return self.mha(x, x, x, **self.masks)[0]


def test_transformer_encoder(count):
    torch.manual_seed(4)
    layer = nn.TransformerEncoderLayer(32, 4, 64, dropout=0.0, batch_first=True)
    ref_model = nn.TransformerEncoder(layer, 2).eval()
    model = ursa_torch.convert(_copy(ref_model)).eval()
    xs = [torch.randn(3, 10, 32) for _ in range(4)]
    ursa_torch.calibrate(model, xs)
    ursa_torch.freeze(model)
    with torch.no_grad():
        ref, out = ref_model(xs[0]), model(xs[0])
    assert count.n >= 2 * (4 + 2 + 2)  # per layer: q/k/v/out projections, 2 products, 2 FFN linears
    assert _rel(out, ref) < 0.05, _rel(out, ref)


def _copy(m):
    import copy
    return copy.deepcopy(m)


# ---- swap ------------------------------------------------------------------------------------


class _Net(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv = nn.Conv2d(3, 16, 3, padding=1)
        self.attn = nn.MultiheadAttention(16, 2, batch_first=True)
        self.fc = nn.Linear(16, 10)

    def forward(self, x):
        x = F.relu(self.conv(x))                      # [N, 16, 8, 8]
        t = x.flatten(2).transpose(1, 2)              # [N, 64, 16]
        t = t + self.attn(t, t, t, need_weights=False)[0]
        if hasattr(F, "scaled_dot_product_attention"):  # torch >= 2.0
            t = t + F.scaled_dot_product_attention(t, t, t, is_causal=True)
        return self.fc(t.mean(1)) + (t @ t.transpose(1, 2)).mean((1, 2)).unsqueeze(1)


def test_swap_float_model(count):
    torch.manual_seed(5)
    net = _Net().eval()
    x = torch.randn(2, 3, 8, 8)
    with torch.no_grad():
        ref = net(x)
        with ursa_torch.enabled(strict=True):
            out = net(x)
    assert count.n >= 6
    assert _rel(out, ref) < 0.05, _rel(out, ref)


# ---- distil ----------------------------------------------------------------------------------

DISTIL = os.environ.get("DISTIL_HOME", distil.DEFAULT_HOME)


@pytest.fixture
def distil_models(monkeypatch):
    if not os.path.isfile(os.path.join(DISTIL, "qops.py")):
        pytest.skip("distil not found (DISTIL_HOME)")
    monkeypatch.setenv("TORCH_APPROX_INT8_GEMM", "0")
    monkeypatch.setenv("TORCH_APPROX_INT8_GEMM_FLOAT", "0")
    distil.import_qops()
    import models
    return models


def _distil_resnet9(models):
    torch.manual_seed(6)
    model = models.build({"model": "resnet9", "dataset": "cifar10", "quant": {"enabled": True}}).eval()
    for m in model.modules():
        if hasattr(m, "act_scale"):
            m.act_scale.fill_(torch.empty(()).uniform_(0.01, 0.05).item())
        if isinstance(m, nn.Module) and hasattr(m, "bias") and isinstance(getattr(m, "bias"), nn.Parameter):
            m.bias.data.uniform_(-0.1, 0.1)
    return model


def test_distil_install_matches_accurate_mode(distil_models, count):
    import approx
    model = _distil_resnet9(distil_models)
    x = torch.randn(1, 3, 32, 32)
    with torch.no_grad():
        with approx.ops(approx.ACCURATE):
            ref = model(x)
        with distil.installed():
            out = model(x)
        assert count.n == 9  # 8 convs + the head linear
        converted = ursa_torch.convert(_copy(model))
        assert torch.equal(converted(x), out)
    torch.testing.assert_close(out, ref, rtol=1e-4, atol=1e-4 * ref.abs().max().item())
