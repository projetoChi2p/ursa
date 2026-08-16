#!/usr/bin/env python3
"""
GEMM benchmark generator for a systolic array (URSA).

Emits two files:
  ursa_bench.h       -> types, case descriptors, PRNG, extern declarations
  ursa_bench_data.c  -> payload (literal matrices for the small cases)

Data for the large cases is NOT embedded: it is regenerated on the target by a
deterministic PRNG (xorshift32) replicated bit-for-bit in C. The header only
carries the seed and the golden checksum.

The element types of A, B and C, and the width of the internal accumulator,
are parameters. They must mirror data_a_t / data_b_t / data_c_t / macc_t in
the URSA settings.h -- if they diverge, the golden reference is wrong.

The accumulator is emulated faithfully: it wraps after every MAC, exactly like
the hardware PE does. This is what lets the generator report that a case
overflows the accumulator, instead of silently producing a golden value the
hardware can never match.

Usage:
    python3 gen_bench.py --outdir ./bench \
        --dtype-a int8 --dtype-b uint8 --dtype-c int32 --acc-bits 20
"""

import argparse
import os

try:
    import numpy as np
except ImportError:
    np = None


# --------------------------------------------------------------------------
# 0. Element types
# --------------------------------------------------------------------------

# name -> (width in bits, signed)
TYPES = {
    "int8":   (8,  True),
    "uint8":  (8,  False),
    "int16":  (16, True),
    "uint16": (16, False),
    "int32":  (32, True),
    "uint32": (32, False),
}


def c_name(t):
    """stdint.h spelling of a type name."""
    return t + "_t"


def type_cap(t):
    """Largest magnitude representable by type t (full-range default)."""
    bits, signed = TYPES[t]
    return (1 << (bits - 1)) - 1 if signed else (1 << bits) - 1


def rng_body(t):
    """C body that draws one element of type t, capped to magnitude `r`.

    Signed types draw from [-r, r], unsigned from [0, r]. One u32 is consumed
    per element regardless of width; the waste is irrelevant and it keeps the
    Python and C sequences trivially identical.
    """
    if TYPES[t][1]:
        return ("(%s)((int32_t)(bench_rng_u32() %% (uint32_t)(2*r + 1)) - r)"
                % c_name(t))
    return "(%s)(bench_rng_u32() %% (uint32_t)(r + 1))" % c_name(t)


def auto_caps(acc_bits, k):
    """Per-case magnitude caps that make accumulator overflow impossible.

    Worst case the accumulator reaches K * amax * bmax, so we need
    amax * bmax <= (2^(acc_bits-1) - 1) / K. The budget is split evenly
    between A and B. This is the pessimistic bound: with random signs the
    sum actually grows like sqrt(K), so real values stay well inside.
    """
    budget = ((1 << (acc_bits - 1)) - 1) // k
    if budget < 1:
        raise ValueError("acc_bits=%d cannot hold K=%d even with +/-1 inputs"
                         % (acc_bits, k))
    cap = 1
    while (cap + 1) * (cap + 1) <= budget:
        cap += 1
    return cap, cap


def wrap(x, bits):
    """Two's-complement wrap of a signed integer to `bits` bits."""
    if bits >= 64:
        return x
    half = 1 << (bits - 1)
    return ((x + half) % (1 << bits)) - half


# --------------------------------------------------------------------------
# 1. Case definitions
# --------------------------------------------------------------------------

GROUP1 = [8, 16, 32, 64, 128, 256, 512, 1024]  # square

# Group 2: row-irregular (tall and narrow). Pairs (R, C).
GROUP2 = [
    (16, 8), (64, 8), (256, 8), (1024, 8),
    (64, 16), (256, 16), (1024, 16),
    (64, 32), (256, 32), (1024, 32),
    (256, 64), (1024, 64),
    (256, 128), (1024, 128),
    (1024, 256),
    (1024, 512),
]

# Group 3: exact mirror of group 2 (column-irregular).
GROUP3 = [(c, r) for (r, c) in GROUP2]


def shape_to_mnk(r, c):
    """Map the 2D notation (R x C) onto the GEMM triple (M, N, K).

    Current convention: the output C is R x C, with reduction depth K = C.
        A: M x K = R x C
        B: K x N = C x C
    To change the interpretation, edit ONLY this function.
    """
    m, n = r, c
    k = c
    return m, n, k


def build_cases(max_k=None):
    """Build the case list, optionally dropping cases whose reduction depth K
    exceeds max_k.

    Beware: under the current shape_to_mnk convention K is the second number
    of the pair, so a K limit prunes group 3 far more aggressively than the
    others -- 'column-irregular' is by definition the large-K group.
    """
    cases = []
    for s in GROUP1:
        cases.append(("g1", s, s))
    for (r, c) in GROUP2:
        cases.append(("g2", r, c))
    for (r, c) in GROUP3:
        cases.append(("g3", r, c))

    if max_k is not None:
        cases = [(g, r, c) for (g, r, c) in cases if shape_to_mnk(r, c)[2] <= max_k]

    return cases


# --------------------------------------------------------------------------
# 2. Deterministic PRNG - must match the C version bit for bit
# --------------------------------------------------------------------------

class XorShift32:
    """Marsaglia's xorshift32. Chosen because it is trivial to replicate in C
    and does not depend on libc, which matters on a bare-metal Zynq."""

    def __init__(self, seed):
        self.s = seed & 0xFFFFFFFF
        if self.s == 0:
            self.s = 0x2545F491  # the zero state is absorbing

    def next_u32(self):
        x = self.s
        x ^= (x << 13) & 0xFFFFFFFF
        x ^= (x >> 17)
        x ^= (x << 5) & 0xFFFFFFFF
        self.s = x & 0xFFFFFFFF
        return self.s

    def draw(self, t, r):
        """One element of type t capped to magnitude r, matching rng_body(t)."""
        u = self.next_u32()
        if TYPES[t][1]:
            return (u % (2 * r + 1)) - r
        return u % (r + 1)

    def draw_many(self, t, r, count):
        return [self.draw(t, r) for _ in range(count)]


C_PRNG = r"""
/* xorshift32 - must produce the SAME sequence as the Python generator. */
static uint32_t bench_rng_state;

static inline void bench_rng_seed(uint32_t seed) {
    bench_rng_state = (seed == 0u) ? 0x2545F491u : seed;
}

static inline uint32_t bench_rng_u32(void) {
    uint32_t x = bench_rng_state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    bench_rng_state = x;
    return x;
}
"""


# --------------------------------------------------------------------------
# 3. Matrix generation
# --------------------------------------------------------------------------

def gen_matrices(m, n, k, seed, pattern, ta, tb, amax, bmax):
    """Return (A, B) as flat row-major lists.

    A: m x k of type ta, magnitudes capped at amax
    B: k x n of type tb, magnitudes capped at bmax

    Patterns:
      uniform  - fully random. Maximizes error propagation; this is the baseline.
      identity - A = I (truncated). Exact known result; separates SDC from SEFI.
      constant - A = 1, B = 1. High arithmetic masking; negative control.
    """
    rng = XorShift32(seed)

    if pattern == "uniform":
        A = rng.draw_many(ta, amax, m * k)
        B = rng.draw_many(tb, bmax, k * n)
    elif pattern == "identity":
        A = [1 if (i // k) == (i % k) else 0 for i in range(m * k)]
        B = rng.draw_many(tb, bmax, k * n)
    elif pattern == "constant":
        A = [1] * (m * k)
        B = [1] * (k * n)
    else:
        raise ValueError("unknown pattern: %s" % pattern)

    return A, B


def gemm_reference(A, B, m, n, k, acc_bits, c_bits):
    """Reference GEMM.

    Returns (C, overflowed) where C is the flat row-major result and
    `overflowed` says whether wrapping the accumulator changed the outcome,
    i.e. whether this case exercises the accumulator beyond its width.

    The accumulator wraps after every MAC, mirroring the PE.
    """
    if np is not None:
        a = np.asarray(A, dtype=np.int64).reshape(m, k)
        b = np.asarray(B, dtype=np.int64).reshape(k, n)

        exact = a @ b

        if acc_bits >= 64:
            acc = exact
        else:
            half = np.int64(1) << np.int64(acc_bits - 1)
            mod = np.int64(1) << np.int64(acc_bits)
            acc = np.zeros((m, n), dtype=np.int64)
            for kk in range(k):
                acc += np.outer(a[:, kk], b[kk, :])
                acc = ((acc + half) % mod) - half

        overflowed = bool(np.any(acc != exact))
        out = acc
        if c_bits < 64:
            half = np.int64(1) << np.int64(c_bits - 1)
            mod = np.int64(1) << np.int64(c_bits)
            out = ((out + half) % mod) - half
        return out.reshape(-1).tolist(), overflowed

    # Pure-Python fallback. O(m*n*k); only sane for small cases.
    C = [0] * (m * n)
    exact = [0] * (m * n)
    for i in range(m):
        row, out = i * k, i * n
        for kk in range(k):
            a = A[row + kk]
            if a == 0:
                continue
            brow = kk * n
            for j in range(n):
                p = a * B[brow + j]
                exact[out + j] += p
                C[out + j] = wrap(C[out + j] + p, acc_bits)
    overflowed = any(C[i] != exact[i] for i in range(m * n))
    return [wrap(v, c_bits) for v in C], overflowed


def checksum32(vals):
    """32-bit FNV-1a over the result. Acts as a compact golden reference:
    it detects SDC without storing the whole C matrix."""
    h = 0x811C9DC5
    for v in vals:
        u = v & 0xFFFFFFFF
        for shift in (0, 8, 16, 24):
            h ^= (u >> shift) & 0xFF
            h = (h * 0x01000193) & 0xFFFFFFFF
    return h


# --------------------------------------------------------------------------
# 4. File emission
# --------------------------------------------------------------------------

def fmt_array(name, ctype, vals, per_line=16):
    out = ["const %s %s[%d] = {" % (ctype, name, len(vals))]
    for i in range(0, len(vals), per_line):
        chunk = ", ".join(str(v) for v in vals[i:i + per_line])
        out.append("    " + chunk + ",")
    out.append("};")
    return "\n".join(out)


def emit(outdir, cases, literal_max, pattern, base_seed, ta, tb, tc, acc_bits,
         range_a, range_b, auto_range):
    os.makedirs(outdir, exist_ok=True)

    c_bits = TYPES[tc][0]
    meta, data_blocks, extern_decls = [], [], []
    n_overflow = 0

    for idx, (grp, r, c) in enumerate(cases):
        m, n, k = shape_to_mnk(r, c)
        seed = (base_seed + idx * 0x9E3779B9) & 0xFFFFFFFF
        tag = "%s_%dx%d" % (grp, r, c)

        if auto_range:
            amax, bmax = auto_caps(acc_bits, k)
        else:
            amax, bmax = range_a, range_b
        # never exceed what the element type can hold
        amax = min(amax, type_cap(ta))
        bmax = min(bmax, type_cap(tb))

        A, B = gen_matrices(m, n, k, seed, pattern, ta, tb, amax, bmax)
        C, ovf = gemm_reference(A, B, m, n, k, acc_bits, c_bits)
        cks = checksum32(C)
        n_overflow += ovf

        literal = max(m, n, k) <= literal_max
        if literal:
            data_blocks.append(fmt_array("bench_A_" + tag, c_name(ta), A))
            data_blocks.append(fmt_array("bench_B_" + tag, c_name(tb), B))
            data_blocks.append(fmt_array("bench_C_" + tag, c_name(tc), C))
            extern_decls.append(
                "extern const %-9s bench_A_%s[%d];\n"
                "extern const %-9s bench_B_%s[%d];\n"
                "extern const %-9s bench_C_%s[%d];"
                % (c_name(ta), tag, m * k,
                   c_name(tb), tag, k * n,
                   c_name(tc), tag, m * n))

        meta.append(dict(tag=tag, grp=grp, m=m, n=n, k=k, seed=seed,
                         cks=cks, literal=literal, ovf=ovf,
                         amax=amax, bmax=bmax))
        print("  %-16s M=%-5d N=%-5d K=%-5d  a<=%-4d b<=%-4d %-7s cks=0x%08X%s"
              % (tag, m, n, k, amax, bmax, "literal" if literal else "prng",
                 cks, "   <-- ACC OVERFLOW" if ovf else ""))

    # ---- header -----------------------------------------------------------
    h = []
    h.append("/* Generated by gen_bench.py. Do not edit by hand. */")
    h.append("/* pattern=%s  literal_max=%d  cases=%d */"
             % (pattern, literal_max, len(cases)))
    h.append("/* dtypes: A=%s B=%s C=%s  acc_bits=%d */"
             % (ta, tb, tc, acc_bits))
    h.append("#ifndef URSA_BENCH_H")
    h.append("#define URSA_BENCH_H")
    h.append("")
    h.append("#include <stdint.h>")
    h.append("")
    h.append("/* Element types. These MUST mirror data_a_t / data_b_t / data_c_t")
    h.append("   in settings.h. If they diverge, the golden values are invalid. */")
    h.append("typedef %-9s bench_a_t;" % c_name(ta))
    h.append("typedef %-9s bench_b_t;" % c_name(tb))
    h.append("typedef %-9s bench_c_t;" % c_name(tc))
    h.append("")
    h.append("/* Width of the internal MAC accumulator assumed by the golden")
    h.append("   reference; mirrors macc_t. The reference wraps at this width. */")
    h.append("#define BENCH_ACC_BITS %d" % acc_bits)
    h.append("")
    h.append("#define BENCH_NUM_CASES %d" % len(cases))
    h.append("#define BENCH_MAX_M %d" % max(x["m"] for x in meta))
    h.append("#define BENCH_MAX_N %d" % max(x["n"] for x in meta))
    h.append("#define BENCH_MAX_K %d" % max(x["k"] for x in meta))
    h.append("")
    h.append("typedef struct {")
    h.append("    const char *name;   /* case identifier                     */")
    h.append("    uint8_t     group;  /* 1=square 2=row-irr 3=col-irr        */")
    h.append("    uint16_t    M, N, K;")
    h.append("    uint32_t    seed;   /* xorshift32 seed                     */")
    h.append("    uint32_t    golden; /* FNV-1a of C, for SDC detection      */")
    h.append("    uint8_t     has_literal;  /* 1 if matrices live in the .c  */")
    h.append("    uint8_t     acc_overflow; /* 1 if the case wraps the accum */")
    h.append("    int32_t     amax, bmax;   /* magnitude caps used for A / B */")
    h.append("} bench_case_t;")
    h.append("")
    h.append("extern const bench_case_t bench_cases[BENCH_NUM_CASES];")
    h.append("")
    if extern_decls:
        h.append("/* Small cases: literal matrices for bit-exact verification. */")
        h.extend(extern_decls)
        h.append("")
    h.append(C_PRNG)
    h.append("/* Capped draws. r bounds the magnitude: [-r, r] signed, [0, r]")
    h.append("   unsigned. Capping the inputs is what keeps K * amax * bmax")
    h.append("   inside the accumulator, so the array never wraps. */")
    h.append("static inline bench_a_t bench_rng_a(int32_t r) { return %s; }"
             % rng_body(ta))
    h.append("static inline bench_b_t bench_rng_b(int32_t r) { return %s; }"
             % rng_body(tb))
    h.append("")
    h.append("/* Regenerate A and B on the target. Must match the Python generator. */")
    h.append("static inline void bench_fill(const bench_case_t *tc,")
    h.append("                              bench_a_t *A, bench_b_t *B) {")
    h.append("    uint32_t i;")
    h.append("    bench_rng_seed(tc->seed);")
    h.append("    for (i = 0; i < (uint32_t)tc->M * tc->K; ++i) A[i] = bench_rng_a(tc->amax);")
    h.append("    for (i = 0; i < (uint32_t)tc->K * tc->N; ++i) B[i] = bench_rng_b(tc->bmax);")
    h.append("}")
    h.append("")
    h.append("/* FNV-1a over C, to be compared against tc->golden. */")
    h.append("static inline uint32_t bench_checksum(const bench_c_t *C, uint32_t n) {")
    h.append("    uint32_t h = 0x811C9DC5u, i, s;")
    h.append("    for (i = 0; i < n; ++i) {")
    h.append("        uint32_t u = (uint32_t)C[i];")
    h.append("        for (s = 0; s < 32u; s += 8u) {")
    h.append("            h ^= (u >> s) & 0xFFu;")
    h.append("            h *= 0x01000193u;")
    h.append("        }")
    h.append("    }")
    h.append("    return h;")
    h.append("}")
    h.append("")
    h.append("#endif /* URSA_BENCH_H */")

    with open(os.path.join(outdir, "ursa_bench.h"), "w") as f:
        f.write("\n".join(h) + "\n")

    # ---- payload ----------------------------------------------------------
    d = ['/* Generated by gen_bench.py. Do not edit by hand. */',
         '#include "ursa_bench.h"',
         "",
         "/* Guard against a settings.h that no longer matches this benchmark. */",
         "typedef char bench_assert_a[(sizeof(bench_a_t) == %d) ? 1 : -1];"
         % (TYPES[ta][0] // 8),
         "typedef char bench_assert_b[(sizeof(bench_b_t) == %d) ? 1 : -1];"
         % (TYPES[tb][0] // 8),
         "typedef char bench_assert_c[(sizeof(bench_c_t) == %d) ? 1 : -1];"
         % (TYPES[tc][0] // 8),
         ""]
    d.append("const bench_case_t bench_cases[BENCH_NUM_CASES] = {")
    for x in meta:
        d.append('    { "%s", %s, %d, %d, %d, 0x%08Xu, 0x%08Xu, %d, %d, %d, %d },'
                 % (x["tag"], x["grp"][1], x["m"], x["n"], x["k"],
                    x["seed"], x["cks"], 1 if x["literal"] else 0,
                    1 if x["ovf"] else 0, x["amax"], x["bmax"]))
    d.append("};")
    d.append("")
    d.extend(data_blocks)

    with open(os.path.join(outdir, "ursa_bench_data.c"), "w") as f:
        f.write("\n".join(d) + "\n")

    return n_overflow


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--outdir", default="./bench")
    p.add_argument("--literal-max", type=int, default=64,
                   help="largest dimension still emitted literally into the .c")
    p.add_argument("--pattern", default="uniform",
                   choices=["uniform", "identity", "constant"])
    p.add_argument("--seed", type=lambda s: int(s, 0), default=0xC0FFEE)
    p.add_argument("--dtype-a", default="int8", choices=sorted(TYPES))
    p.add_argument("--dtype-b", default="uint8", choices=sorted(TYPES))
    p.add_argument("--dtype-c", default="int32", choices=sorted(TYPES))
    p.add_argument("--acc-bits", type=int, default=32,
                   help="width of the MAC accumulator (macc_t); "
                        "the golden reference wraps at this width")
    p.add_argument("--max-k", type=int, default=None,
                   help="drop cases whose reduction depth K exceeds this; "
                        "use it to keep the suite inside the accumulator range")
    p.add_argument("--range-a", type=int, default=None,
                   help="magnitude cap for A (default: full type range)")
    p.add_argument("--range-b", type=int, default=None,
                   help="magnitude cap for B (default: full type range)")
    p.add_argument("--auto-range", action="store_true",
                   help="derive per-case caps from acc-bits and K so that "
                        "accumulator overflow is impossible by construction")
    a = p.parse_args()

    cases = build_cases(a.max_k)
    if a.max_k is not None:
        n_by_grp = {}
        for (g, _, _) in cases:
            n_by_grp[g] = n_by_grp.get(g, 0) + 1
        print("K limited to %d: kept %d of 40 cases (g1=%d g2=%d g3=%d)"
              % (a.max_k, len(cases), n_by_grp.get("g1", 0),
                 n_by_grp.get("g2", 0), n_by_grp.get("g3", 0)))

    range_a = a.range_a if a.range_a is not None else type_cap(a.dtype_a)
    range_b = a.range_b if a.range_b is not None else type_cap(a.dtype_b)
    print("Generating %d cases (pattern=%s, A=%s B=%s C=%s, acc=%d bits)..."
          % (len(cases), a.pattern, a.dtype_a, a.dtype_b, a.dtype_c, a.acc_bits))
    if np is None:
        print("  [warn] numpy not found - falling back to pure Python (slow)")

    n_ovf = emit(a.outdir, cases, a.literal_max, a.pattern, a.seed,
                 a.dtype_a, a.dtype_b, a.dtype_c, a.acc_bits,
                 range_a, range_b, a.auto_range)

    print("\nOK -> %s/ursa_bench.h  +  %s/ursa_bench_data.c" % (a.outdir, a.outdir))
    if n_ovf:
        print("[warn] %d of %d cases wrap the %d-bit accumulator. The golden "
              "values model that wrap, so they stay valid -- but such cases "
              "measure saturation, not arithmetic." % (n_ovf, len(cases), a.acc_bits))


if __name__ == "__main__":
    main()
