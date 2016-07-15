puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Variables common to all reference methodology scripts
# Script: common_setup.tcl
# Version: J-2014.09 (October 6, 2014)
# Copyright (C) 2007-2014 Synopsys, Inc. All rights reserved.
##########################################################################################

set DESIGN_NAME                   "behavioral_AND8"  ;#  The name of the top-level design
set DESIGN_REF_DATA_PATH		  "/home/tianzhao/plasticine_power_area_estimate/aluPowerArea"
set TSMC						  "/cad/synopsys_EDK2/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn45gsbwp_110a/"  ;
									   #  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path  
                                       #  to the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical 
                                       #  reference methodology flow.
set SYN							  "/cad/synopsys/dc_shell/latest/libraries/syn/"
set TSMC_TF						  "/cad/synopsys_EDK2/TSMCHOME/digital/Back_End/milkyway/tcbn45gsbwp_110a/techfiles/HVH_0d5_0/tsmcn45_10lm7X2ZRDL.tf"
set TSMC_REF_LIB				  "/cad/synopsys_EDK2/TSMCHOME/digital/Back_End/milkyway/tcbn45gsbwp_110a/frame_only_HVH_0d5_0/tcbn45gsbwp"
set TSMC_TLU_PLUS_PATH			  "/cad/synopsys_EDK2/TSMCHOME/digital/Back_End/milkyway/tcbn45gsbwp_110a/techfiles/tluplus/"
##########################################################################################
# Hierarchical Flow Design Variables
##########################################################################################

set HIERARCHICAL_DESIGNS           "" ;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS             "" ;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH        "./ $DESIGN_REF_DATA_PATH/src $SYN $TSMC"  ;#  Additional search path to be added to the default search path

set TARGET_LIBRARY_FILES          "$TSMC"  ;#  Target technology logical libraries
set ADDITIONAL_LINK_LIB_FILES     ""  ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set MIN_LIBRARY_FILES             ""  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set MW_REFERENCE_LIB_DIRS         "$TSMC_REF_LIB"  ;#  Milkyway reference libraries 

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set TECH_FILE                     "$TSMC_TF"  ;#  Milkyway technology file
set MAP_FILE                      ""  ;#  Mapping file for TLUplus
set TLUPLUS_MAX_FILE              "$TSMC_TLU_PLUS_PATH/cln45gs_1p06m+alrdl_rcbest_top1.tluplus"  ;#  Max TLUplus file
set TLUPLUS_MIN_FILE              "$TSMC_TLU_PLUS_PATH/cln45gs_1p06m+alrdl_rcworst_top1.tluplus"  ;#  Min TLUplus file

set MIN_ROUTING_LAYER            "1"   ;# Min routing layer
set MAX_ROUTING_LAYER            "10"   ;# Max routing layer

set LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use

##########################################################################################
# Multivoltage Common Variables
#
# Define the following multivoltage common variables for the reference methodology scripts 
# for multivoltage flows. 
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

set PD1                          ""           ;# Name of power domain/voltage area  1
set VA1_COORDINATES              {}           ;# Coordinates for voltage area 1
set MW_POWER_NET1                "VDD1"       ;# Power net for voltage area 1

set PD2                          ""           ;# Name of power domain/voltage area  2
set VA2_COORDINATES              {}           ;# Coordinates for voltage area 2
set MW_POWER_NET2                "VDD2"       ;# Power net for voltage area 2

set PD3                          ""           ;# Name of power domain/voltage area  3
set VA3_COORDINATES              {}           ;# Coordinates for voltage area 3
set MW_POWER_NET3                "VDD3"       ;# Power net for voltage area 3

set PD4                          ""           ;# Name of power domain/voltage area  4
set VA4_COORDINATES              {}           ;# Coordinates for voltage area 4
set MW_POWER_NET4                "VDD4"       ;# Power net for voltage area 4

puts "RM-Info: Completed script [info script]\n"

