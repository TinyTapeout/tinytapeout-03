# User config
set script_dir [file dirname [file normalize [info script]]]

# name of your project, should also match the name of the top module
set ::env(DESIGN_NAME) scan_controller

# save some time
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_KLAYOUT_DRC) 0

# caravel defines for number of IO, needed for internal drives of oen_b
set ::env(VERILOG_FILES) "\
    $script_dir/../../../../caravel/verilog/rtl/defines.v \
    $script_dir/../../../../verilog/rtl/scan_controller/scan_controller.v" 

# target density, change this if you can't get your design to fit
#set ::env(PL_TARGET_DENSITY) 0.4
set ::env(FP_CORE_UTIL) 45
#set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]

# This is going to drive long wires to the IO
# prepare the resizer to drive lots of capacitance !
set ::env(SYNTH_CAP_LOAD) 350

# set absolute size of the die
set ::env(DIE_AREA) "0 0 230 100"
set ::env(FP_SIZING) absolute

set ::env(SYNTH_PARAMETERS) "NUM_DESIGNS=250"

# synthesis step already adds buffer so you end up with a _2 buffer added by synth rather than the _1
# clock buffer added by resizer when it thinks outputs[0] is a clock.
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

# clock period is ns - 277MHz
set ::env(CLOCK_PERIOD) "3.6"
set ::env(CLOCK_PORT) "clk"

set ::env(BASE_SDC_FILE) $::env(DESIGN_DIR)/base.sdc

set ::env(SYNTH_CLOCK_UNCERTAINTY) 0.20
set ::env(SYNTH_CLOCK_TRANSITION)   0.15

# macro needs to work inside Caravel, so can't be core and can't use metal 5
set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {met4}

# define power straps so the macro works inside Caravel's PDN
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

# make pins wider to solve routing issues
set ::env(FP_IO_VTHICKNESS_MULT) 4
set ::env(FP_IO_HTHICKNESS_MULT) 4
