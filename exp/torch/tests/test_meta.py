"""Tests that never multiply on the accelerator: fake shapes, dtype policy, the
guard planner, swap bookkeeping."""

import pytest
import torch
import torch.nn.functional as F
from torch._subclasses.fake_tensor import FakeTensorMode

import ursa_torch
from ursa_torch import _meta, swap

needs_fake = pytest.mark.skipif(not _meta.REGISTERED, reason="fake kernels need torch >= 2.1")
_SWAPPED = [(F, "linear"), (F, "conv2d"), (F, "scaled_dot_product_attention"), (torch, "matmul"),
            (torch, "bmm"), (torch.Tensor, "__matmul__"), (torch.overrides, "has_torch_function")]

ACC_MAX, ACC_MIN = (1 << 19) - 1, -(1 << 19)


@needs_fake
def test_fake_shapes():
    with FakeTensorMode():
        x = torch.empty(2, 3, 10, 12, dtype=torch.int8)
        w = torch.empty(8, 3, 3, 5, dtype=torch.int8)
        y = torch.ops.ursa.conv2d(x, w, [2, 1], [1, 2])
        assert y.shape == (2, 8, 5, 12) and y.dtype == torch.int32
        a = torch.empty(4, 7, 9, dtype=torch.int8)
        assert torch.ops.ursa.linear(a, torch.empty(5, 9, dtype=torch.int8)).shape == (4, 7, 5)
        assert torch.ops.ursa.bmm(a, torch.empty(4, 9, 3, dtype=torch.int8)).shape == (4, 7, 3)
        assert torch.ops.ursa.mm(a[0], torch.empty(9, 2, dtype=torch.int8)).shape == (7, 2)


@pytest.mark.parametrize("op", ["mm", "linear"])
def test_rejects_float(op):
    a = torch.randn(4, 4)
    with pytest.raises(RuntimeError, match="int8"):
        getattr(torch.ops.ursa, op)(a, a)
    if not _meta.REGISTERED:
        return
    with FakeTensorMode(), pytest.raises(RuntimeError, match="int8"):
        getattr(torch.ops.ursa, op)(torch.empty(4, 4), torch.empty(4, 4))


def _check_plan(a, bmax, bounds):
    assert bounds[0] == 0 and bounds[-1] == a.shape[1]
    assert all(k0 < k1 for k0, k1 in zip(bounds, bounds[1:]))
    b = 1
    while b < bmax:
        b = 2 * b + 1
    for k0, k1 in zip(bounds, bounds[1:]):
        c = a[:, k0:k1].long()
        assert (c.clamp(min=0).sum(1) * b <= ACC_MAX).all()
        assert (c.clamp(max=0).sum(1) * b >= ACC_MIN).all()
        if k1 < a.shape[1]:  # greedy: the next column would not have fit
            c = a[:, k0:k1 + 1].long()
            assert ((c.clamp(min=0).sum(1) * b > ACC_MAX) | (c.clamp(max=0).sum(1) * b < ACC_MIN)).any()


@pytest.mark.parametrize("bmax", [1, 15, 127, 255])
def test_plan(bmax):
    torch.manual_seed(bmax)
    for a in (torch.randint(-128, 128, (17, 900), dtype=torch.int8),
              torch.full((3, 300), 127, dtype=torch.int8),
              torch.full((3, 300), -128, dtype=torch.int8),
              torch.zeros(2, 50, dtype=torch.int8)):
        _check_plan(a, bmax, torch.ops.ursa.plan(a, bmax))


def test_plan_worst_case_chunk():
    # 127 * 255 per step: 16 steps fit in 2^19 - 1, 17 do not
    bounds = torch.ops.ursa.plan(torch.full((1, 64), 127, dtype=torch.int8), 255)
    assert bounds == [0, 16, 32, 48, 64]


def test_swap_restores_originals():
    def current():
        return [getattr(o, n, None) for o, n in _SWAPPED]

    before = current()
    mha = getattr(torch.backends, "mha", None)
    fp = mha.get_fastpath_enabled() if mha else None
    with ursa_torch.enabled():
        assert swap.is_enabled() and F.linear is not before[0]
        if mha:
            assert not mha.get_fastpath_enabled()
        else:
            assert torch.overrides.has_torch_function((torch.ones(1),))
    assert current() == before
    if mha:
        assert mha.get_fastpath_enabled() == fp


def test_swap_passes_integers_through():
    a = torch.arange(6).view(2, 3)
    with ursa_torch.enabled():
        assert torch.equal(a @ a.t(), torch.tensor([[5, 14], [14, 50]]))


def test_swap_strict_unsupported():
    x, w = torch.randn(1, 4, 5, 5), torch.randn(4, 1, 3, 3)
    with ursa_torch.enabled(strict=True), pytest.raises(ursa_torch.UrsaUnsupportedError):
        F.conv2d(x, w, groups=4)
