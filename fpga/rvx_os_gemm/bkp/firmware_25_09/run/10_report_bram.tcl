# Rodar apenas uma vez no vivado - fazer isso em implementação - TCL da implementação
# source /home/ulisses/Projects/nn-apsoc-sa/exp_studies/ulisses/rvx-ursa/firmware/run/10_report_bram.tcl > bram.yaml

# script to help generation of MMI file
# - Open implemented project in Vivado
# - At Vivado Tcl command prompt:
#   source /home/work/nn-apsoc-risc-v/hardware_socs/rvx/mc32_study/firmware/run/10_report_bram.tcl > /home/work/nn-apsoc-risc-v/hardware_socs/rvx/mc32_study/firmware/run/bram.yaml
# - Then make MMI
#   python3 -m pip install pyyaml
#   python3 11_yaml2mmi_128k.py > rv32_steel_128k.mmi

set all_rom_blocks [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.*  &&  NAME =~  "rvx_i/rvx_ram_instance*" }]
puts "# Block ram description"
puts "---"
puts "bram:"
foreach block $all_rom_blocks {
    puts "- NAME:  [get_property NAME $block]"
    puts "  SITE: [get_property SITE $block]"
    puts "  READ_WIDTH_A: [get_property READ_WIDTH_A $block]"
}
