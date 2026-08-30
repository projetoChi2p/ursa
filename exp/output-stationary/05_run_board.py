#!/usr/bin/env python3
"""
run_board.py

Programs each bitstream, loads the matching ELF, and captures the benchmark
output from the serial port into a CSV.

The sweep is (array size x memory layout). For each combination it drives
xsct in batch mode to program the FPGA and start the program, while reading
the UART on a background thread. A run ends when the summary line appears,
or when the timeout expires.

Usage:
    python3 run_board.py --root ~/Projects/ursa/exp/output-stationary
    python3 run_board.py --sizes 8 --layouts bram      # single case
    python3 run_board.py --port /dev/ttyUSB0           # different port

Needs pyserial:  pip install pyserial --user
"""

import argparse
import csv
import os
import re
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

# g1_8x8                8      8      8         12  ok
# g2_256x16           256     16     16        698  FAIL (golden=... got=...)
CASE_RE = re.compile(
    r"^\s*(?P<name>g\d_\d+x\d+)\s+"
    r"(?P<p>\d+)\s+(?P<q>\d+)\s+(?P<m>\d+)\s+"
    r"(?P<us>\d+)\s+"
    r"(?P<check>ok|FAIL)"
)

SUMMARY_RE = re.compile(r"^\s*(?P<pass>\d+) passed,\s*(?P<fail>\d+) failed")

# The board prints this before the table; useful to confirm the ELF that
# actually booted matches the one we meant to load.
HEADER_RE = re.compile(r"SA_SIZE=(?P<sa>\d+), acc=(?P<acc>\d+) bits")


def parse_output(text):
    """Pull the per-case rows and the summary out of one run's output."""
    cases, sa_size, summary = [], None, None

    for line in text.splitlines():
        h = HEADER_RE.search(line)
        if h:
            sa_size = int(h.group("sa"))
            continue

        c = CASE_RE.match(line)
        if c:
            cases.append(dict(case=c.group("name"),
                              P=int(c.group("p")),
                              Q=int(c.group("q")),
                              M=int(c.group("m")),
                              us=int(c.group("us")),
                              check=c.group("check")))
            continue

        s = SUMMARY_RE.match(line)
        if s:
            summary = (int(s.group("pass")), int(s.group("fail")))

    return cases, sa_size, summary


# --------------------------------------------------------------------------
# Serial reader
# --------------------------------------------------------------------------

class SerialReader(threading.Thread):
    """Reads the port in the background so the xsct call does not block it.

    Stops on the summary line rather than on a fixed delay, so a fast case
    does not cost the full timeout.
    """

    def __init__(self, port, baud, echo=False):
        super().__init__(daemon=True)
        self.ser = serial.Serial(port, baud, timeout=0.2)
        self.echo = echo
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
            if SUMMARY_RE.match(chunk):
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

#XSCT_TEMPLATE = """
#connect
#targets -set -filter {{name =~ "ARM*#0"}}
#fpga -file {bit}
#source {ps7_init}
#ps7_init
#ps7_post_config
#targets -set -filter {{name =~ "ARM*#0"}}
#rst -processor
#dow {elf}
#con
#after 500
#disconnect
#exit
#"""

XSCT_TEMPLATE = """
connect
targets -set -filter {{name =~ "ARM*#0"}}
catch {{ stop }}
after 500
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



def extract_ps7_init(xsa, workdir):
    """The XSA is a zip; ps7_init.tcl lives inside and sets up clocks and DDR.

    Without it the program loads but does not run correctly.
    """
    out = os.path.join(workdir, "xsa")
    os.makedirs(out, exist_ok=True)
    subprocess.run(["unzip", "-o", "-q", xsa, "-d", out], check=True)
    path = os.path.join(out, "ps7_init.tcl")
    if not os.path.exists(path):
        raise FileNotFoundError("ps7_init.tcl not found inside " + xsa)
    return path


def run_one(xsct, bit, elf, ps7_init, workdir, verbose=False):
    script = os.path.join(workdir, "run.tcl")
    with open(script, "w") as f:
        f.write(XSCT_TEMPLATE.format(bit=bit, elf=elf, ps7_init=ps7_init))

    r = subprocess.run([xsct, script], capture_output=True, text=True, timeout=300)
    if verbose or r.returncode != 0:
        print(r.stdout[-2000:])
        if r.stderr:
            print(r.stderr[-2000:])
    return r.returncode


# --------------------------------------------------------------------------
# Main
# --------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=".",
                    help="project root holding bitstreams/ and elfs/")
    ap.add_argument("--port", default="/dev/ttyUSB0")
    ap.add_argument("--baud", type=int, default=115200)
    ap.add_argument("--sizes", type=int, nargs="+", default=[2, 4, 8, 16])
    ap.add_argument("--layouts", nargs="+", default=["bram", "ocm", "hybrid"])
    ap.add_argument("--variant", default="vanilla")
    ap.add_argument("--acc", type=int, default=20)
    ap.add_argument("--out", default=None, help="output CSV")
    ap.add_argument("--timeout", type=float, default=60.0,
                    help="seconds to wait for one run to finish")
    ap.add_argument("--xsct", default="xsct")
    ap.add_argument("--echo", action="store_true",
                    help="print the serial output as it arrives")
    ap.add_argument("--verbose", action="store_true")
    a = ap.parse_args()

    root = os.path.abspath(os.path.expanduser(a.root))
    bitdir = os.path.join(root, "bitstreams")
    elfdir = os.path.join(root, "elfs")
    out_csv = a.out or os.path.join(root, "results", "times.csv")
    os.makedirs(os.path.dirname(out_csv), exist_ok=True)

    rows = []
    workdir = tempfile.mkdtemp(prefix="ursa_run_")
    total = len(a.sizes) * len(a.layouts)
    count = 0

    for layout in a.layouts:
        for sz in a.sizes:
            count += 1
            tag = "%s_%dx%d_acc%d_%s" % (a.variant, sz, sz, a.acc, layout)
            bit = os.path.join(bitdir, "ursa_%s.bit" % tag)
            xsa = os.path.join(bitdir, "ursa_%s.xsa" % tag)
            elf = os.path.join(elfdir, "bench_%s_%dx%d_%s.elf"
                               % (a.variant, sz, sz, layout))

            print("\n" + "=" * 70)
            print(" [%d/%d] SA_SIZE=%d  layout=%s" % (count, total, sz, layout))
            print("=" * 70)

            missing = [p for p in (bit, xsa, elf) if not os.path.exists(p)]
            if missing:
                for p in missing:
                    print("  missing: " + p)
                rows.append(dict(sa_size=sz, layout=layout, case="",
                                 P="", Q="", M="", us="", check="missing_file"))
                continue

            try:
                ps7 = extract_ps7_init(xsa, workdir)
            except Exception as e:
                print("  could not get ps7_init.tcl: %s" % e)
                continue

            reader = SerialReader(a.port, a.baud, echo=a.echo)
            reader.start()
            time.sleep(0.5)

            #rc = run_one(a.xsct, bit, elf, ps7, workdir, a.verbose)
            #if rc != 0:
            #    print("  xsct returned %d" % rc)
            rc = run_one(a.xsct, bit, elf, ps7, workdir, a.verbose)
            if rc != 0:
                print("  xsct returned %d, skipping" % rc)
                reader.close()
                rows.append(dict(sa_size=sz, layout=layout, case="",
                                 P="", Q="", M="", us="", check="xsct_failed"))
                continue


            # Wait for the summary line instead of a flat sleep.
            reader.done.wait(timeout=a.timeout)
            time.sleep(0.5)
            reader.close()

            text = reader.text()
            cases, sa_reported, summary = parse_output(text)

            if not cases:
                print("  no case lines captured. Is the port right?")
                print("  captured %d bytes" % len(text))
                if text and not a.echo:
                    print("  ---- tail ----")
                    print("\n".join(text.splitlines()[-10:]))
                rows.append(dict(sa_size=sz, layout=layout, case="",
                                 P="", Q="", M="", us="", check="no_output"))
                continue

            # The board reports the SA_SIZE it was built with. If that does
            # not match, the wrong ELF is running and the times are useless.
            if sa_reported is not None and sa_reported != sz:
                print("  WARNING: board reports SA_SIZE=%d, expected %d"
                      % (sa_reported, sz))

            for c in cases:
                rows.append(dict(sa_size=sz, layout=layout, **c))

            if summary:
                print("  %d cases: %d passed, %d failed"
                      % (len(cases), summary[0], summary[1]))
            else:
                print("  %d cases captured (no summary line)" % len(cases))

    with open(out_csv, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["sa_size", "layout", "case",
                                          "P", "Q", "M", "us", "check"])
        w.writeheader()
        for r in rows:
            w.writerow(r)

    print("\n" + "=" * 70)
    print(" %d rows -> %s" % (len(rows), out_csv))
    print("=" * 70)

    ok = sum(1 for r in rows if r.get("check") == "ok")
    bad = sum(1 for r in rows if r.get("check") not in ("ok", ""))
    print(" %d ok, %d not ok" % (ok, bad))


if __name__ == "__main__":
    main()