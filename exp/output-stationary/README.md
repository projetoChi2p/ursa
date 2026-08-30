# URSA build and measurement flow

Four scripts, run in order. Each one feeds the next.

```
02_do_hls_all.sh  ->  03_do_bitstreams.sh  ->  04_do_vitis.sh  ->  05_run_board.py
     IP cores            bitstreams              ELFs               times.csv
```

`01_do_cmake.sh` is older and not part of this chain. It builds the benchmark
for Linux, which is useful to check the suite before touching the board.

---

## 02_do_hls_all.sh

Synthesizes the URSA IP, one per array size.

**Reads:** `src/`, `do_hls_config.cfg.in`
**Writes:** `ip_ursa/ursa_vanilla_<N>x<N>_acc<A>/` plus reports and `summary.csv`

**Sweep:** `ARRAY_SZ=(2 4 8 16)`, `ACC_BITS_LIST=(20)`

Sizes 6, 10, 12 and 14 are left out: every benchmark dimension is a power of
two, and the shell tiles by integer division, so those sizes would run no
cases at all.

`SA_SIZE` and `ACC_BITS` reach the code as `-D` flags, which is why
`settings.h` guards both with `#ifndef`.

Skips any IP whose `.zip` already exists.

---

## 03_do_bitstreams.sh

Builds one bitstream per (array size, memory layout).

**Reads:** `ip_ursa/`, `tcl/bd_{bram,ocm,hybrid}.tcl`, `tcl/build_one.tcl`
**Writes:** `bitstreams/*.bit`, `*.ebc`, `*.ebd`, `*.xsa`, reports, logs,
`summary.csv`

**Sweep:** 4 sizes x 3 layouts = 12 bitstreams

Every synthesized IP packages under the same VLNV
(`xilinx.com:hls:mxm_execute_ursa:1.0`), so what picks the array size is which
directory `ip_repo_paths` points at. Each build gets a fresh project for that
reason: reusing one would leave the previous IP cached.

`build_one.tcl` does the work for a single build and takes everything as
arguments, so it never needs editing.

### Essential bits

`BITSTREAM.SEU.ESSENTIALBITS` is a property of the implemented design, so it
can only be set after `open_run impl_1`, which is after the run has already
written its own bitstream. `build_one.tcl` therefore writes the design a second
time, straight into `bitstreams/`, and it is that second pass that emits the
`.ebc` and `.ebd` files. They inherit the build name from the target path.

The order matters. `write_hw_platform` reads the `.bit` out of the `impl_1` run
directory, so the run has to go all the way through `write_bitstream` and the
XSA has to be exported before the manual bitstream is written. Stopping the run
at `route_design` instead makes `write_hw_platform` fail with
`Unable to get BIT file from implementation run`.

`BITSTREAM.GENERAL.COMPRESS` is forced to FALSE. The essential bit mask only
maps frame by frame onto an uncompressed bitstream, and the counts have to be
comparable across the twelve builds.

The count itself exists only in the `write_bitstream` output, not in any
queryable property, so `03_do_bitstreams.sh` greps it out of the Vivado log and
appends it to both `summary.csv` and the per-build `summary.txt`.

The `.ebd` files are about 25 MB each, 300 MB for the sweep. Keep
`bitstreams/*.eb[cd]` out of version control.

### summary.csv

```
build, variant, sa_size, acc_bits, layout, status,
wns_ns, whs_ns,
lut, lut_pct, ff, ff_pct, dsp, dsp_pct, bram, bram_pct,
essential_bits, total_cram_bits
```

Utilisation is read out of `report_utilization` rather than counted with
`get_cells`. The report adjusts the LUT count for LUT combining, where two
logic functions share one LUT6 through its O5 and O6 outputs, so counting cells
overstates occupancy by around 20 percent. `lut` is Slice LUTs, `ff` is Slice
Registers, `bram` is Block RAM Tile (a RAMB18 counts as half a tile) and `dsp`
is DSPs. The scope is the whole wrapper: URSA, the PS7, the AXI infrastructure
and the memories. Per-IP numbers are in `*_utilization_hier.rpt`.

Setup and hold are reported separately. A single `get_timing_paths` call with
`-delay_type min_max` returns whichever of the two is worse, which for most of
these builds is the hold slack, not the number that belongs in a timing table.

**Note:** the 16x16 builds do not close timing at 100 MHz. Setup slack is
-0.419 ns on bram, -0.345 ns on hybrid and -0.276 ns on ocm, so the effective
Fmax is around 96 MHz. Hold is met everywhere. They still produce a bitstream.
The three 16x16 builds also saturate the device at 220 DSPs, so part of the
multiplications map to logic instead.

---

## 04_do_vitis.sh

Compiles the application, one ELF per (array size, layout).

**Reads:** `vitis/src/` (shared sources), `vitis/platform-ursa-vanilla-<layout>/`
**Writes:** `elfs/*.elf`, `summary.csv`

**Sweep:** 4 sizes x 3 layouts = 12 ELFs

Three platforms cover the whole sweep. The platform fixes the address map and
the BSP, and those are the same for every array size; only the bitstream
changes, and that is programmed separately.

Drives CMake directly rather than the IDE. Two things this needs that are easy
to miss:

- the system CMake, because the one bundled with Vitis wants `libidn.so.11`
- `ESW_REPO`, which the toolchain file uses to build the specs path

`vitis/src/` must hold the sources **and** `CMakeLists.txt`,
`UserConfig.cmake`, `Empty_applicationExample.cmake` and `lscript.ld`, because
the stock CMakeLists picks up sources from its own directory.

`SA_SIZE` and the layout arrive as `-D` flags, so `ursa.h` needs the same
`#ifndef` guards that `settings.h` has.

---

## 05_run_board.py

Programs the board, runs each benchmark, captures the serial output.

**Reads:** `bitstreams/*.bit`, `bitstreams/*.xsa`, `elfs/*.elf`
**Writes:** `results/times_<layout>.csv`

`xsct` has to be on the `PATH`, which this script does not arrange for itself:

```bash
source /opt/Xilinx/Vitis/2023.2/settings64.sh
```

Otherwise pass `--xsct /opt/Xilinx/Vitis/2023.2/bin/xsct`. Without either, the
failure is a `subprocess` traceback rather than a clear message.

Run one layout at a time, power cycling the board in between. The board does
not survive switching between block designs in one go: the JTAG link wedges
with an AHB AP transaction error and only a power cycle clears it.

```bash
python3 05_run_board.py --root . --layouts bram   --out results/times_bram.csv
# power cycle the board
python3 05_run_board.py --root . --layouts ocm    --out results/times_ocm.csv
# power cycle the board
python3 05_run_board.py --root . --layouts hybrid --out results/times_hybrid.csv
```

Then join the three:

```bash
head -1 results/times_bram.csv > results/times.csv
tail -q -n +2 results/times_*.csv >> results/times.csv
```

Each call writes its own file, so a failed run never destroys results already
collected. Other useful flags:

```bash
--sizes 8            # one array size only
--echo               # print the serial output as it arrives
--port /dev/ttyUSB0  # if the board enumerates elsewhere
--xsct <path>        # if Vitis is not on the PATH
```

The port default is `/dev/ttyUSB1`, but the board exposes two FTDI interfaces
and which one carries the UART depends on enumeration order, so it is often
`/dev/ttyUSB0`. Zero bytes captured with no other error means the wrong port.
Check with `ls -l /dev/ttyUSB*` and confirm against `dmesg | grep -i tty`.

Always pass `--out`. The default is a single `results/times.csv`, so running
layout by layout without it overwrites the previous result.

For each case it drives xsct to program the FPGA, run `ps7_init`, load the ELF
and start it, while a background thread reads the UART. A run ends when the
summary line arrives, not after a fixed delay.

**Both cores must be halted before `ps7_init`.** Stopping only core 0 leaves
core 1 running, and on the OCM and hybrid designs that wedges the link: those
reach memory through the ACP, which shares the SCU with both cores. The BRAM
design tolerates it because it goes through the GP port instead. This cost a
long debugging session, so the stop sequence in the xsct template is not
optional.

`ps7_init.tcl` comes from the XSA of the build being loaded. The three block
designs configure the PS differently, so the files are not interchangeable.

Needs `pyserial`. Close any terminal on the port first, since only one process
can hold it.

The board prints the `SA_SIZE` it was built with, and the script compares that
against what it expected. A mismatch means the wrong ELF is running.

**Output columns:** `sa_size, layout, case, P, Q, M, us, check`

---

## Validating a run

The three things to check, in order.

**Correctness.** Every row `ok`. A single FAIL invalidates everything
downstream and has to be understood before the times mean anything.

**Coverage.** 14 cases each for sizes 2, 4 and 8, and 8 cases for 16, so 50
rows per layout and 150 in total. Fewer means a case was not captured off the
serial port and that measurement simply does not exist.

**Agreement with the previous sweep.** Keep the old CSVs and compare point by
point. Differences of a few microseconds come from timer resolution. A
systematic shift across a whole layout is something real and worth
understanding before the numbers go into a table.

Runs are single-shot. Repeating each layout and keeping both files is cheap and
is what makes the roughly 10 percent gap between hybrid and bram defensible as
a measurement rather than noise.

The ELFs are identical in size across array sizes within a layout (70873 bytes
for bram, 73709 for ocm, 73721 for hybrid). That is expected: tiling happens
inside the IP, and `SA_SIZE` reaches the host only for the banner and the case
filter. Sizes differing between layouts confirms the `-D` flags arrived.

---

## Configurations

| layout | A (weights) | B (inputs) | C (fmaps) |
|--------|-------------|------------|-----------|
| bram   | BRAM 4K     | BRAM 16K   | BRAM 16K  |
| ocm    | OCM 4K      | OCM 16K    | OCM 16K   |
| hybrid | BRAM 4K     | OCM 16K    | OCM 16K   |

C is what limits the case list: it holds 32-bit values, so it needs four bytes
per element. With these sizes, 14 of the 40 benchmark cases fit. At SA_SIZE 16
only 8 of those run, since the rest have P or Q equal to 8.

Anything on OCM needs cache maintenance around the accelerator call. BRAM at
0x40000000 is device memory and does not.