# URSA — Legacy

First version of URSA, an output stationary systolic array for GEMM on the
Zynq-7000 (ZedBoard). Kept for reference: no new development happens here.
Active work lives in the other folders under `fpga/`.

## Contents

| folder / file | what it is |
|---|---|
| `src/` | HLS sources (`core/`, `labft/`, `im2col/`) |
| `tb/` | testbenches (`cnn/`, `cnn_vitis/`, `simple_mxm/`) |
| `third-party/` | Xilinx HLS headers for the Linux build |
| `vivado_project/` | Vivado projects (`v1_pelletron` was used in the Pelletron campaign) |
| `version/` | backups and older snapshots worth keeping |
| `do_cmake.sh`, `CMakeLists.txt` | C++ build for Linux |
| `do_hls_all.sh`, `do_hls_config.cfg.in` | HLS IP generation (Vitis 2023.2) |

## Usage

**Linux build**

```bash
./do_cmake.sh
cd build && make
```

**HLS IP generation**

```bash
./do_hls_all.sh
```

Array sizes are set in `ARRAY_SZ` inside `do_hls_all.sh`. Source and testbench
files are listed in `do_hls_config.cfg.in`.

## Changelog

### 2026-09-17 - Ulisses
- Moved from the repository root to `fpga/legacy/` as part of the repository
  reorganization.
- Fixed `do_hls_config.cfg.in` to match the current `src/` and `tb/cnn/`
  layout (subfolders, `labft/`, `utils.cpp`). HLS flow tested and working.