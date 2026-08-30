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
# Implementation
#
# Runs all the way through write_bitstream. The run has to complete that step
# even though the bitstream we keep is written by hand further down, because
# write_hw_platform reads the .bit out of the impl_1 run directory and fails if
# the step never ran.
#-------------------------------------------------------------------------------
launch_runs impl_1 -to_step write_bitstream -jobs ${jobs}
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    puts "ERROR: implementation failed for ${build_name}"
    exit 3
}
puts "Implementation done."

#-------------------------------------------------------------------------------
# Reports, hardware handoff and bitstream
#
# Reports are written next to the bitstream rather than left inside the
# project, so a later cleanup of the project directories does not throw away
# the numbers.
#-------------------------------------------------------------------------------
open_run impl_1

report_utilization               -file ${out_dir}/${build_name}_utilization.rpt
report_utilization -hierarchical -file ${out_dir}/${build_name}_utilization_hier.rpt
report_timing_summary            -file ${out_dir}/${build_name}_timing.rpt

# XSA for Vitis. Only one platform is needed across all builds, but exporting
# per build keeps each bitstream paired with its own hardware handoff. This
# consumes the bitstream produced by the run, so it has to happen before the
# manual write_bitstream below.
write_hw_platform -fixed -include_bit -force ${out_dir}/${build_name}.xsa

#-------------------------------------------------------------------------------
# Essential bits
#
# BITSTREAM.SEU.ESSENTIALBITS is a property of the implemented design, so it
# can only be set once impl_1 is open, which means after the run has already
# written its own bitstream. The design is therefore written a second time,
# straight into out_dir, and it is this second pass that emits the .ebc and
# .ebd files. They inherit the build name from the target path.
#
# Compression is disabled because the essential bit mask only maps frame by
# frame onto an uncompressed bitstream.
#-------------------------------------------------------------------------------
set_property BITSTREAM.SEU.ESSENTIALBITS yes   [current_design]
set_property BITSTREAM.GENERAL.COMPRESS  FALSE [current_design]

write_bitstream -force ${out_dir}/${build_name}.bit

foreach ext {bit ebc ebd} {
    if {![file exists ${out_dir}/${build_name}.${ext}]} {
        puts "WARNING: ${build_name}.${ext} was not produced"
    }
}

#-------------------------------------------------------------------------------
# One-line summary, easy to grep or paste into a spreadsheet.
#-------------------------------------------------------------------------------
# Setup and hold are reported separately. Mixing them in a single
# get_timing_paths call returns whichever happens to be worse, which is not
# what the timing tables in the text are meant to show.
set wns [get_property SLACK [get_timing_paths -delay_type max -max_paths 1 -nworst 1]]
set whs [get_property SLACK [get_timing_paths -delay_type min -max_paths 1 -nworst 1]]

# Post-implementation utilisation, taken from report_utilization itself.
#
# Counting cells with get_cells does not reproduce these numbers: the report
# adjusts the LUT count for LUT combining, where two logic functions share one
# LUT6 through its O5 and O6 outputs. The report is the figure that reflects
# real device occupancy, so it is the one carried into the results tables.
set util [report_utilization -return_string]

proc util_row {text name} {
    # Matches "| <name> | <used> | ... | <util%> |" in a report_utilization table.
    set pat "\\|\\s*${name}\\s*\\|\\s*(\[0-9.\]+)\\s*\\|\\s*\[0-9.\]+\\s*\\|\\s*\[0-9.\]+\\s*\\|\\s*\[0-9.\]+\\s*\\|\\s*(\[0-9.\]+)\\s*\\|"
    if {[regexp $pat $text -> used pct]} {
        return [list $used $pct]
    }
    return [list "" ""]
}

lassign [util_row $util "Slice LUTs"]      n_lut  p_lut
lassign [util_row $util "Slice Registers"] n_ff   p_ff
lassign [util_row $util "Block RAM Tile"]  n_bram p_bram
lassign [util_row $util "DSPs"]            n_dsp  p_dsp

foreach {label value} [list lut $n_lut ff $n_ff bram $n_bram dsp $n_dsp] {
    if {$value eq ""} {
        puts "WARNING: could not read ${label} from report_utilization"
    }
}

set fh [open ${out_dir}/${build_name}_summary.txt w]
puts $fh "build      : ${build_name}"
puts $fh "ip_repo    : ${ip_repo}"
puts $fh "bd         : ${bd_name}"
puts $fh "wns_ns     : ${wns}"
puts $fh "whs_ns     : ${whs}"
puts $fh "lut        : ${n_lut}"
puts $fh "lut_pct    : ${p_lut}"
puts $fh "ff         : ${n_ff}"
puts $fh "ff_pct     : ${p_ff}"
puts $fh "dsp        : ${n_dsp}"
puts $fh "dsp_pct    : ${p_dsp}"
puts $fh "bram       : ${n_bram}"
puts $fh "bram_pct   : ${p_bram}"
close $fh

puts "=============================================================="
puts " ${build_name} OK. WNS = ${wns} ns, WHS = ${whs} ns"
puts " LUT ${n_lut}  FF ${n_ff}  DSP ${n_dsp}  BRAM ${n_bram}"
puts "=============================================================="

close_project
exit 0