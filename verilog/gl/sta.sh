
#!/bin/bash
#
# set up the environment for non-docker sta run similar to openlane runs
# usage ./sta.sh

# set up the environment
export DESIGN_NAME=user_project_wrapper
export openlane=~/work/asic-workshop/shuttle9/openlane
#openroad/OpenLane
export DESIGN_DIR=designs/$DESIGN_NAME

#bits from openlane we are not actually using here
#export DESIGN_CONFIG=$DESIGN_DIR/config.json
#export RUN_STANDALONE=1
#export CURRENT_ODB="0"
#export CURRENT_INDEX=1
#variables used in top level constraints
#SYNTH_MAX_FANOUT
#SYNTH_CLK_DRIVING_CELL
#SYNTH_CLK_DRIVING_CELL_PIN
#SYNTH_DRIVING_CELL
#SYNTH_DRIVING_CELL_PIN
#SYNTH_CAP_LOAD
#SYNTH_CLOCK_UNCERTAINTY
#SYNTH_CLOCK_TRANSITION
#SYNTH_TIMING_DERATE

export SCRIPTS_DIR=$openlane/scripts
#typ
#export LIB_SYNTH_COMPLETE=$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
#slow
export LIB_SYNTH_COMPLETE=$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v40.lib
#fast
#export LIB_SYNTH_COMPLETE=$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib

export STA_WRITE_LIB=0
#may want to change this?!
export STA_PRE_CTS=0

export CURRENT_NETLIST=/home/matt/work/asic-workshop/shuttle9/tinytapeout-03/verilog/gl/merged_user_project_wrapper.v

docker run --rm -ti efabless/openlane:2022.07.02_01.38.08-amd64 sta /home/matt/work/asic-workshop/shuttle9/tinytapeout-03/verilog/gl/all_sta.tcl
