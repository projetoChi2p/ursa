# URSA build and measurement flow

Four scripts, run in order. Each one feeds the next.

```
02_do_hls_all.sh  ->  03_do_bitstreams.sh  ->  04_do_vitis.sh  ->  05_run_board.py
     IP cores            bitstreams              ELFs               results/*.csv
```

`01_do_cmake.sh` is older and not part of this chain. It builds the benchmark
for Linux, useful to check the suite before touching the board.

Three axes run through the flow, and keeping them apart explains most of the
design:

- **array size and layout** decide the hardware, so they reach `02` and `03`
- **test mode and cache configuration** decide the software, so they reach `04`
- **mitigation** decides the bitstream, so it reaches `03`

`05` pairs one bitstream with one ELF, chosen independently. A triplicated
design keeps the accelerator at the same base address as its unmitigated twin,
so the two share an ELF.

---

## 02_do_hls_all.sh

Synthesizes the URSA IP, one per array size.

**Writes:** `ip_ursa/ursa_vanilla_<N>x<N>_acc<A>/`, reports, `summary.csv`
**Sweep:** sizes 2, 4, 8, 16 at 20 accumulator bits

Sizes 6, 10, 12 and 14 are left out: every benchmark dimension is a power of
two and the shell tiles by integer division, so they would run no cases.

`SA_SIZE` and `ACC_BITS` arrive as `-D` flags, which is why `settings.h` guards
both with `#ifndef`. Skips any IP whose `.zip` exists.

---

## 03_do_bitstreams.sh

Builds the vanilla characterization matrix (12 builds) and the mitigated
designs of the irradiation campaign (6 builds).

**Writes:** `bitstreams/*.bit`, `*_scrub.bit`, `*.ebc`, `*.ebd`, `*.xsa`,
reports, logs, `summary.csv`

Every IP packages under the same VLNV, so what picks the array size is which
directory `ip_repo_paths` points at. Each build gets a fresh project for that
reason: reusing one would leave the previous IP cached. `build_one.tcl` takes
everything as arguments and never needs editing.

### The build table

The vanilla matrix is a cartesian product. Mitigation is not uniform across the
other axes, so those designs are listed one per line in `BUILDS`, each with its
campaign ID in a comment:

```
sa_size  acc_bits  layout  mitig  bd_tcl  xdc|none  scrub(off|on|both)
```

`mitig` becomes part of the build name, so a mitigated design never overwrites
its vanilla twin. One block design script serves every array size, so
`bd_ocm_tmr.tcl` covers both triplicated OCM designs.

Two block designs are still missing, `bd_bram_edac.tcl` and
`xdc/pblocks_tmr_fp.xdc`. Their lines are commented out. Missing files are not
fatal: the build is recorded as `no_bd` or `no_xdc` and the sweep continues.

### Selecting what to build

```bash
ONLY='bram_tmr$' ./03_do_bitstreams.sh   # one build
ONLY='tmr'       ./03_do_bitstreams.sh   # the six mitigated designs
SCRUB=table      ./03_do_bitstreams.sh   # honour the scrub column
SCRUB=both       ./03_do_bitstreams.sh   # both bitstreams for every build
```

`ONLY` is a regular expression matched against the build name; the count of
selected builds is printed before the sweep starts. `SCRUB` defaults to `off`.

The build name does not record the scrub setting, so a design built with
`SCRUB=off` **is** reimplemented by a later `SCRUB=table` run. If both
bitstreams are wanted, ask for them in the same run.

### Things that bite

**Scrubbing is a bitstream property**, not a netlist change, so the scrubbed
variant reuses the implementation. `build_one.tcl` writes it as
`<name>_scrub.bit` with `POST_CRC` and `CORRECT_AND_CONTINUE` at 50 MHz.

**The XSA is not scrubbed.** `write_hw_platform` embeds the bitstream from
`impl_1`, written before any bitstream property is applied. Program the board
from `bitstreams/*.bit`, never from the XSA.

**`add_cells_to_pblock` is usually written with `-quiet`**, so a Pblock whose
cell paths no longer match silently constrains nothing and the build succeeds
with no floorplanning at all. Check the paths with `get_cells` after exporting
a new block design.

**Essential bits need their own `write_bitstream`.**
`BITSTREAM.SEU.ESSENTIALBITS` is a property of the implemented design, so it
can only be set after `open_run impl_1`. The XSA must be exported before that
second pass, because `write_hw_platform` reads the `.bit` out of the run
directory. `BITSTREAM.GENERAL.COMPRESS` is forced FALSE, since the mask maps
frame by frame onto an uncompressed bitstream. The count exists only in the
log, so the script greps it out.

The `.ebd` files are about 25 MB each. Keep `bitstreams/*.eb[cd]` out of
version control.

### summary.csv

```
build, variant, sa_size, acc_bits, layout, mitig, scrub, status,
wns_ns, whs_ns, lut, lut_pct, ff, ff_pct, dsp, dsp_pct, bram, bram_pct,
essential_bits, total_cram_bits
```

Utilisation comes from `report_utilization`, not from counting cells: the
report adjusts for LUT combining, and counting overstates occupancy by around
20 percent. The scope is the whole wrapper, which in a triplicated build covers
all three replicas and the five voters. Per-IP numbers are in
`*_utilization_hier.rpt`.

Setup and hold are reported separately, because one `get_timing_paths` call
returns whichever is worse, usually hold.

**The 16x16 builds do not close timing at 100 MHz**: setup slack is −0.419 ns
on bram, −0.345 on hybrid, −0.276 on ocm, so Fmax is around 96 MHz. They still
produce a bitstream. They also saturate the device at 220 of 220 DSPs, which is
why no 16x16 design is triplicated.

---

## 04_do_vitis.sh

Compiles the application, 12 ELFs per invocation.

**Writes:** `elfs/*.elf`, `elfs/summary_<mode>.csv`

Three platforms cover the sweep: the platform fixes the address map and the
BSP, and those do not change with array size. Drives CMake directly, which
needs the system CMake (the one bundled with Vitis wants `libidn.so.11`) and
`ESW_REPO` exported.

| MODE | application | what it runs |
|------|-------------|--------------|
| `bench` (default) | `mxm-ursa` | the generated 14-case suite |
| `free` | `mxm-ursa` | the shape table in `tb_main.cpp` |
| `cnn` | `cnn-sat-6` | SAT-6 inference, one row per image |

`CACHE_I` and `CACHE_D` are orthogonal to `MODE` and add a suffix to the ELF
name (`-nci`, `-ncd`), so both configurations sit in `elfs/` at once.

```bash
MODE=cnn ./04_do_vitis.sh                  # both caches on
MODE=cnn CACHE_I=off ./04_do_vitis.sh      # I-cache off
```

### Things that bite

**The define is `FREE_RUN`, not `RUN_FREE`.** The shell variable and the macro
the code reads must agree. They did not for a while, and the symptom is silent:
`ursa.h` falls back to its `#ifndef` default of 0 and every `MODE=free` build
quietly compiles the benchmark. Nothing fails; the output is simply the wrong
table. A free run that prints `up to 6 cases per group` instead of
`### MODE RUN FREE ###` has this problem.

**An existing ELF is skipped.** After editing sources, delete first:

```bash
rm -f elfs/free_vanilla_*.elf
MODE=free ./04_do_vitis.sh
```

**Check the section sizes** in `summary_<mode>.csv`. With the I-cache off,
`text` must differ from the cached build. On BRAM the gap is around 2.7 kB,
because the cached build drops the cache library entirely; on OCM and hybrid it
is a few bytes, because those layouts call `Xil_DCacheFlushRange` either way.
A small gap is not a red flag; an identical one is.

---

## 05_run_board.py

Programs the board, runs one test, captures the serial output into a CSV.

`xsct` must be on the `PATH`:

```bash
source /opt/Xilinx/Vitis/2023.2/settings64.sh
```

### Picking the ELF and the bitstream

Four arguments, because the ELF and the bitstream vary along different axes:

| argument | what it names | example |
|---|---|---|
| `--variant` | the ELF | `vanilla-nci` |
| `--hw-variant` | the `.bit` and `.xsa` | `vanilla` |
| `--mitig` | the bitstream only | `tmr`, `tmr_edac` |
| `--scrub` | loads `<name>_scrub.bit` | flag |

The cache configuration is software-only, so `--hw-variant` keeps the bitstream
lookup on the plain name. Mitigation is the mirror image: it changes the
bitstream and not the ELF.

### One layout at a time

Run one layout per invocation, power cycling the board in between. Switching
between block designs in one go wedges the JTAG link with an AHB AP transaction
error, and only a power cycle clears it.

Each call writes its own file, so a failure never destroys earlier results.
Joining afterwards:

```bash
head -1 results/free_bram.csv > results/free_all.csv
tail -q -n +2 results/free_{bram,ocm,hybrid}.csv >> results/free_all.csv
```

Name the files explicitly rather than globbing, or the joined file ends up in
its own input on a second run.

Useful flags: `--sizes 8`, `--echo`, `--timeout 600`, `--port /dev/ttyUSB1`.
The port default is `/dev/ttyUSB0`, but the board exposes two FTDI interfaces
and which one carries the UART depends on enumeration order. Zero bytes
captured with no other error means the wrong port.

### Things that bite

**Both cores must be halted before `ps7_init`.** Stopping only core 0 leaves
core 1 running, and on the OCM and hybrid designs that wedges the link: those
reach memory through the ACP, which shares the SCU with both cores. BRAM
tolerates it because it goes through the GP port. This cost a long debugging
session; the stop sequence in the xsct template is not optional.

**`ps7_init.tcl` comes from the XSA of the build being loaded.** The three
block designs configure the PS differently and the files are not
interchangeable.

**A missing terminator costs the full timeout, not the data.** A run ends when
its terminator arrives: `N passed, M failed` for `bench` and `free`, the last
line of the stage breakdown for `cnn`. Without one the rows are still captured,
but the reader waits out `--timeout` and reports `N rows captured (no summary
line)`.

**The script checks two things for you.** The board prints the `SA_SIZE` it was
built with and its cache configuration, and both are compared against what the
file names promised. A mismatch means the wrong ELF is running.

### Output columns

`bench` and `free`:

```
mode, variant, mitig, scrub, cache_i, sa_size, layout, case,
P, Q, M, tiles, k_it, us_tot, us, cyc_kit, checksum, check
```

`tiles`, `k_it`, `us_tot`, `cyc_kit` and `checksum` are filled only by `free`.

`cnn`:

```
mode, variant, mitig, scrub, cache_i, sa_size, layout,
image, image_id, gold, pred, correct, us_tot, us, fps,
accuracy, inferences, us_per_image, fps_run,
im2col_us, transfer_us, gemm_us, other_us, pooling
```

Everything from `accuracy` onwards is per run, copied onto every row so the CSV
can be grouped without a join.

`mitig` and `scrub` are not decorative: designs 14 and 25 are both an 8x8 bram
CNN run and differ only in mitigation, as are 21 and 17 on hybrid. Without
those columns their rows are indistinguishable once the CSVs are joined.

---

## The free run

`MODE=free` runs a hand-written shape table instead of the generated suite,
because the suite cannot answer two questions: it never runs `P = Q = SA_SIZE`,
so it cannot show what a single tile costs, and it has `Q = M` in every case,
so it cannot tell the tile count apart from the reduction depth.

The table has three blocks. The first pins the tile count at 1 with M swept, so
the time is a straight line in M whose slope is the cost of one k-loop
iteration. The second sweeps P with Q pinned; the third sweeps Q with P pinned.

P and Q in the second and third blocks are absolute, not `SA_SIZE`-relative, so
the same shapes run on every array size and what changes is the tile count.
Every value is a multiple of 16.

There is no golden value, since a free shape never went through
`gen_bench.py`. The checksum is printed instead and must stay the same when a
shape runs again. Operands are capped at `amax = bmax = 3`, so the accumulator
cannot overflow at any M in the table.

`free_iters` is 100 calls per shape, timed as one batch. `app_timer_total_us`
truncates to whole microseconds and the smallest shapes take well under one, so
dropping to 10 calls pushes the truncation error on a single 2x2 tile from 3
percent to over 30 — exactly where the model's intercept is measured. The
iteration count is not what to cut when a sweep feels slow.

---

## Validating a run

**Correctness.** Every row `ok` in the GEMM modes, `accuracy` at the expected
value in `cnn`. One FAIL invalidates everything downstream.

**Coverage.** In `bench`, 14 cases each for sizes 2, 4 and 8 and 8 for size 16,
so 50 rows per layout. In `free`, one row per shape, for every size. Fewer
means a case was never captured and that measurement does not exist.

**Agreement with the previous sweep.** Compare point by point against the old
CSVs. A few microseconds of difference is timer resolution; a systematic shift
across a whole layout is something real.

Two sets of performance numbers exist for this project, measured under
different conditions and with different instrumentation. Do not mix them in one
comparison.

---

## Known issues

**The 16x16 free run hangs at initialization.** The board prints the banner and
the `[init]` lines and stops before the first shape. The other three sizes
complete. The 16x16 builds are also the ones with negative setup slack, so
timing is the first suspect; the same bitstream has run the benchmark
successfully, which makes it worth comparing layouts before blaming the shape
table.

---

## Configurations

| layout | A (weights) | B (inputs) | C (fmaps) |
|--------|-------------|------------|-----------|
| bram   | BRAM 4K     | BRAM 16K   | BRAM 16K  |
| ocm    | OCM 4K      | OCM 16K    | OCM 16K   |
| hybrid | BRAM 4K     | OCM 16K    | OCM 16K   |

C limits the case list: it holds 32-bit values, so four bytes per element. With
these sizes, 14 of the 40 benchmark cases fit, and at SA_SIZE 16 only 8 of
those run.

Anything on OCM needs cache maintenance around the accelerator call. BRAM at
0x40000000 is device memory and does not.

---

# Runbook

The commands that produced the current results. 84 board runs: 72 vanilla and
12 mitigated.

## 1. Hardware

```bash
./02_do_hls_all.sh
./03_do_bitstreams.sh
```

18 bitstreams, no scrubbing. Add `SCRUB=table` for the scrubbed set.

## 2. Software

Six invocations, 72 ELFs. Nothing here depends on mitigation.

```bash
MODE=bench ./04_do_vitis.sh
MODE=bench CACHE_I=off ./04_do_vitis.sh

MODE=cnn ./04_do_vitis.sh
MODE=cnn CACHE_I=off ./04_do_vitis.sh

MODE=free ./04_do_vitis.sh
MODE=free CACHE_I=off ./04_do_vitis.sh
```

## 3. Board, vanilla

18 runs of four array sizes each. Power cycle the board when the layout
changes.

```bash
R=05_run_board.py
NCI="--variant vanilla-nci --hw-variant vanilla"

# bench
python3 $R --mode bench --layouts bram        --out results/bench_bram.csv
python3 $R --mode bench --layouts bram   $NCI --out results/bench_bram_nci.csv
python3 $R --mode bench --layouts hybrid      --out results/bench_hybrid.csv
python3 $R --mode bench --layouts hybrid $NCI --out results/bench_hybrid_nci.csv
python3 $R --mode bench --layouts ocm         --out results/bench_ocm.csv
python3 $R --mode bench --layouts ocm    $NCI --out results/bench_ocm_nci.csv

# cnn
python3 $R --mode cnn --layouts bram        --out results/cnn_bram.csv
python3 $R --mode cnn --layouts bram   $NCI --out results/cnn_bram_nci.csv
python3 $R --mode cnn --layouts hybrid      --out results/cnn_hybrid.csv
python3 $R --mode cnn --layouts hybrid $NCI --out results/cnn_hybrid_nci.csv
python3 $R --mode cnn --layouts ocm         --out results/cnn_ocm.csv
python3 $R --mode cnn --layouts ocm    $NCI --out results/cnn_ocm_nci.csv

# free
python3 $R --mode free --layouts bram        --out results/free_bram.csv
python3 $R --mode free --layouts bram   $NCI --out results/free_bram_nci.csv
python3 $R --mode free --layouts hybrid      --out results/free_hybrid.csv
python3 $R --mode free --layouts hybrid $NCI --out results/free_hybrid_nci.csv
python3 $R --mode free --layouts ocm         --out results/free_ocm.csv
python3 $R --mode free --layouts ocm    $NCI --out results/free_ocm_nci.csv
```

## 4. Board, campaign designs

12 runs, CNN only, one array size each. The ELF is the vanilla one: a
triplicated design keeps the accelerator at the same base address.

The numbers in the comments are the design IDs of Table 5.1.

```bash
# 22 — OCM 4x4 TMR
python3 $R --mode cnn --sizes 4 --layouts ocm --mitig tmr      --out results/cnn_ocm_tmr_4x4.csv
python3 $R --mode cnn --sizes 4 --layouts ocm --mitig tmr $NCI --out results/cnn_ocm_tmr_4x4_nci.csv

# 16 — OCM 8x8 TMR
python3 $R --mode cnn --sizes 8 --layouts ocm --mitig tmr      --out results/cnn_ocm_tmr.csv
python3 $R --mode cnn --sizes 8 --layouts ocm --mitig tmr $NCI --out results/cnn_ocm_tmr_nci.csv

# 14 — BRAM 8x8 TMR
python3 $R --mode cnn --sizes 8 --layouts bram --mitig tmr      --out results/cnn_bram_tmr.csv
python3 $R --mode cnn --sizes 8 --layouts bram --mitig tmr $NCI --out results/cnn_bram_tmr_nci.csv

# 25 — BRAM 8x8 TMR+EDAC
python3 $R --mode cnn --sizes 8 --layouts bram --mitig tmr_edac      --out results/cnn_bram_tmr_edac.csv
python3 $R --mode cnn --sizes 8 --layouts bram --mitig tmr_edac $NCI --out results/cnn_bram_tmr_edac_nci.csv

# 21 — Hybrid 8x8 TMR
python3 $R --mode cnn --sizes 8 --layouts hybrid --mitig tmr      --out results/cnn_hybrid_tmr.csv
python3 $R --mode cnn --sizes 8 --layouts hybrid --mitig tmr $NCI --out results/cnn_hybrid_tmr_nci.csv

# 17 — Hybrid 8x8 TMR+EDAC
python3 $R --mode cnn --sizes 8 --layouts hybrid --mitig tmr_edac      --out results/cnn_hybrid_tmr_edac.csv
python3 $R --mode cnn --sizes 8 --layouts hybrid --mitig tmr_edac $NCI --out results/cnn_hybrid_tmr_edac_nci.csv
```

Run design 14 first and compare its accuracy against the vanilla 8x8 bram CNN
run. The triplicated block designs give replicas 1 and 2 their own address
ranges, and if the voter does not make all three answer at `0x40000000` the
result comes out wrong rather than failing outright.

## 5. Aligning older CSVs

`mitig` and `scrub` were added to the output after the vanilla runs were
collected. To line the older files up before joining:

```bash
for f in results/{bench,cnn,free}_{bram,hybrid,ocm}{,_nci}.csv; do
  [ -f "$f" ] || continue
  awk -F, -v OFS=, 'NR==1{$2=$2",mitig,scrub"} NR>1{$2=$2",none,off"} 1' \
      "$f" > "$f.tmp" && mv "$f.tmp" "$f"
done
```