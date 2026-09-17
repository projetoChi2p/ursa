create_pblock pblock_simplex
add_cells_to_pblock [get_pblocks pblock_simplex] [get_cells -quiet [list \
          bd_bram_tmr_ecc_i/GND \
          bd_bram_tmr_ecc_i/VCC \
          bd_bram_tmr_ecc_i/axi_bram_ctrl_0 \
          bd_bram_tmr_ecc_i/axi_bram_ctrl_1 \
          bd_bram_tmr_ecc_i/axi_bram_ctrl_2 \
          bd_bram_tmr_ecc_i/axi_interconnect_0 \
          bd_bram_tmr_ecc_i/axi_interconnect_1 \
          bd_bram_tmr_ecc_i/axi_interconnect_2 \
          bd_bram_tmr_ecc_i/blk_mem_gen_0 \
          bd_bram_tmr_ecc_i/blk_mem_gen_1 \
          bd_bram_tmr_ecc_i/blk_mem_gen_2 \
          bd_bram_tmr_ecc_i/processing_system7_0 \
          bd_bram_tmr_ecc_i/ps7_0_axi_periph \
          bd_bram_tmr_ecc_i/rst_ps7_0_50M \
          bd_bram_tmr_ecc_i/shell_top_0 \
          bd_bram_tmr_ecc_i/tmr_voter_0 \
          bd_bram_tmr_ecc_i/tmr_voter_1 \
          bd_bram_tmr_ecc_i/tmr_voter_2 \
          bd_bram_tmr_ecc_i/tmr_voter_3 \
          bd_bram_tmr_ecc_i/tmr_voter_4]]
resize_pblock [get_pblocks pblock_simplex] -add {SLICE_X26Y50:SLICE_X67Y149 SLICE_X0Y35:SLICE_X77Y49 SLICE_X24Y0:SLICE_X77Y34}
resize_pblock [get_pblocks pblock_simplex] -add {DSP48_X2Y0:DSP48_X2Y59 DSP48_X0Y14:DSP48_X1Y19}
resize_pblock [get_pblocks pblock_simplex] -add {RAMB18_X2Y0:RAMB18_X3Y59 RAMB18_X0Y14:RAMB18_X0Y19}
resize_pblock [get_pblocks pblock_simplex] -add {RAMB36_X2Y0:RAMB36_X3Y29 RAMB36_X0Y7:RAMB36_X0Y9}
create_pblock pblock_shell_top_1
add_cells_to_pblock [get_pblocks pblock_shell_top_1] [get_cells -quiet [list bd_bram_tmr_ecc_i/shell_top_1]]
resize_pblock [get_pblocks pblock_shell_top_1] -add {SLICE_X80Y59:SLICE_X113Y149}
resize_pblock [get_pblocks pblock_shell_top_1] -add {DSP48_X3Y24:DSP48_X4Y59}
resize_pblock [get_pblocks pblock_shell_top_1] -add {RAMB18_X4Y24:RAMB18_X5Y59}
resize_pblock [get_pblocks pblock_shell_top_1] -add {RAMB36_X4Y12:RAMB36_X5Y29}
create_pblock pblock_shell_top_2
add_cells_to_pblock [get_pblocks pblock_shell_top_2] [get_cells -quiet [list bd_bram_tmr_ecc_i/shell_top_2]]
resize_pblock [get_pblocks pblock_shell_top_2] -add {SLICE_X78Y0:SLICE_X113Y58 SLICE_X0Y0:SLICE_X23Y34}
resize_pblock [get_pblocks pblock_shell_top_2] -add {DSP48_X3Y0:DSP48_X4Y21 DSP48_X0Y0:DSP48_X1Y13}
resize_pblock [get_pblocks pblock_shell_top_2] -add {PMVBRAM_X0Y0:PMVBRAM_X0Y0}
resize_pblock [get_pblocks pblock_shell_top_2] -add {RAMB18_X4Y0:RAMB18_X5Y21 RAMB18_X0Y0:RAMB18_X0Y13}
resize_pblock [get_pblocks pblock_shell_top_2] -add {RAMB36_X4Y0:RAMB36_X5Y10 RAMB36_X0Y0:RAMB36_X0Y6}
