# URSA (UFRGS Reconfigurable Systolic Array)

URSA is a parameter-tunable GEMM accelerator built as a systolic array whose
geometry and memory organization are configured at design time. It was first
synthesized in the Programmable Logic (PL) of an AMD Xilinx Zynq-7000 APSoC
(ZedBoard), and an ASIC version integrated with a RISC-V core is in progress.

On the FPGA, matrices A, B and C can be placed entirely in on-chip memory
(OCM), entirely in Block RAM (BRAM), or in a hybrid configuration where weights
are stored in BRAM while activations are streamed through OCM. This flexibility
enables exploration of different performance, area, and reliability
trade-offs.

A central shell module connects the Processing System (PS) to the systolic
array, handling control, data movement, and synchronization. The PS provides
the matrix dimensions — P (rows of A), Q (columns of B), and M (shared
dimension) — while matrices are stored linearly in shared memory. Communication
between PS and PL uses standard AXI interfaces, and the shell aligns and
injects data directly into the array inputs.

URSA was designed to support architectural exploration, fault-tolerance
techniques, and research on reliable CNN and GEMM acceleration.

## Repository layout

```
fpga/
  legacy/        first version, kept for reference
  os_gemm/       output stationary, GEMM only (stable)
  ws_gemm/       weight stationary, GEMM only
  rvx_os_gemm/   output stationary, GEMM only, controlled by the RVX RISC-V core
asic/            output stationary RTL integrated with a RISC-V core
exp/             ongoing experiments
docs/            papers, figures and notes
```

Each folder is self-contained and has its own README with build and run
instructions. Start there.

## Versions

| folder | architecture | target | status |
|---|---|---|---|
| `fpga/legacy` | output stationary | ZedBoard | frozen |
| `fpga/os_gemm` | output stationary, GEMM | ZedBoard | stable |
| `fpga/ws_gemm` | weight stationary, GEMM | ZedBoard | in development |
| `fpga/rvx_os_gemm` | output stationary, GEMM + RVX | ZedBoard | in development |
| `asic` | output stationary + RISC-V | ASIC | in development |
| `exp/output-stationary` | output stationary, GEMM | ZedBoard | active development |
| `exp/weight-stationary` | weight stationary, GEMM | ZedBoard | active development |

`fpga/os_gemm` is the version behind the dissertation results. New work on the
output stationary design happens in `exp/output-stationary` and is promoted to
`fpga/` once it is stable.

Performance numbers from different versions were measured under different
conditions and instrumentation. Do not mix them in one comparison.

## Tools

- AMD Vitis HLS, Vivado and Vitis 2023.2
- ZedBoard (Zynq-7000, `xc7z020clg484-1`)

## Publications

- U. Maffazioli et al., "Heavy-Ion Radiation Fault Analysis of URSA: A
  Reconfigurable Systolic Array for CNN Acceleration in SRAM-Based APSoC,"
  *IEEE Transactions on Nuclear Science*, vol. 73, no. 8, pp. 2948–2956,
  Aug. 2026. doi: [10.1109/TNS.2026.3691993](https://doi.org/10.1109/TNS.2026.3691993)
  · [IEEE Xplore](https://ieeexplore.ieee.org/document/11514164)
- V. K. Veiga et al., "Power-Performance Analysis of a Softcore RISC-V SoC With
  CNN Accelerators for In-Orbit Computing," in *2026 IEEE 17th Latin America
  Symposium on Circuits and Systems (LASCAS)*, Arequipa, Peru, 2026, pp. 1–5.
  doi: [10.1109/LASCAS67804.2026.11457167](https://doi.org/10.1109/LASCAS67804.2026.11457167)
  · [IEEE Xplore](https://ieeexplore.ieee.org/document/11457167)

### BibTeX

```bibtex
@article{maffazioli2026ursa,
  author  = {Maffazioli, Ulisses and others},
  title   = {Heavy-Ion Radiation Fault Analysis of {URSA}: A Reconfigurable
             Systolic Array for {CNN} Acceleration in {SRAM}-Based {APSoC}},
  journal = {IEEE Transactions on Nuclear Science},
  volume  = {73},
  number  = {8},
  pages   = {2948--2956},
  year    = {2026},
  month   = aug,
  doi     = {10.1109/TNS.2026.3691993}
}

@inproceedings{veiga2026riscv,
  author    = {Veiga, V. K. and others},
  title     = {Power-Performance Analysis of a Softcore {RISC-V} {SoC} With
               {CNN} Accelerators for In-Orbit Computing},
  booktitle = {2026 IEEE 17th Latin America Symposium on Circuits and
               Systems (LASCAS)},
  address   = {Arequipa, Peru},
  pages     = {1--5},
  year      = {2026},
  doi       = {10.1109/LASCAS67804.2026.11457167}
}
```

## Changelog

Newest first. Each entry records the date and who made the change.

### 2026-09-17 — Ulisses
- Reorganized the repository into `fpga/`, `asic/`, `exp/` and `docs/`.
- The previous root content moved to `fpga/legacy`.
- `exp/output-stationary` copied to `fpga/os_gemm` as the stable version.
- Added `fpga/rvx_os_gemm` to the layout, for the FPGA prototype of URSA with
  the RVX core.
- Added the list of publications.

## License

MIT, see [LICENSE](LICENSE).