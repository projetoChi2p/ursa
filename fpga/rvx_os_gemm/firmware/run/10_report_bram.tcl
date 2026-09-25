# -----------------------------------------------------------------------------
# Gera build/bram.yaml com o placement das BRAMs da RAM do RVX.
# Rodar no Tcl Console do Vivado com o design IMPLEMENTADO aberto:
#
#   source <caminho>/10_report_bram.tcl
#
# Refazer sempre que a implementacao for refeita. Depois: 11_yaml2mmi_128k.py
# -----------------------------------------------------------------------------

set script_folder [file dirname [file normalize [info script]]]
set out_dir       [file join $script_folder build]
set out_file      [file join $out_dir bram.yaml]
file mkdir $out_dir

set all_rom_blocks [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ BMEM.bram.*  &&  NAME =~  "rvx_i/rvx_ram_instance*" }]

if {[llength $all_rom_blocks] == 0} {
    error "ERRO: nenhuma BRAM encontrada em rvx_i/rvx_ram_instance. O design implementado esta aberto?"
}

set fh [open $out_file w]
puts $fh "# Block ram description"
puts $fh "---"
puts $fh "bram:"
foreach block $all_rom_blocks {
    puts $fh "- NAME:  [get_property NAME $block]"
    puts $fh "  SITE: [get_property SITE $block]"
    puts $fh "  READ_WIDTH_A: [get_property READ_WIDTH_A $block]"
}
close $fh

puts "[llength $all_rom_blocks] BRAMs escritas em $out_file"