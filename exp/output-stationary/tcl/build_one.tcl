#===============================================================================
# build_one.tcl
#
# Builds one Vivado project from scratch and generates its bitstream.
#
# Everything that varies between builds arrives as an argument, so this file
# never needs editing:
#
#   vivado -mode batch -source build_one.tcl -tclargs \
#          <ip_repo_dir> <bd_tcl_file> <output_dir> <build_name> [jobs]
#
# The IP repository is what selects the array size: every synthesized URSA
# packages as the same VLNV (xilinx.com:hls:mxm_execute_ursa:1.0), so the only
# thing distinguishing a 2x2 from a 16x16 is which directory Vivado reads.
# That is also why each build gets its own project directory: reusing one
# would leave the previous IP cached.
#===============================================================================

if {$argc < 4} {
    puts "ERROR: usage: build_one.tcl <ip_repo> <bd_tcl> <out_dir> <name> \[jobs\]"
    exit 1
}

set ip_repo    [lindex $argv 0]
set bd_tcl     [lindex $argv 1]
set out_dir    [lindex $argv 2]
set build_name [lindex $argv 3]
set jobs       [expr {$argc > 4 ? [lindex $argv 4] : 4}]

set part       xc7z020clg484-1
set proj_dir   ${out_dir}/${build_name}.proj

puts "=============================================================="
puts " Build      : ${build_name}"
puts " IP repo    : ${ip_repo}"
puts " BD script  : ${bd_tcl}"
puts " Output     : ${out_dir}"
puts "=============================================================="

foreach f [list $ip_repo $bd_tcl] {
    if {![file exists $f]} {
        puts "ERROR: not found: $f"
        exit 1
    }
}

file mkdir $out_dir
file delete -force $proj_dir

create_project ${build_name} ${proj_dir} -part ${part}

# Point at this build's IP directory and rebuild the catalog, so the BD
# script picks up the right URSA when it instantiates the cell.
set_property ip_repo_paths [list ${ip_repo}] [current_project]
update_ip_catalog -rebuild

# The BD script defines create_root_design and calls it at the end.
source ${bd_tcl}

set bd_name [get_bd_designs]
puts "Block design created: ${bd_name}"

make_wrapper -files [get_files ${bd_name}.bd] -top -import

set wrapper ${bd_name}_wrapper
set_property top ${wrapper} [current_fileset]
update_compile_order -fileset sources_1

#-------------------------------------------------------------------------------
# Synthesis
#-------------------------------------------------------------------------------
launch_runs synth_1 -jobs ${jobs}
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    puts "ERROR: synthesis failed for ${build_name}"
    exit 2
}
puts "Synthesis done."

#-------------------------------------------------------------------------------
# Implementation and bitstream
#-------------------------------------------------------------------------------
launch_runs impl_1 -to_step write_bitstream -jobs ${jobs}
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    puts "ERROR: implementation failed for ${build_name}"
    exit 3
}
puts "Implementation done."

#-------------------------------------------------------------------------------
# Collect the results
#
# Reports are written next to the bitstream rather than left inside the
# project, so a later cleanup of the project directories does not throw away
# the numbers.
#-------------------------------------------------------------------------------
open_run impl_1

set bit [glob -nocomplain ${proj_dir}/${build_name}.runs/impl_1/*.bit]
if {[llength $bit] == 0} {
    puts "ERROR: no bitstream produced for ${build_name}"
    exit 4
}
file copy -force [lindex $bit 0] ${out_dir}/${build_name}.bit

# XSA for Vitis. Only one platform is needed across all builds, but exporting
# per build keeps each bitstream paired with its own hardware handoff.
write_hw_platform -fixed -include_bit -force ${out_dir}/${build_name}.xsa

report_utilization       -file ${out_dir}/${build_name}_utilization.rpt
report_timing_summary    -file ${out_dir}/${build_name}_timing.rpt

# One-line summary, easy to grep or paste into a spreadsheet.
set wns [get_property SLACK [get_timing_paths -delay_type min_max]]
set luts [get_property USED [get_cells -hier -filter {PRIMITIVE_GROUP == LUT}]]

set fh [open ${out_dir}/${build_name}_summary.txt w]
puts $fh "build      : ${build_name}"
puts $fh "ip_repo    : ${ip_repo}"
puts $fh "bd         : ${bd_name}"
puts $fh "wns_ns     : ${wns}"
close $fh

puts "=============================================================="
puts " ${build_name} OK. WNS = ${wns} ns"
puts "=============================================================="

close_project
exit 0