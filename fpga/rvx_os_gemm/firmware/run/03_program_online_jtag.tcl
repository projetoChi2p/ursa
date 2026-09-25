# -----------------------------------------------------------------------------
# Programa a PL (bitstream) e carrega a aplicacao do ARM via JTAG (XSDB).
# Chamado por 03_program_online_jtag.sh <bitstream.bit>
# -----------------------------------------------------------------------------

######################################
# Configuracao da placa (ZedBoard)
######################################
set fpga_part_filter   "xc7z020*"   ;# so informativo; o filtro abaixo usa o literal
set board_filter_regex "*"

# Hardware da PL exportado pelo Vivado (.xsa). O ps7_init.tcl e extraido dele,
# entao nao e preciso ter uma plataforma Vitis.
#   Gerar (projeto implementado aberto):
#     write_hw_platform -fixed -force -file <repo>/vivado_proj/build/rvx-ursa/rvx_zynq.xsa
# Sobrescrever com: export URSA_XSA=/caminho/arquivo.xsa
set script_folder [file dirname [file normalize [info script]]]
if {[info exists ::env(URSA_XSA)]} {
    set hardware_def_file [file normalize $::env(URSA_XSA)]
} else {
    set hardware_def_file [file normalize "${script_folder}/../../vivado_proj/build/rvx-ursa/rvx_zynq.xsa"]
}

# Aplicacao do ARM (opcional). Sem ela, o PS so e inicializado (clocks/resets da PL)
# e o ARM fica parado; o RVX roda normalmente na PL.
#   Usar uma: export URSA_ARM_ELF=/caminho/app.elf
set arm_app_file ""
if {[info exists ::env(URSA_ARM_ELF)]} {
    set arm_app_file [file normalize $::env(URSA_ARM_ELF)]
}

######################################
# Versao do Vivado (aceita .../Vivado/2023.2 e .../2025.1/Vivado)
######################################
set xil [lindex [split $::env(XILINX_VIVADO) ";"] 0]
if {![regexp {(20[0-9]{2}\.[0-9])} $xil _x vivadoVer]} {
    error "ERRO: nao consegui extrair a versao do Vivado de '$xil'."
}
puts "Vivado version: $vivadoVer"

if { [string compare $vivadoVer "2023.2"] >= 0 } {
    set hw_def_ext "xsa"
} elseif { [string compare $vivadoVer "2018.3"] <= 0 } {
    set hw_def_ext "hdf"
} else {
    error "ERRO: versao do Vivado nao suportada: $vivadoVer"
}

######################################
# Argumentos e checagens
######################################
if {$argc != 1} {
    error "Uso: xsdb 03_program_online_jtag.tcl <bitstream.bit>"
}
set fpga_bitstream_file [file normalize [lindex $argv 0]]

foreach f [list $fpga_bitstream_file $hardware_def_file] {
    if {![file exists $f]} {
        error "ERRO: arquivo nao encontrado: $f"
    }
}
if {$arm_app_file ne "" && ![file exists $arm_app_file]} {
    error "ERRO: URSA_ARM_ELF aponta para arquivo inexistente: $arm_app_file"
}

# Extrai o ps7_init.tcl de dentro do .xsa (e um zip)
set tmp_dir [file join $script_folder build xsa_extract]
file mkdir $tmp_dir
if {[catch {exec unzip -o -j $hardware_def_file ps7_init.tcl -d $tmp_dir} msg]} {
    error "ERRO: nao consegui extrair ps7_init.tcl de $hardware_def_file\n$msg"
}
set init_file [file join $tmp_dir ps7_init.tcl]

puts "Platform:        ${hardware_def_file}"
puts "Preset:          ${init_file}"
puts "Bitstream:       ${fpga_bitstream_file}"
puts "Application:     [expr {$arm_app_file eq "" ? "(nenhuma, ARM parado)" : $arm_app_file}]"
puts "FPGA filter:     ${fpga_part_filter}"

set begin_secs [clock seconds]

######################################
# Programacao
######################################
connect -url tcp:127.0.0.1:3121

source $init_file

targets -set -nocase -filter {name =~ "APU*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 0
rst -system
after 3000

targets -set -nocase -filter {name =~ "xc7z020*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 1
fpga -file ${fpga_bitstream_file}
puts "FPGA bitstream loaded."

targets -set -nocase -filter {name =~ "APU*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 0
if { $hw_def_ext == "xsa" } {
    loadhw -hw ${hardware_def_file} -mem-ranges [list {0x40000000 0xbfffffff}]
    configparams force-mem-access 1
} else {
    loadhw ${hardware_def_file}
}
puts "Hardware def loaded."
after 500

ps7_init
puts "PS7 init run."
after 500
ps7_post_config
puts "PS7 post config run."
after 500

if {$arm_app_file ne ""} {
    targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ $board_filter_regex} -index 0
    rst -processor
    after 2000
    dow ${arm_app_file}
    puts "Arm application loaded."
    con
} else {
    puts "Sem aplicacao ARM: PS inicializado, ARM parado."
}

if { $hw_def_ext == "xsa" } {
    configparams force-mem-access 0
}

set end_secs [clock seconds]
puts "\n\nElapsed time [expr {$end_secs - $begin_secs}] seconds"
puts "PROGRAM_DONE"