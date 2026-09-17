# -----------------------------------------------------------------------------
# rvx_os_gemm - Recria o projeto Vivado do SoC RVX + acelerador URSA (ZedBoard)
#
# Uso:
#   vivado -mode batch -source scripts/create_project.tcl
#   vivado -mode batch -source scripts/create_project.tcl -tclargs --run
#
# O projeto e gerado em <repo>/build/<nome> e pode ser apagado a vontade:
# tudo que importa esta versionado em rtl/, bd/, ip_repo/, mem/ e constraints/.
# -----------------------------------------------------------------------------

set proj_name  "rvx-ursa"
set part_name  "xc7z020clg484-1"
set top_module "rvx_zynq"
set run_flow   0

# Raiz do repositorio = pasta acima de scripts/
set script_dir [file normalize [file dirname [info script]]]
set root_dir   [file normalize $script_dir/..]
set build_dir  $root_dir/build

foreach arg $argv {
    if { $arg eq "--run" } { set run_flow 1 }
}

puts "INFO: raiz do projeto: $root_dir"

# -----------------------------------------------------------------------------
# Projeto
# -----------------------------------------------------------------------------
file mkdir $build_dir
create_project $proj_name $build_dir/$proj_name -part $part_name -force

set_property target_language Verilog [current_project]
set_property default_lib xil_defaultlib [current_project]

# IP repo com o IP do HLS (mxm_execute_ursa)
set_property ip_repo_paths [list $root_dir/ip_repo] [current_project]
update_ip_catalog -rebuild

# -----------------------------------------------------------------------------
# Fontes RTL
# -----------------------------------------------------------------------------
set rtl_files [glob -nocomplain $root_dir/rtl/*.v $root_dir/rtl/*.sv]
if { [llength $rtl_files] == 0 } {
    error "ERRO: nenhum arquivo RTL encontrado em $root_dir/rtl"
}
add_files -norecurse -fileset sources_1 $rtl_files
puts "INFO: [llength $rtl_files] arquivos RTL adicionados"

# Arquivos de inicializacao da memoria (.mem)
# Sem isso a BRAM do rvx_ram pode ser otimizada e o updatemem nao acha as BRAMs.
set mem_files [glob -nocomplain $root_dir/mem/*.mem]
if { [llength $mem_files] > 0 } {
    add_files -norecurse -fileset sources_1 $mem_files
    set_property file_type {Memory File} [get_files -of_objects [get_filesets sources_1] *.mem]
    puts "INFO: [llength $mem_files] arquivos .mem adicionados"
}

# -----------------------------------------------------------------------------
# Constraints
# -----------------------------------------------------------------------------
set xdc_files [glob -nocomplain $root_dir/constraints/*.xdc]
if { [llength $xdc_files] == 0 } {
    error "ERRO: nenhum XDC encontrado em $root_dir/constraints"
}
add_files -norecurse -fileset constrs_1 $xdc_files
puts "INFO: [llength $xdc_files] arquivos XDC adicionados"

# -----------------------------------------------------------------------------
# Block designs
# -----------------------------------------------------------------------------
# bd_zynq : PS7 (preset ZedBoard) + proc_sys_reset -> FCLK_CLK0_40, RESET_N
# bd_ursa : mxm_execute_ursa + interconnects + BRAMs (0x40000000-0x40044000)
foreach bd {bd_zynq bd_ursa} {
    set bd_tcl $root_dir/bd/$bd.tcl
    if { ![file exists $bd_tcl] } {
        error "ERRO: nao encontrei $bd_tcl"
    }
    puts "INFO: criando block design $bd"
    source $bd_tcl
    regenerate_bd_layout
    save_bd_design
    close_bd_design $bd
}

# Wrappers dos BDs (instanciados por rvx_zynq.v)
foreach bd {bd_zynq bd_ursa} {
    set bd_file [get_files -norecurse $bd.bd]
    set wrapper [make_wrapper -fileset sources_1 -files $bd_file -top]
    add_files -norecurse -fileset sources_1 $wrapper
}

# -----------------------------------------------------------------------------
# Top
# -----------------------------------------------------------------------------
set_property top $top_module [get_filesets sources_1]
update_compile_order -fileset sources_1

if { [get_property top [get_filesets sources_1]] ne $top_module } {
    error "ERRO: top ficou [get_property top [get_filesets sources_1]], esperado $top_module"
}

puts "INFO: projeto criado em $build_dir/$proj_name"
puts "INFO: top = $top_module, part = $part_name"

# -----------------------------------------------------------------------------
# Sintese / implementacao (opcional)
# -----------------------------------------------------------------------------
if { $run_flow } {
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
    if { [get_property PROGRESS [get_runs synth_1]] ne "100%" } {
        error "ERRO: sintese falhou"
    }

    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1
    if { [get_property PROGRESS [get_runs impl_1]] ne "100%" } {
        error "ERRO: implementacao falhou"
    }

    puts "INFO: bitstream em $build_dir/$proj_name/$proj_name.runs/impl_1/$top_module.bit"
}