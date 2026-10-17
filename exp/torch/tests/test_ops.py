"""The ursa:: operators against an exact int64 reference.

They run on whichever libmxm.so.1 the extension finds: the software model
(build/sim-saN, bit-exact with the hardware, 20-bit wrap included) on a
development host, or the accelerator on the board (as root, bitstream loaded):

    sudo -E python -m pytest tests/test_ops.py
"""

import pytest
import torch
import torch.nn.functional as F

import ursa_torch

pytestmark = pytest.mark.filterwarnings("ignore")


@pytest.fixture(scope="module", autouse=True)
def device():
    try:
        ursa_torch.open()
    except RuntimeError as e:
        pytest.skip(f"accelerator not available: {e}")
    yield


def _rand(*shape, lo=-127, hi=127):
    return torch.randint(lo, hi + 1, shape, dtype=torch.int8)


def _ref_mm(a, b):
    return (a.long() @ b.long()).int()


SHAPES = [(1, 1, 1), (8, 8, 8), (7, 13, 5), (37, 700, 51), (64, 1000, 3), (3, 257, 130), (130, 40, 513)]


@pytest.mark.parametrize("P,K,Q", SHAPES)
@pytest.mark.parametrize("signed_b", [True, False])
def test_mm(P, K, Q, signed_b):
    torch.manual_seed(P * K + Q)
    a = _rand(P, K, lo=-128)
    b = _rand(K, Q) if signed_b else _rand(K, Q, lo=0)
    assert torch.equal(torch.ops.ursa.mm(a, b), _ref_mm(a, b))


@pytest.mark.parametrize("wa,xb", [(127, 127), (-128, 127), (127, -128), (-128, -128)])
def test_mm_adversarial(wa, xb):
    """Every product at its extreme, K long: wraps without the guard, exact with it."""
    a = torch.full((16, 600), wa, dtype=torch.int8)
    b = torch.full((600, 24), xb, dtype=torch.int8)
    assert torch.equal(torch.ops.ursa.mm(a, b), _ref_mm(a, b))


def test_raw_wraps():
    """The unguarded call shows the 20-bit wrap the guard protects against."""
    a = torch.full((8, 200), 127, dtype=torch.int8)
    b = torch.full((200, 8), 255, dtype=torch.uint8)
    exact = 200 * 127 * 255
    raw = torch.ops.ursa.mm_raw(a, b)
    wrapped = ((exact + (1 << 19)) % (1 << 20)) - (1 << 19)
    assert (raw == wrapped).all() and wrapped != exact


@pytest.mark.parametrize("shape", [(5,), (3, 9), (2, 4, 9)])
def test_linear(shape):
    torch.manual_seed(len(shape))
    x = _rand(*shape[:-1], 300) if len(shape) > 1 else _rand(300)
    w = _rand(70, 300, lo=-128)
    y = torch.ops.ursa.linear(x, w)
    assert torch.equal(y, (x.long() @ w.long().t()).int())


@pytest.mark.parametrize("N,C,H,W,O,k,s,p", [
    (1, 1, 5, 5, 1, 1, 1, 0),
    (2, 3, 32, 32, 16, 3, 1, 1),
    (3, 16, 9, 11, 24, 3, 2, 1),
    (1, 3, 31, 29, 8, 7, 2, 3),
    (2, 64, 8, 8, 32, 1, 1, 0),
    (1, 128, 6, 6, 16, 3, 1, 1),  # K = 1152 > 256
])
@pytest.mark.parametrize("relu", [False, True])
def test_conv2d(N, C, H, W, O, k, s, p, relu):
    torch.manual_seed(N * C + H)
    x = _rand(N, C, H, W, lo=0 if relu else -127)
    w = _rand(O, C, k, k, lo=-128)
    y = torch.ops.ursa.conv2d(x, w, [s, s], [p, p])
    ref = F.conv2d(x.double(), w.double(), stride=s, padding=p).round().int()
    assert torch.equal(y, ref)


def test_conv2d_rect():
    torch.manual_seed(1)
    x, w = _rand(2, 5, 10, 13), _rand(6, 5, 3, 5)
    y = torch.ops.ursa.conv2d(x, w, [2, 1], [1, 2])
    assert torch.equal(y, F.conv2d(x.double(), w.double(), stride=(2, 1), padding=(1, 2)).round().int())


def test_bmm():
    torch.manual_seed(2)
    a, b = _rand(6, 17, 64), _rand(6, 64, 19)
    assert torch.equal(torch.ops.ursa.bmm(a, b), torch.bmm(a.long(), b.long()).int())


def test_noncontiguous():
    torch.manual_seed(3)
    a, b = _rand(40, 30).t(), _rand(50, 40).t()[:, ::2]
    assert torch.equal(torch.ops.ursa.mm(a, b), _ref_mm(a, b))


@pytest.mark.skipif(not hasattr(torch.library, "opcheck"), reason="torch.library.opcheck needs torch >= 2.4")
def test_opcheck():
    torch.manual_seed(4)
    x, w = _rand(2, 3, 8, 8), _rand(4, 3, 3, 3)
    torch.library.opcheck(torch.ops.ursa.conv2d.default, (x, w, [1, 1], [1, 1]),
                          test_utils=("test_schema", "test_faketensor"))
    torch.library.opcheck(torch.ops.ursa.linear.default, (_rand(5, 9), _rand(3, 9)),
                          test_utils=("test_schema", "test_faketensor"))
    torch.library.opcheck(torch.ops.ursa.bmm.default, (_rand(2, 5, 9), _rand(2, 9, 3)),
                          test_utils=("test_schema", "test_faketensor"))
