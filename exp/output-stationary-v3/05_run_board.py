#!/usr/bin/env python3
"""
run_board.py

Programs each bitstream, loads the matching ELF, and captures the board's
output from the serial port into a CSV.

The sweep is (array size x memory layout). For each combination it drives
xsct in batch mode to program the FPGA and start the program, while reading
the UART on a background thread. A run ends when its terminator line appears,
or when the timeout expires.

Four test modes, matching 04_do_vitis.sh:
    bench   the generated 14-case suite, one row per case
    free    the hand-written shape table, one row per shape
    cnn     the CNN SAT-6 inference app, one row per image
    net     a netmendes/ network test, one row per run (PASS/FAIL)
The mode picks which ELF to load and which table format to parse.

The ELF and the bitstream are chosen independently, because the two vary
along different axes:

    --variant      variant in the ELF name, suffix included
    --hw-variant   variant in the .bit and .xsa names, defaults to --variant
    --mitig        mitigation suffix on the bitstream only
    --scrub        load <name>_scrub.bit instead of <name>.bit

Software-only sweeps, such as the cache configuration, change the ELF name
but not the hardware, which is what --hw-variant is for. Mitigation is the
mirror image: it changes the bitstream and not the ELF, because a triplicated
design keeps the accelerator at the same base address as its unmitigated twin
and the host code is unchanged.

Usage:
    python3 run_board.py --sizes 8 --layouts bram          # single case
    python3 run_board.py --mode free --sizes 2             # free run
    python3 run_board.py --port /dev/ttyUSB1               # different port

    # CNN inference, I-cache disabled: same hardware, different ELF
    python3 run_board.py --mode cnn \\
                         --variant vanilla-nci --hw-variant vanilla \\
                         --out results/cnn_nci.csv

    # Network test from netmendes/ (self-checking against golden logits).
    # One row per run in the CSV, plus <out>_layers.csv and logs/<elf>.log.
    python3 run_board.py --mode net --net resnet18_cifar10_micro_vitmatched \\
                         --sizes 8 --layouts bram \\
                         --variant vanilla-nci-img8 --hw-variant vanilla --echo

    # Campaign design 14: same ELF as the vanilla 8x8 bram, TMR bitstream
    python3 run_board.py --mode cnn --sizes 8 --layouts bram \\
                         --mitig tmr \\
                         --out results/cnn_bram_tmr.csv

Needs pyserial:  pip install pyserial --user
"""

import argparse
import csv
import os
import re
import shutil
import subprocess
import sys
import tempfile
import threading
import time

try:
    import serial
except ImportError:
    print("ERROR: pyserial not found. Install it with:")
    print("    pip install pyserial --user")
    sys.exit(1)


# --------------------------------------------------------------------------
# Parsing
# --------------------------------------------------------------------------

# Times are printed as an average over many calls, so they carry two decimal
# places. The fractional part is optional here, so output from an older build
# still parses.
#
# g1_8x8                8      8      8       9.49  ok
# g2_256x16           256     16     16     594.95  FAIL (golden=... got=...)
BENCH_RE = re.compile(
    r"^\s*(?P<name>g\d_\d+x\d+)\s+"
    r"(?P<p>\d+)\s+(?P<q>\d+)\s+(?P<m>\d+)\s+"
    r"(?P<us>\d+(?:\.\d+)?)\s+"
    r"(?P<check>ok|FAIL)"
)

# The free run has no case name and prints the tile count, the k loop trip
# count and the checksum instead of a pass/fail verdict.
#
#      2      2    128      1    130       1364      13.64       10  0xE3EF615C
FREE_RE = re.compile(
    r"^\s*(?P<p>\d+)\s+(?P<q>\d+)\s+(?P<m>\d+)\s+"
    r"(?P<tiles>\d+)\s+(?P<k_it>\d+)\s+"
    r"(?P<us_tot>\d+)\s+"
    r"(?P<us>\d+(?:\.\d+)?)\s+"
    r"(?P<cyc_kit>\d+)\s+"
    r"0x(?P<checksum>[0-9A-Fa-f]+)"
    r"(?P<err>\s+STATUS-ERR)?"
)

SUMMARY_RE = re.compile(r"^\s*(?P<pass>\d+) passed,\s*(?P<fail>\d+) failed")

# ─── CNN mode ─────────────────────────────────────────────────────────────
# One row per image, from the per-image table:
#      0      5     504276     10085.52      99.15
# The second column is the gold class, not a pass/fail verdict: correctness
# comes from the accuracy line further down.
CNN_ROW_RE = re.compile(
    r"^\s*(?P<image>\d+)\s+(?P<gold>\d+)\s+"
    r"(?P<us_tot>\d+)\s+"
    r"(?P<us>\d+\.\d+)\s+"
    r"(?P<fps>\d+\.\d+)\s*$"
)

# Per-inference result lines, printed before the timing table:
# V3= i 0 I 6223 g 5 n 5 450 0 0 0 871 3032
# Only the predicted and gold labels are pulled out; the pooling values are
# kept as a raw string so a regression can diff them digit by digit.
# put_app_version() prints "V3" and the verdict character follows with no
# space, so the line opens "V3=" when the prediction matched and "V3!" when it
# did not. The "=" is the verdict, not punctuation.
CNN_PRED_RE = re.compile(
    r"^\s*V3(?P<mark>[=!])\s+i\s+(?P<image>\d+)\s+I\s+(?P<id>\d+)\s+"
    r"g\s+(?P<gold>\d+)\s+n\s+(?P<pred>\d+)\s+(?P<pool>[\d\s]+?)\s*$"
)

# Run-level lines printed after the table.
CNN_ACC_RE   = re.compile(r"^\s*accuracy\s+(?P<ok>\d+)/(?P<tot>\d+)")
CNN_INF_RE   = re.compile(r"^\s*inferences\s+(?P<n>\d+)")
CNN_USIMG_RE = re.compile(r"^\s*us per image\s+(?P<us>\d+(?:\.\d+)?)")
CNN_FPS_RE   = re.compile(r"^\s*fps\s+(?P<fps>\d+(?:\.\d+)?)\s*$")
CNN_STAGE_RE = re.compile(
    r"^\s*(?P<stage>im2col|transfer|gemm|other)\s+(?P<us>\d+)\s+us/image"
)

# The stage breakdown closes the report, and "other" is its last line, so it
# ends capture. Without a mode-specific terminator every run would sit out the
# full timeout.
CNN_DONE_RE = re.compile(r"^\s*other\s+\d+\s+us/image")

# The board prints this before the table; useful to confirm the ELF that
# actually booted matches the one we meant to load.
HEADER_RE = re.compile(r"SA_SIZE=(?P<sa>\d+), acc=(?P<acc>\d+) bits")

# The build also reports its cache configuration. Recording it makes each row
# self-describing, so the CSV does not depend on the file name to say which
# configuration produced it. Older builds do not print this line, and the
# column is left empty for them.
CACHE_RE = re.compile(r"cache[ _]I\s*=\s*(?P<i>on|off)", re.IGNORECASE)


# ─── Net mode (netmendes/*_hwtest.cpp) ───────────────────────────────────
# UM: 13/10/26 - the network tests are self-checking: the board's int8 logits
# are compared, bit for bit, with the logits of the host model of URSA. One
# CSV row per run (not per image: the program prints no per-image result),
# plus a per-layer CSV from the "[prof]" lines and the raw UART log.
#
# Capture must NOT stop at "Done": the test prints it before urt_report(),
# which holds the stage split and the golden verdict. The verdict line closes
# the run; the early-failure lines end it too, so they do not wait out the
# timeout.
NET_DONE_RE = re.compile(
    r"^\s*(URT HW TEST (PASS|FAIL)"
    r"|\[urt\] (URSA init failed|URSA setup failed|planning failed))")

NET_NAME_RE    = re.compile(r"^URSA network:\s*(?P<net>\S+)")
NET_CFG_RE     = re.compile(
    r"^\[urt\] SA_SIZE=(?P<sa>\d+) ACC_BITS=(?P<acc>\d+) MAX_M=(?P<maxm>\d+) "
    r"guard=(?P<guard>\d+)")
NET_WEIGHTS_RE = re.compile(
    r"^\[urt\] weights: (?P<bytes>\d+) B packed, (?P<where>resident|streamed)")
NET_ENGINE_RE  = re.compile(r"^\[urt\] engine: (?P<engine>.+?)\s*$")
NET_TICKS_RE   = re.compile(r"^\[urt\] timer: (?P<tps>\d+) ticks/s")
# [urt]   lower (im2col/transpose)        1234
NET_STAGE_RE   = re.compile(
    r"^\[urt\]\s+(?P<stage>lower|transfer|gemm|epilogue|other|total)\b.*?"
    r"(?P<us>\d+)\s*$")
NET_CALLS_RE   = re.compile(
    r"^\[urt\] URSA calls per inference: (?P<calls>\d+), "
    r"MACs per inference: (?P<macs>\d+)")
NET_CORRECT_RE = re.compile(r"^Correct predictions: (?P<ok>\d+) / (?P<tot>\d+)")
NET_PROGRESS_RE = re.compile(r"^Inference (?P<i>\d+)/(?P<n>\d+)\.")
NET_CYCLES_RE  = re.compile(r"^\[cycles\] total: (?P<ticks>\d+)")
NET_GOLDEN_RE  = re.compile(
    r"^\[urt\] golden check: (?P<ok>\d+)/(?P<tot>\d+) images bit-exact")
NET_MISMATCH_RE = re.compile(r"^\[urt\] golden MISMATCH image (?P<image>\d+)")
NET_VERDICT_RE = re.compile(r"^URT HW TEST (?P<v>PASS|FAIL)")
NET_FATAL_RE   = re.compile(
    r"^\[urt\] (?P<msg>URSA init failed|URSA setup failed|planning failed)")
# [prof] index parent depth inclusive self calls kind path device
NET_PROF_RE    = re.compile(
    r"^\[prof\] (?P<index>\d+) (?P<parent>-?\d+) (?P<depth>\d+) "
    r"(?P<inclusive>\d+) (?P<self>\d+) (?P<calls>\d+) "
    r"(?P<kind>\S+) (?P<path>\S+) (?P<device>\S+)")


def parse_net(text):
    """Net mode: one row for the run, and one row per profiled layer.

    The verdict is PASS or FAIL when the board got that far. A run that
    stopped earlier keeps "incomplete" (or the fatal message), and
    images_done says how far it went.
    """
    run = dict(net="", engine="", acc_bits="", max_m="", guard="",
               weights_bytes="", weights="", images_done="",
               accuracy="", golden="", verdict="", first_mismatches="",
               lower_us="", transfer_us="", gemm_us="", epilogue_us="",
               other_us="", total_us="", calls_per_inf="", macs_per_inf="",
               total_ticks="", ticks_per_s="")
    layers, mism = [], []
    sa_size = None

    for raw in text.splitlines():
        line = raw.strip("\r")

        m = NET_PROF_RE.match(line)
        if m:
            layers.append({k: m.group(k) for k in
                           ("index", "parent", "depth", "inclusive", "self",
                            "calls", "kind", "path", "device")})
            continue
        m = NET_NAME_RE.match(line)
        if m:
            run["net"] = m.group("net")
            continue
        m = NET_CFG_RE.match(line)
        if m:
            sa_size = int(m.group("sa"))
            run.update(acc_bits=m.group("acc"), max_m=m.group("maxm"),
                       guard=m.group("guard"))
            continue
        m = NET_WEIGHTS_RE.match(line)
        if m:
            run.update(weights_bytes=m.group("bytes"), weights=m.group("where"))
            continue
        m = NET_ENGINE_RE.match(line)
        if m:
            run["engine"] = m.group("engine")
            continue
        m = NET_TICKS_RE.match(line)
        if m:
            run["ticks_per_s"] = m.group("tps")
            continue
        m = NET_STAGE_RE.match(line)
        if m:
            run[m.group("stage") + "_us"] = int(m.group("us"))
            continue
        m = NET_CALLS_RE.match(line)
        if m:
            run.update(calls_per_inf=m.group("calls"),
                       macs_per_inf=m.group("macs"))
            continue
        m = NET_PROGRESS_RE.match(line)
        if m:
            run["images_done"] = int(m.group("i"))
            continue
        m = NET_CORRECT_RE.match(line)
        if m:
            run["accuracy"] = "%s/%s" % (m.group("ok"), m.group("tot"))
            continue
        m = NET_CYCLES_RE.match(line)
        if m:
            run["total_ticks"] = m.group("ticks")
            continue
        m = NET_MISMATCH_RE.match(line)
        if m:
            mism.append(m.group("image"))
            continue
        m = NET_GOLDEN_RE.match(line)
        if m:
            run["golden"] = "%s/%s" % (m.group("ok"), m.group("tot"))
            continue
        m = NET_VERDICT_RE.match(line)
        if m:
            run["verdict"] = m.group("v")
            continue
        m = NET_FATAL_RE.match(line)
        if m:
            run["verdict"] = m.group("msg").replace(" ", "_")

    run["first_mismatches"] = " ".join(mism)
    if text.strip() and not run["verdict"]:
        run["verdict"] = "incomplete"

    rows = [run] if text.strip() else []
    summary = None
    if run["golden"]:
        ok, tot = run["golden"].split("/")
        summary = (int(ok), int(tot) - int(ok))
    return rows, sa_size, summary, layers


def parse_cnn(text):
    """CNN mode: one row per image, with the run-level numbers repeated.

    The accuracy and the stage breakdown are per run, not per image, but they
    are copied onto every row so the CSV can be grouped by size and layout
    without a join against a second table.
    """
    rows, sa_size, cache_i = [], None, ""
    preds = {}
    run = dict(accuracy="", inferences="", us_per_image="", fps_run="",
               im2col_us="", transfer_us="", gemm_us="", other_us="")

    for line in text.splitlines():
        h = HEADER_RE.search(line)
        if h:
            sa_size = int(h.group("sa"))
            continue

        k = CACHE_RE.search(line)
        if k:
            cache_i = k.group("i").lower()
            continue

        m = CNN_PRED_RE.match(line)
        if m:
            preds[int(m.group("image"))] = dict(
                image_id=int(m.group("id")),
                pred=int(m.group("pred")),
                correct="yes" if m.group("mark") == "=" else "no",
                pooling=" ".join(m.group("pool").split()))
            continue

        m = CNN_ROW_RE.match(line)
        if m:
            rows.append(dict(image=int(m.group("image")),
                             gold=int(m.group("gold")),
                             us_tot=int(m.group("us_tot")),
                             us=float(m.group("us")),
                             fps=float(m.group("fps"))))
            continue

        m = CNN_ACC_RE.match(line)
        if m:
            run["accuracy"] = "%s/%s" % (m.group("ok"), m.group("tot"))
            continue

        m = CNN_INF_RE.match(line)
        if m:
            run["inferences"] = int(m.group("n"))
            continue

        m = CNN_USIMG_RE.match(line)
        if m:
            run["us_per_image"] = float(m.group("us"))
            continue

        m = CNN_FPS_RE.match(line)
        if m:
            run["fps_run"] = float(m.group("fps"))
            continue

        m = CNN_STAGE_RE.match(line)
        if m:
            run[m.group("stage") + "_us"] = int(m.group("us"))

    for r in rows:
        r.update(run)
        r.update(preds.get(r["image"],
                           dict(image_id="", pred="", correct="", pooling="")))

    summary = None
    if run["accuracy"]:
        ok, tot = run["accuracy"].split("/")
        summary = (int(ok), int(tot) - int(ok))

    return rows, sa_size, summary, cache_i


# v3 layer bench: one "L,..." line per layer (FREE_RUN == 2 in mxm-ursa).
LAYER_KEYS = ["group", "net", "layer", "P", "M", "Q", "macs", "calls", "m_chunk",
              "n_chunks", "pc", "qc", "us_gemm", "us_xfer"]


def parse_layers(text):
    rows, sa_size, summary = [], None, None
    for line in text.splitlines():
        h = HEADER_RE.search(line)
        if h:
            sa_size = int(h.group("sa"))
            continue
        s = SUMMARY_RE.match(line)
        if s:
            summary = (int(s.group("pass")), int(s.group("fail")))
            continue
        if line.startswith("L,") and not line.startswith("L,group"):
            parts = line.strip().split(",")
            if len(parts) < 1 + len(LAYER_KEYS):
                continue
            r = dict(zip(LAYER_KEYS, parts[1:1 + len(LAYER_KEYS)]))
            last = r["us_xfer"].split()
            r["us_xfer"] = last[0] if last else ""
            r["check"] = "FAIL" if ("STATUS-ERR" in line or "NO-PLAN" in line) else "ok"
            rows.append(r)
    return rows, sa_size, summary, ""


def parse_output(text, mode):
    """Pull the per-row measurements and the summary out of one run."""
    if mode == "layers":
        return parse_layers(text)
    if mode == "cnn":
        return parse_cnn(text)
    if mode == "net":
        # The cache state is not printed by the test; main() takes it from
        # the variant name. The per-layer rows are parsed again in main().
        rows, sa_size, summary, _ = parse_net(text)
        return rows, sa_size, summary, ""

    rows, sa_size, summary, cache_i = [], None, None, ""

    for line in text.splitlines():
        h = HEADER_RE.search(line)
        if h:
            sa_size = int(h.group("sa"))
            continue

        k = CACHE_RE.search(line)
        if k:
            cache_i = k.group("i").lower()
            continue

        s = SUMMARY_RE.match(line)
        if s:
            summary = (int(s.group("pass")), int(s.group("fail")))
            continue

        if mode == "free":
            c = FREE_RE.match(line)
            if c:
                rows.append(dict(case="free",
                                 P=int(c.group("p")),
                                 Q=int(c.group("q")),
                                 M=int(c.group("m")),
                                 tiles=int(c.group("tiles")),
                                 k_it=int(c.group("k_it")),
                                 us_tot=int(c.group("us_tot")),
                                 us=float(c.group("us")),
                                 cyc_kit=int(c.group("cyc_kit")),
                                 checksum="0x" + c.group("checksum").upper(),
                                 check="FAIL" if c.group("err") else "ok"))
            continue

        c = BENCH_RE.match(line)
        if c:
            rows.append(dict(case=c.group("name"),
                             P=int(c.group("p")),
                             Q=int(c.group("q")),
                             M=int(c.group("m")),
                             tiles="", k_it="", us_tot="",
                             us=float(c.group("us")),
                             cyc_kit="", checksum="",
                             check=c.group("check")))

    return rows, sa_size, summary, cache_i


# --------------------------------------------------------------------------
# Serial reader
# --------------------------------------------------------------------------

class SerialReader(threading.Thread):
    """Reads the port in the background so the xsct call does not block it.

    Stops on the run's terminator line rather than on a fixed delay, so a fast
    case does not cost the full timeout. The terminator differs by mode, so it
    arrives as an argument instead of being hardcoded.
    """

    def __init__(self, port, baud, echo=False, done_re=SUMMARY_RE):
        super().__init__(daemon=True)
        self.ser = serial.Serial(port, baud, timeout=0.2)
        self.echo = echo
        self.done_re = done_re
        self.buf = []
        self.done = threading.Event()
        self._stop = threading.Event()

    def run(self):
        while not self._stop.is_set():
            try:
                chunk = self.ser.readline().decode("utf-8", errors="replace")
            except Exception:
                break
            if not chunk:
                continue
            self.buf.append(chunk)
            if self.echo:
                sys.stdout.write("    | " + chunk)
                sys.stdout.flush()
            if self.done_re.match(chunk):
                self.done.set()

    def text(self):
        return "".join(self.buf)

    def close(self):
        self._stop.set()
        time.sleep(0.3)
        try:
            self.ser.close()
        except Exception:
            pass


# --------------------------------------------------------------------------
# xsct
# --------------------------------------------------------------------------

# Both cores are stopped before the bitstream is written. Stopping only core 0
# leaves core 1 running, and on the ocm and hybrid designs that wedges the JTAG
# link with AHB AP transaction errors, because the ACP shares the SCU.
#
# UM: 27/09/26 - the selection of core 1 is wrapped in catch. When the DAP is
# wedged the ARM targets are not listed at all, and an uncaught "no targets
# found" aborted the script before recover() could get a chance. Core 0 is
# still required: without it nothing can be loaded, and the failure is what
# triggers the recovery below.
#
# UM: 27/09/26 - preventive reset. Before touching the PL, the whole system is
# reset from the APU target, which is what the Vitis IDE does with "Reset
# entire system". It stops whatever the previous run left executing, so no
# core can be in the middle of an AXI access to the PL when the bitstream is
# replaced; that is the usual way the debug port ends up wedged ("AHB AP
# transaction error"). ps7_init runs afterwards anyway, so nothing is lost.
# Under catch: if the reset is refused, the run goes on as before and the
# recovery in recover() is still there as a fallback. {reset} is empty when
# --no-reset is given.
XSCT_TEMPLATE = """
connect
if {{![catch {{targets -set -filter {{name =~ "ARM*#1"}}}}]}} {{ catch {{ stop }} }}
targets -set -filter {{name =~ "ARM*#0"}}
catch {{ stop }}
{reset}
fpga -file {bit}
source {ps7_init}
ps7_init
ps7_post_config
targets -set -filter {{name =~ "ARM*#0"}}
rst -processor
after 200
dow {elf}
con
after 500
disconnect
exit
"""


# ─── Recovery from a wedged debug port ─────────────────────────────────────
# UM: 27/09/26
# "AHB AP transaction error" means a core is stuck in a bus transaction that
# never completes, typically an access to the PL while it is being
# reconfigured or left without a responding slave. The DAP then stops listing
# the ARM targets and every later run fails the same way until the board is
# power-cycled. That is not possible when nobody is in the lab, so the resets
# reachable through JTAG are tried in order of increasing reach:
#
#   rst -dap      resets the debug port only
#   rst -system   system reset of the PS, issued through the debug port
#   rst -srst     drives the SRST line of the JTAG cable, if the board wires it
#
# After each one the script checks whether ARM #0 is visible again and stops
# at the first that works. It prints RECOVER_OK=1 or RECOVER_OK=0; the caller
# parses that line. Every step is under catch, because a reset that the board
# or the cable does not support must not stop the next one from being tried.
XSCT_RECOVER = """
connect
set ok 0
foreach cmd {{rst -dap} {rst -system} {rst -srst}} {
    foreach flt {{name =~ "APU*"} {name =~ "DAP*"}} {
        if {![catch {targets -set -nocase -filter $flt}]} { break }
    }
    if {[catch {eval $cmd} err]} { puts "recover: $cmd -> $err" } else { puts "recover: $cmd done" }
    after 1500
    catch {disconnect}
    after 500
    connect
    if {![catch {targets -set -filter {name =~ "ARM*#0"}}]} { set ok 1; break }
}
puts "RECOVER_OK=$ok"
catch {disconnect}
exit
"""

# Markers in xsct's output that point at a wedged debug port rather than at a
# problem with the files being loaded.
WEDGED_MARKERS = ("AHB AP transaction error", "no targets found")


def recover(xsct, workdir):
    """Try the JTAG resets in XSCT_RECOVER. True when ARM #0 is back."""
    script = os.path.join(workdir, "recover.tcl")
    with open(script, "w") as f:
        f.write(XSCT_RECOVER)
    try:
        r = subprocess.run([xsct, script], capture_output=True, text=True, timeout=120)
    except subprocess.TimeoutExpired:
        print("  recover: xsct timed out")
        return False
    for line in r.stdout.splitlines():
        if line.startswith("recover:"):
            print("  " + line)
    return "RECOVER_OK=1" in r.stdout


def extract_ps7_init(xsa, workdir):
    """The XSA is a zip; ps7_init.tcl lives inside and sets up clocks and DDR.

    It has to come from the XSA of the build being loaded: the ocm and hybrid
    designs configure the PS differently, enabling the ACP port.
    """
    out = os.path.join(workdir, "xsa")
    shutil.rmtree(out, ignore_errors=True)
    os.makedirs(out, exist_ok=True)
    subprocess.run(["unzip", "-o", "-q", xsa, "-d", out], check=True)
    path = os.path.join(out, "ps7_init.tcl")
    if not os.path.exists(path):
        raise FileNotFoundError("ps7_init.tcl not found inside " + xsa)
    return path


# UM: 28/09/26 - same order as the colleague's working script: both cores
# stopped first, then rst -system issued from the ARM #0 target (not the APU
# target, whose reset timed out waiting for PLL lock), then 1 s to settle.
# rst -processor before dow is kept: when rst -system fails and rst -srst is
# used, the core keeps the previous program's MMU tables and dow fails with
# "MMU section translation fault".
# UM: 28/09/26 - on this board rst -system fails with "Cannot reset APU.
# Timeout waiting for PLL lock". The error is no longer fatal: rst -srst
# (PS_SRST_B through the cable) is tried instead, and the run continues,
# because ps7_init reprograms the PLLs anyway.
XSCT_RESET = """if {[catch {rst -system} err]} {
    puts "URSA_RESET: rst -system failed: [lindex [split $err \\n] 0]"
    if {[catch {rst -srst} err2]} {
        puts "URSA_RESET: rst -srst failed: [lindex [split $err2 \\n] 0]"
    } else {
        puts "URSA_RESET: rst -srst done"
    }
    catch {connect}
    targets -set -filter {name =~ "ARM*#0"}
    catch {stop}
} else {
    puts "URSA_RESET: rst -system done"
}
after 1000"""
XSCT_NO_RESET = "after 500"


def run_one(xsct, bit, elf, ps7_init, workdir, verbose=False, reset=True):
    script = os.path.join(workdir, "run.tcl")
    with open(script, "w") as f:
        f.write(XSCT_TEMPLATE.format(bit=bit, elf=elf, ps7_init=ps7_init,
                                     reset=XSCT_RESET if reset else XSCT_NO_RESET))

    r = subprocess.run([xsct, script], capture_output=True, text=True, timeout=300)
    if verbose or r.returncode != 0:
        print(r.stdout[-2000:])
        if r.stderr:
            print(r.stderr[-2000:])
    wedged = any(k in (r.stdout + r.stderr) for k in WEDGED_MARKERS)
    return r.returncode, wedged


# Same search order as 02-04 (VITIS_VERSION / install roots).
VITIS_VERSION = "2023.2"
XILINX_ROOTS = ["/opt/Xilinx", "/tools/Xilinx", "/home/tools/Xilinx"]


def find_xsct(name):
    """Returns the path to xsct: --xsct if it is a file, else PATH (settings64.sh
    already sourced), else $XILINX_VITIS/bin, else the standard install roots."""
    if os.path.isfile(name):
        return os.path.abspath(name)
    found = shutil.which(name)
    if found:
        return found
    cands = []
    if os.environ.get("XILINX_VITIS"):
        cands.append(os.path.join(os.environ["XILINX_VITIS"], "bin", "xsct"))
    cands += [os.path.join(r, "Vitis", VITIS_VERSION, "bin", "xsct") for r in XILINX_ROOTS]
    for c in cands:
        if os.path.isfile(c):
            return c
    return None


# --------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------

# The GEMM modes report one shape per row; the CNN reports one image per row
# plus a stage breakdown, so the two share no column layout worth forcing
# together.
#
# mitig and scrub describe the bitstream. They matter because two campaign
# designs can share everything else: 14 and 25 are both an 8x8 bram CNN run,
# and differ only in mitigation. Without these columns their rows would be
# indistinguishable once the CSVs are joined.
FIELDS_GEMM = ["mode", "variant", "mitig", "scrub", "cache_i",
               "sa_size", "layout", "case",
               "P", "Q", "M", "tiles", "k_it", "us_tot", "us", "cyc_kit",
               "checksum", "check"]

FIELDS_CNN = ["mode", "variant", "mitig", "scrub", "cache_i",
              "sa_size", "layout",
              "image", "image_id", "gold", "pred", "correct",
              "us_tot", "us", "fps",
              "accuracy", "inferences", "us_per_image", "fps_run",
              "im2col_us", "transfer_us", "gemm_us", "other_us",
              "pooling"]

# One row per run. The stage times are microseconds per inference.
FIELDS_NET = ["mode", "net", "variant", "mitig", "scrub", "cache_i",
              "sa_size", "layout", "engine", "acc_bits", "max_m", "guard",
              "weights_bytes", "weights", "images_done",
              "accuracy", "golden", "verdict", "first_mismatches",
              "lower_us", "transfer_us", "gemm_us", "epilogue_us",
              "other_us", "total_us", "calls_per_inf", "macs_per_inf",
              "total_ticks", "ticks_per_s"]

FIELDS_NET_LAYERS = ["net", "variant", "mitig", "sa_size", "layout",
                     "index", "parent", "depth", "path", "kind", "device",
                     "calls", "inclusive", "self"]

# Kept for anything that still imports the old name.
FIELDS = FIELDS_GEMM

FIELDS_LAYERS = ["mode", "variant", "mitig", "scrub", "cache_i",
                 "sa_size", "layout"] + LAYER_KEYS + ["check"]


def blank_row(fields, mode, variant, mitig, scrub, sz, layout, status):
    """A row standing in for a run that never produced output.

    The status lands in whichever column carries the verdict for this mode.
    """
    r = {k: "" for k in fields}
    r.update(mode=mode, variant=variant, mitig=mitig, scrub=scrub,
             sa_size=sz, layout=layout)
    if "check" in r:
        r["check"] = status
    elif "verdict" in r:
        r["verdict"] = status
    else:
        r["accuracy"] = status
    return r


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=".",
                    help="project root holding bitstreams/ and elfs/")
    ap.add_argument("--mode", choices=["bench", "free", "cnn", "net", "layers"],
                    default="bench",
                    help="which ELF to load and which table format to parse")
    ap.add_argument("--net", default=None,
                    help="net mode: network test name, as given to "
                         "04_do_vitis.sh (stem, or <stem>_hwtest.cpp)")
    ap.add_argument("--port", default="/dev/ttyUSB1")
    ap.add_argument("--baud", type=int, default=115200)
    ap.add_argument("--sizes", type=int, nargs="+", default=[2, 4, 8, 16])
    # ap.add_argument("--layouts", nargs="+", default=["bram"])
    # v3: BRAM only (see 03_do_bitstreams.sh)
    ap.add_argument("--layouts", nargs="+", default=["bram"])
    ap.add_argument("--variant", default="vanilla",
                    help="variant in the ELF name, suffix included "
                         "(for example vanilla-nci)")
    ap.add_argument("--hw-variant", default=None,
                    help="variant in the .bit and .xsa names. Defaults to "
                         "--variant. Set it when the ELF name carries a "
                         "software-only suffix, such as a cache "
                         "configuration, that the hardware does not have.")
    ap.add_argument("--mitig", default="none",
                    help="mitigation suffix on the bitstream name, as built "
                         "by 03_do_bitstreams.sh (for example tmr, "
                         "tmr_edac). The ELF is unaffected: a mitigated "
                         "design keeps the accelerator at the same base "
                         "address as its unmitigated twin.")
    ap.add_argument("--scrub", action="store_true",
                    help="load <name>_scrub.bit instead of <name>.bit. The "
                         "XSA is the same either way, since scrubbing is a "
                         "bitstream property and does not change the design.")
    ap.add_argument("--acc", type=int, default=20)
    ap.add_argument("--out", default=None, help="output CSV")
    ap.add_argument("--timeout", type=float, default=None,
                    help="seconds to wait for one run to finish "
                         "(default 300; 1800 in net mode, where a run is "
                         "hundreds of inferences of a larger network)")
    ap.add_argument("--xsct", default="xsct")
    ap.add_argument("--echo", action="store_true",
                    help="print the serial output as it arrives")
    ap.add_argument("--verbose", action="store_true")
    ap.add_argument("--no-reset", action="store_true",
                    help="skip the system reset issued before each bitstream "
                         "is loaded")
    ap.add_argument("--no-recover", action="store_true",
                    help="do not try the JTAG resets when the debug port is "
                         "wedged (AHB AP transaction error)")
    ap.add_argument("--recover-only", action="store_true",
                    help="only try to recover a wedged board, then exit")
    a = ap.parse_args()

    fields = {"cnn": FIELDS_CNN, "net": FIELDS_NET, "layers": FIELDS_LAYERS}.get(a.mode, FIELDS_GEMM)
    done_re = {"cnn": CNN_DONE_RE, "net": NET_DONE_RE}.get(a.mode, SUMMARY_RE)
    if a.timeout is None:
        a.timeout = 1800.0 if a.mode in ("net", "layers") else 300.0

    # Net mode: the ELF prefix carries the network, as 04_do_vitis.sh names
    # it (net-<stem>_<variant>_<sz>x<sz>_<layout>.elf).
    elf_mode = a.mode
    net_stem = ""
    if a.mode == "net":
        if not a.net:
            print("ERROR: --mode net needs --net <network>")
            sys.exit(1)
        net_stem = os.path.basename(a.net)
        if net_stem.endswith(".cpp"):
            net_stem = net_stem[:-4]
        if net_stem.endswith("_hwtest"):
            net_stem = net_stem[:-7]
        elf_mode = "net-" + net_stem
    layer_rows = []

    # The hardware does not change with the software sweep, so the bitstream
    # keeps the plain variant name unless told otherwise.
    hw_variant = a.hw_variant or a.variant

    scrub_s = "on" if a.scrub else "off"

    # UM: 28/09/26 - xsct is looked up the same way 02-04 look up
    # settings64.sh, so settings64.sh no longer has to be sourced by hand.
    # Python cannot source a shell script into its own environment, but it
    # does not need to: bin/xsct is a launcher that sets up its own
    # environment (and starts hw_server from the same install).
    a.xsct = find_xsct(a.xsct)
    if a.xsct is None:
        print("ERROR: xsct not found in PATH or in %s/Vitis/%s/bin"
              % ("{" + ",".join(XILINX_ROOTS) + "}", VITIS_VERSION))
        print("       Pass --xsct with the full path.")
        sys.exit(1)
    print("xsct: %s" % a.xsct)

    if a.recover_only:
        wd = tempfile.mkdtemp(prefix="ursa_recover_")
        ok = recover(a.xsct, wd)
        print("recovered" if ok else "not recovered: the board needs a power cycle")
        sys.exit(0 if ok else 1)

    root = os.path.abspath(os.path.expanduser(a.root))
    bitdir = os.path.join(root, "bitstreams")
    elfdir = os.path.join(root, "elfs")

    # Default name carries the mode, the variant and the mitigation, so no two
    # configurations overwrite each other's record.
    default_name = "times_%s_%s" % (elf_mode, a.variant)
    # v3: a bitstream of another clock (--hw-variant vanilla-f150) runs the
    # same ELF; keep its record apart.
    if hw_variant != a.variant and "-f" in hw_variant:
        default_name += "_hw-" + hw_variant
    if a.mitig != "none":
        default_name += "_" + a.mitig
    if a.scrub:
        default_name += "_scrub"
    default_name += ".csv"

    out_csv = a.out or os.path.join(root, "results", default_name)
    out_dir = os.path.dirname(os.path.abspath(out_csv))
    os.makedirs(out_dir, exist_ok=True)

    print("Mode: %s   ELF variant: %s   hardware variant: %s   "
          "mitigation: %s   scrub: %s"
          % (a.mode, a.variant, hw_variant, a.mitig, scrub_s))

    rows = []
    workdir = tempfile.mkdtemp(prefix="ursa_run_")
    total = len(a.sizes) * len(a.layouts)
    count = 0

    for layout in a.layouts:
        for sz in a.sizes:
            count += 1

            # The build name in 03_do_bitstreams.sh puts the mitigation after
            # the layout, so the tag is built the same way here.
            tag = "%s_%dx%d_acc%d_%s" % (hw_variant, sz, sz, a.acc, layout)
            if a.mitig != "none":
                tag += "_" + a.mitig

            # Only the .bit carries the scrub suffix. The XSA is written once,
            # before the bitstream properties are applied.
            bit_name = "ursa_%s_scrub.bit" % tag if a.scrub else "ursa_%s.bit" % tag
            bit = os.path.join(bitdir, bit_name)
            xsa = os.path.join(bitdir, "ursa_%s.xsa" % tag)

            # The ELF never carries the mitigation: the host code is the same.
            elf = os.path.join(elfdir, "%s_%s_%dx%d_%s.elf"
                               % (elf_mode, a.variant, sz, sz, layout))

            print("\n" + "=" * 70)
            print(" [%d/%d] mode=%s  SA_SIZE=%d  layout=%s  variant=%s  mitig=%s"
                  % (count, total, a.mode, sz, layout, a.variant, a.mitig))
            print("=" * 70)

            missing = [p for p in (bit, xsa, elf) if not os.path.exists(p)]
            if missing:
                for p in missing:
                    print("  missing: " + p)
                rows.append(blank_row(fields, a.mode, a.variant, a.mitig,
                                      scrub_s, sz, layout, "missing_file"))
                continue

            try:
                ps7 = extract_ps7_init(xsa, workdir)
            except Exception as e:
                print("  could not get ps7_init.tcl: %s" % e)
                rows.append(blank_row(fields, a.mode, a.variant, a.mitig,
                                      scrub_s, sz, layout, "no_ps7_init"))
                continue

            reader = SerialReader(a.port, a.baud, echo=a.echo, done_re=done_re)
            reader.start()
            time.sleep(0.5)

            rc, wedged = run_one(a.xsct, bit, elf, ps7, workdir, a.verbose,
                                         reset=not a.no_reset)

            # UM: 27/09/26 - a wedged debug port gets one recovery and one
            # retry. The serial reader is restarted so the retry's output is
            # not mixed with whatever the failed attempt left in the buffer.
            if rc != 0 and wedged and not a.no_recover:
                print("  debug port wedged, trying JTAG resets")
                reader.close()
                if recover(a.xsct, workdir):
                    print("  recovered, retrying")
                    reader = SerialReader(a.port, a.baud, echo=a.echo, done_re=done_re)
                    reader.start()
                    time.sleep(0.5)
                    rc, wedged = run_one(a.xsct, bit, elf, ps7, workdir, a.verbose,
                                         reset=not a.no_reset)
                else:
                    print("  recovery failed: the board needs a power cycle")
                    rows.append(blank_row(fields, a.mode, a.variant, a.mitig,
                                          scrub_s, sz, layout, "board_wedged"))
                    continue

            if rc != 0:
                print("  xsct returned %d, skipping" % rc)
                reader.close()
                rows.append(blank_row(fields, a.mode, a.variant, a.mitig,
                                      scrub_s, sz, layout, "xsct_failed"))
                continue

            # Wait for the terminator line instead of a flat sleep.
            reader.done.wait(timeout=a.timeout)
            time.sleep(0.5)
            reader.close()

            text = reader.text()
            got, sa_reported, summary, cache_i = parse_output(text, a.mode)

            # Net mode: keep the raw UART log next to the CSV, one file per
            # run, and collect the per-layer profile. The cache state comes
            # from the variant name, since the test does not print it.
            if a.mode == "net":
                logdir = os.path.join(out_dir, "logs")
                os.makedirs(logdir, exist_ok=True)
                logname = os.path.basename(elf)[:-4]
                if a.mitig != "none":
                    logname += "_" + a.mitig
                if a.scrub:
                    logname += "_scrub"
                with open(os.path.join(logdir, logname + ".log"), "w") as f:
                    f.write(text)
                _, _, _, layers = parse_net(text)
                for l in layers:
                    l.update(net=net_stem, variant=a.variant, mitig=a.mitig,
                             sa_size=sz, layout=layout)
                    layer_rows.append(l)
                cache_i = "off" if "-nci" in a.variant else "on"
                for c in got:
                    if not c.get("net"):
                        c["net"] = net_stem
                if got and got[0]["verdict"] != "PASS":
                    print("  verdict: %s (log: logs/%s.log)"
                          % (got[0]["verdict"], logname))
                    if got[0]["first_mismatches"]:
                        print("  first mismatching images: "
                              + got[0]["first_mismatches"])

            if not got:
                print("  no rows captured. Is the port right?")
                print("  captured %d bytes" % len(text))
                if text and not a.echo:
                    print("  ---- tail ----")
                    print("\n".join(text.splitlines()[-10:]))
                rows.append(blank_row(fields, a.mode, a.variant, a.mitig,
                                      scrub_s, sz, layout, "no_output"))
                continue

            # The board reports the SA_SIZE it was built with. If that does
            # not match, the wrong ELF is running and the times are useless.
            if sa_reported is not None and sa_reported != sz:
                print("  WARNING: board reports SA_SIZE=%d, expected %d"
                      % (sa_reported, sz))

            # Same idea for the cache configuration: an ELF named -nci that
            # reports the instruction cache on means the flag never reached
            # the build, and the run measures the wrong condition.
            if cache_i:
                expected_off = a.variant.endswith("-nci") or "-nci-" in a.variant
                if expected_off and cache_i != "off":
                    print("  WARNING: ELF name says I-cache off, board "
                          "reports %s" % cache_i)
                elif not expected_off and cache_i != "on":
                    print("  WARNING: ELF name says I-cache on, board "
                          "reports %s" % cache_i)

            for c in got:
                r = {k: "" for k in fields}
                r.update(mode=a.mode, variant=a.variant, mitig=a.mitig,
                         scrub=scrub_s, cache_i=cache_i,
                         sa_size=sz, layout=layout)
                r.update({k: v for k, v in c.items() if k in r})
                rows.append(r)

            if a.mode == "net":
                g = got[0]
                print("  %s  golden %s  accuracy %s  %s us/inference"
                      % (g["verdict"], g["golden"] or "-",
                         g["accuracy"] or "-", g["total_us"] or "-"))
            elif summary and a.mode == "cnn":
                print("  %d images: %d correct, %d wrong"
                      % (len(got), summary[0], summary[1]))
            elif summary:
                print("  %d rows: %d passed, %d failed"
                      % (len(got), summary[0], summary[1]))
            else:
                print("  %d rows captured (no summary line)" % len(got))

    def merge_write(path, fieldnames, new_rows):
        """UM: 16/10/26 - keep the rows of other (sa_size, layout) pairs that
        an earlier run left in the same CSV. Rows of the pairs run now are
        replaced. Before this, a run with --layouts ocm hybrid overwrote the
        bram rows of the same file."""
        ran = set((str(r.get("sa_size")), r.get("layout")) for r in new_rows)
        kept = []
        if os.path.exists(path):
            with open(path, newline="") as f:
                for r in csv.DictReader(f):
                    if (r.get("sa_size"), r.get("layout")) not in ran:
                        kept.append({k: r.get(k, "") for k in fieldnames})
        with open(path, "w", newline="") as f:
            w = csv.DictWriter(f, fieldnames=fieldnames)
            w.writeheader()
            for r in kept + list(new_rows):
                w.writerow({k: r.get(k, "") for k in fieldnames})
        return len(kept)

    kept = merge_write(out_csv, fields, rows)
    if kept:
        print(" (%d rows of other sizes/layouts kept from the previous file)" % kept)

    print("\n" + "=" * 70)
    print(" %d rows -> %s" % (len(rows), out_csv))

    if a.mode == "net":
        layers_csv = out_csv[:-4] + "_layers.csv" if out_csv.endswith(".csv") \
            else out_csv + "_layers.csv"
        merge_write(layers_csv, FIELDS_NET_LAYERS, layer_rows)
        print(" %d layer rows -> %s" % (len(layer_rows), layers_csv))
        print(" raw logs -> %s" % os.path.join(out_dir, "logs"))
    print("=" * 70)

    if a.mode == "net":
        ok = sum(1 for r in rows if r.get("verdict") == "PASS")
        print(" %d PASS, %d not PASS" % (ok, len(rows) - ok))
    elif a.mode == "cnn":
        ok = sum(1 for r in rows if r.get("correct") == "yes")
        bad = sum(1 for r in rows if r.get("correct") == "no")
        blank = sum(1 for r in rows if r.get("correct") == "")
        print(" %d correct, %d wrong, %d without a result" % (ok, bad, blank))
    else:
        ok = sum(1 for r in rows if r.get("check") == "ok")
        bad = sum(1 for r in rows if r.get("check") not in ("ok", ""))
        print(" %d ok, %d not ok" % (ok, bad))


if __name__ == "__main__":
    main()