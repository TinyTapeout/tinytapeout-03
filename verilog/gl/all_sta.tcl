
#script to do our STA of the design - including loading the spefs
puts ">>>STA start"

source $::env(SCRIPTS_DIR)/openroad/common/io.tcl
read_libs
#why is this in here?!
#read_lef $::env(MERGED_LEF)
puts ">>> about to read netlist"
read_netlist
puts ">>> read netlist"

if { $::env(STA_PRE_CTS) == 1 } {
    unset_propagated_clock [all_clocks]
} else {
    set_propagated_clock [all_clocks]
}

set_cmd_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm -distance um

#run script to load all the parasitics
puts ">>> about to run spef loading script /home/matt/work/asic-workshop/shuttle9/tinytapeout-03/spef/user_project_wrapper.tcl"
source /home/matt/work/asic-workshop/shuttle9/tinytapeout-03/spef/user_project_wrapper.tcl

#report how well we have annotated
report_parasitic_annotation

#apply the constraints
puts ">>> load constraints ./sta_jeremy/top.sdc"
source ./sta_jeremy/top.sdc

#check the clocks
report_clock_properties [all_clocks]

#do the analysis
puts "min_report"
puts "
==========================================================================="
puts "report_checks -path_delay min (Hold)"
puts "============================================================================"
report_checks -path_delay min -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 5
puts "min_report_end"

puts "max_report"
puts "
==========================================================================="
puts "report_checks -path_delay max (Setup)"
puts "============================================================================"
report_checks -path_delay max -fields {slew cap input nets fanout} -format full_clock_expanded -group_count 5
puts "max_report_end"


puts "check_report"
puts "
==========================================================================="
puts "report_checks -unconstrained"
puts "============================================================================"
report_checks -unconstrained -fields {slew cap input nets fanout} -format full_clock_expanded

puts "
==========================================================================="
puts "report_checks --slack_max -0.01"
puts "============================================================================"
report_checks -slack_max -0.01 -fields {slew cap input nets fanout} -format full_clock_expanded
puts "check_report_end"

puts "check_slew"
puts "
==========================================================================="
puts " report_check_types -max_slew -max_cap -max_fanout -violators"
puts "============================================================================"
report_check_types -max_slew -max_capacitance -max_fanout -violators

exit
