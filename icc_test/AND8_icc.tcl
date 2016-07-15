# Simple syhthesis script to use TSMC libraries
#
# Runs a top-down (entire chip in one compile) compile
# This is NOT suitable for big chips.

#
# set Libraries, work location, path - .synopsys_dc stuff really.
###################################################################
define_design_lib work -path ./work
# file mkdir reports
# file mkdir netlist

remove_design -all

#####################
# Path Variables
#####################
set SYN /cad/synopsys/dc_shell/latest/libraries/syn/
set TSMC_45 /cad/synopsys_EDK2/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn45gsbwp_110a/


#####################
# Set Design Library
#####################

#TSMC 45nm Library
set link_library { * tcbn45gsbwpml.db dw_foundation.sldb}
set target_library "tcbn45gsbwpml.db"

set synthetic_library [list  dw_foundation.sldb]
set dw_lib     $SYN
set sym_lib    $TSMC_45
set target_lib $TSMC_45


set search_path [list ./ ../src/ $dw_lib $target_lib $sym_lib]

#
set hdlin_auto_save_templates true
# read in verilog
read_verilog -rtl [list behavioral_AND8.v]


# set top level design
current_design behavioral_AND8

# link it to resolve references
link

# Build separate instance for multiply-instantiated sub-modules
uniquify

#
# Set technology constraints
###################################

#set_operating_conditions WCCOM
set_dont_use tcbn45gsbwpml/*D0BWP

