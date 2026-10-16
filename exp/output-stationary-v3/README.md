# URSA v3 (output-stationary, streaming shell)

v3 keeps the v2 PE and array (bit-exact results) and changes only the shell
and the memory layout. Motivation: the cycle-level simulation of the v2 RTL
(8x8, m=144, 1-cycle memory) took about 620 cycles per tile for 144 cycles of
MACs (LOAD_B 227, STREAM_K 163, 48 empty states, sa_store 179), with nothing
overlapped.

## The three changes

1. **Tile-major A and B.** One word per reduction step k of one tile, so
   every read is a linear burst (v2 read B row by row, "Stride is
   incompatible", no burst).
2. **DATAFLOW overlap.** `read_a`, `read_b`, `compute`, `write_c` run in
   parallel, linked by FIFOs. The skew is done in shift registers, so the
   steps enter the array in increasing k.
3. **Tile-major C on a 64-bit port.** At the end of a tile the accumulators
   go to a shadow register in one cycle and the array is cleared; the shadow
   leaves one PE row per cycle while the next tile computes. `write_c` emits
   all of C as one linear stream of 64-bit writes (2 int32 per beat).

## Expected cost per tile (to be confirmed on the RTL)

- compute: `T = m + 2*SA - 2` cycles (the 2SA-2 flush is not overlapped
  with the next tile)
- write_c: `SA*SA/2` beats
- read_b: `KW` beats

Steady state is `max(T, SA*SA/2)` per tile. 8x8, m=144: about 158 cycles
(v2: about 620). At 16x16 the C port is the bound when m < 98
(128 beats per tile).

## Files

- `sources/vanilla/src/`: HLS sources (`settings.h`, `core/{pe,sa,shell}`)
- `sources/vanilla/tb/simple_mxm/tb_main.cpp`: C testbench, also the
  reference pack/unpack in ap_uint form
- `sources/vanilla/sw/ursa_v3_layout.h`: the same layout in plain C, for the
  urt runtime (`ursa3_pack_a`, `ursa3_pack_b`, `ursa3_unpack_c`)
- `02_do_hls_all.sh`, `do_hls_config.cfg.in`: HLS sweep (2, 4, 8, 16)
- `sim/`: Icarus Verilog testbench for the synthesized RTL
  (`./run_sim.sh ip_ursa/ursa_vanilla_8x8_acc20 8 16 32 144 1 1`)

## Status

- C simulation passes at SA = 2, 4, 8, 16 (T3 layers, edge shapes,
  netmendes-like shapes, saturated operands, m out of range).
- `ursa_v3_layout.h` checked end to end against the C model at all four sizes.
- Not yet synthesized. The AXI-Lite offsets in `sim/tb_v3.v` are the v2 ones;
  `run_sim.sh` prints the real ones from the generated RTL.
