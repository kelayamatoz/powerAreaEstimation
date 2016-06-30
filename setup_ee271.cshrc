
################################################################################
## Setup file for the ee271 class of Fall 2012
## Created by Ofer Shacham, shacham@alumni.stanford.edu
################################################################################

# Load all modules related to ee271
#-------------------------------------------------
# Modules list:
# 	VCS: 2009.12
# 	DC: 2010.03
# 	Primetime: 2009.12.-SP2
# 	HSPICE: 2010.03
# 	IC compiler: 2010.03
# 
# optional:
# 	liberty-ncx - 2009.12-SP2
# 	hercules: 2008.09-SP1
# 
# Working with the module loader tool:
# 	Initialize:
# 		setenv MODULESHOME /usr/class/ee/modules/tcl
# 		source $MODULESHOME/init/csh.in
# 
# 	Help:
# 		module help
# 
# 	List of available modules:
# 		module avail
# 
# 	Load: 
# 		module load <name of tool>
# 
# 	Unload
# 		module unload <name of tool>
#
# * NOTE: the following lines would do all that for you.

echo "#################################################################"
echo "##                      Welcome to EE271                       ##"
echo "#################################################################"
echo " "
echo "Loading environment variables..."


mkdir -p ~/.modules   # this is just to fix a warning

setenv MODULESHOME /usr/class/ee/modules/tcl
source $MODULESHOME/init/csh.in 
module load base
module load genesis2
module load vcs-mx
module load dc_shell
# Loading Tool Env.
module load synopsys_edk #
module load cdesigner # Custom Designer
#module load cni # Pycell for layout Pcell ##### FIX ME! I crashes gcc
module load hercules # Hercules for DRC/LVS/LPE
module load starrc # Star-RCX for LPE
module load cx # Custom Explorer Waveform Viewer
module load synopsys_pdk # load env for synopsys 90nm PDK

### Queue If Licenses Are Unavailable
setenv SNPSLMD_QUEUE true
setenv SNPS_MAX_WAITTIME 7200
setenv SNPS_MAX_QUEUETIME 7200

### env for ee271 project
setenv EE271_PROJ /usr/class/ee271/project/
setenv EE271_VECT ${EE271_PROJ}/vect/

### some helpful alias to make your life better
alias dve 'dve -full64'

if ( -f /usr/bin/gcc-4.4 ) then
setenv J_CC gcc-4.4
else
setenv J_CC gcc
endif

if ( -f /hd/cad/modules/tcl/init/csh ) then
source /hd/cad/modules/tcl/init/csh
endif

if ( -f /usr/class/ee/modules/tcl/init/tcsh ) then
source /usr/class/ee/modules/tcl/init/tcsh
else
if ( -f /usr/class/ee/modules/init_modules.csh ) then
source /usr/class/ee/modules/init_modules.csh
endif
endif

echo "EE271 environment setup finished."

