
set xil [lindex [split $::env(XILINX_VIVADO) ";"] 0]
puts "$xil"

# /opt/Xilinx/Vivado/2023.2/ids_lite/ISE
regexp {Xilinx/Vivado/([0-9\.]+)$} "$xil" _x vivadoVer
puts "Vivado version: $vivadoVer"

if { [string compare $vivadoVer "2023.2"] >= 0 } {
    set hw_def_ext "xsa"
} elseif { [string compare $vivadoVer "2018.3"] <= 0 } {
    set hw_def_ext "hdf"
} else {
    error "ERROR: Unknown Vivado version $vivadoVer."
}


set board_filter_regex "*"
if {$argc == 1} {
    set fpga_bitstream_file [lindex $argv 0]
} else {
    puts "There are $argc arguments to this script"
    puts "The name of this script is $argv0"
    if {$argc > 0} {puts "The other arguments are: $argv" }
    error "ERROR: No valid params."
}

######################################
set design_top         "z020_top"
set arm_app            "hello"
######################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]


puts "Running from $script_folder"


set arm_app_file        [file normalize "${script_folder}/../../vivado_proj/rvx_base_zybo_vitis_2023.2_v0.1/hello/build/hello.elf" ]
set init_file           [file normalize "${script_folder}/../../vivado_proj/rvx_base_zybo_vitis_2023.2_v0.1/platform/export/platform/hw/ps7_init.tcl" ]
set hardware_def_file   [file normalize "${script_folder}/../../vivado_proj/rvx_base_zybo_vitis_2023.2_v0.1/platform/export/platform/hw/rvx_zynq.xsa" ]

puts "Platform:        ${hardware_def_file}"
puts "Preset:          ${init_file}"
puts "Bitstream:       ${fpga_bitstream_file}"
puts "Application:     ${arm_app_file}"
puts "Board selection: ${board_filter_regex}"


set begin_secs [clock seconds]

connect -url tcp:127.0.0.1:3121

#xsdb% connect -url tcp:127.0.0.1:3121                                                                                                
#tcfchan#0                                                                                                                            
#xsdb% targets                                                                                                                        
#  1  APU
#     2  ARM Cortex-A9 MPCore #0 (Running)
#     3  ARM Cortex-A9 MPCore #1 (Running)
#  4  xc7z010

source $init_file


targets -set -nocase -filter {name =~"APU*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 0
#targets -set -nocase -filter {name =~"APU*" && level==0}

rst -system
after 3000

targets -set -nocase -filter {name =~"xc7z010*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 1
#targets -set -nocase -filter {name =~"xc7z010*" && level==0}
fpga -file ${fpga_bitstream_file}
puts "FPGA bitstream loaded."

targets -set -nocase -filter {name =~"APU*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 0
#targets -set -nocase -filter {name =~"APU*" && level==0}
if { $hw_def_ext == "xsa" } {
    loadhw -hw ${hardware_def_file} -mem-ranges [list {0x40000000 0xbfffffff}]
    configparams force-mem-access 1
} else {
    loadhw ${hardware_def_file}
}
puts "Hardware def loaded."

after 500

targets -set -nocase -filter {name =~"APU*" && level==0 && jtag_cable_name =~ $board_filter_regex} -index 0
#targets -set -nocase -filter {name =~"APU*" && level==0}
after 500
ps7_init
puts "PS7 init run."
after 500
ps7_post_config
puts "PS7 post config. run."

after 500

targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ $board_filter_regex} -index 0
#targets -set -nocase -filter {name =~ "*A9*#0" && level==1}
rst -processor
after 2000
dow ${arm_app_file}
puts "Arm application loaded."

#targets -set -nocase -filter {name =~ "*A9*#0" && level==1}
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ $board_filter_regex} -index 0
con

if { $hw_def_ext == "xsa" } {
    configparams force-mem-access 0
}

set end_secs [clock seconds]

puts "\n\nElapsed time [expr {$end_secs - $begin_secs}] seconds"
puts "PROGRAM_DONE"


# Sample Vitis IDE log
#16:49:41 INFO  : XSDB server has started successfully from frontend.
#16:49:42 INFO  : Connection to XSDB Server established.
#16:49:42 INFO  : Done
#16:49:42 INFO  : connect -url tcp:127.0.0.1:3121
#16:49:43 INFO  : bpremove -all
#16:49:44 INFO  : Context for 'APU' is selected.
#16:49:47 INFO  : 'after 3000' command is executed.
#16:49:47 INFO  : targets -set -nocase -filter {name =~"APU*"}
#16:49:47 INFO  : loadhw -hw /media/fabiob/portdev/nn-apsoc/development/engines/xilinx_finn/sat_6/integration_projects/sat6_zed_vitis_ide/workspace/platform/export/platform/hw/sat6_top.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
#16:49:47 INFO  : configparams force-mem-access 1
#16:49:47 INFO  : targets -set -nocase -filter {name =~"APU*"}
#16:49:47 INFO  : source /media/fabiob/portdev/nn-apsoc/development/engines/xilinx_finn/sat_6/integration_projects/sat6_zed_vitis_ide/workspace/memory_tests/_ide/psinit/ps7_init.tcl
#16:49:47 INFO  : ps7_init
#16:49:47 INFO  : targets -set -nocase -filter {name =~ "*A9*#0"}
#16:49:47 INFO  : rst -processor
#16:49:47 INFO  : dow /media/fabiob/portdev/nn-apsoc/development/engines/xilinx_finn/sat_6/integration_projects/sat6_zed_vitis_ide/workspace/memory_tests/build/memory_tests.elf
#16:49:47 INFO  : con
#16:49:47 INFO  : configparams force-mem-access 0
#16:49:48 INFO  : Testing the connection for 127.0.0.1