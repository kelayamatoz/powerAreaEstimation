################################################################################
#	Fall 2012, EE271: Introduction to VLSI Technology
# Example Makefile for a verilog design
#
# Created by Ofer Shacham (shacham@stanford.edu)
################################################################################


# you can add your own additional definition in a file called Makefile.local
# If the file is found it will be included here. The '-' sign means that the
# file is not mandatory.
-include Makefile.local


################################################################################
################ Makefile Definitions
################################################################################

# The following definitions hold lists of files to compile/process. It is 
# typically useful to seperate them by functionality of the file (i.e., design,
# verification, common library, etc.)
# use "<file1> <file2> ..." for typical verilog files that you want compiled.
# use -f <filename> if you have a file that contain a list of verilog files
# use -y <dirname> to specify a Verilog library directory. 
#	VCS looks in the source files in this directory for definitions of the
#	module instances that VCS found the source code but did not find the 
#	corresponding module definitions in your source code. 
#	VCS looks in this directory for a file WITH THE SAME NAME AS THE MODULE.
# use -v <filename> to specify a Verilog library file. VCS looks in this file 
#	for definitions of the module instances that VCS found the source code 
#	but for which it did not find the corresponding module definitions in 
#	your source code.

# VERILOG_PACKS lists the system verilog package files for the design
VERILOG_PACKS :=	


# VERILOG_ENV verilog files that are used as part of the verification environment
# and are not part of the design itself. These files should not (and most likely,
# can not be synthesized).
VERILOG_ENV :=		verif/top.v					

# VERILOG_PRIMITIVES 
VERILOG_PRIMITIVES :=	 src/ee271_primitives.v


# VERILOG_TOP is the name of the MODULE which is the top of the hierarchy.
# It is atypically called 'top' and the top level file is typically 
# called 'top.v'.
VERILOG_TOP := 		top




VERILOG_DESIGN :=	src/AND8.v			\
			src/naive_AND8.v		\
			src/naive_AND8.v


VERILOG_FILES :=  	$(VERILOG_PACKS)					\
			$(VERILOG_ENV)						\
			$(VERILOG_PRIMITIVES)					\
			$(VERILOG_DESIGN)					


COMPILER := vcs


# VCS_FLAGS 
# ----------
# VCS_FLAGS are the COMPILE flags (passed to VCS during compilation).
# "-sverilog" enables system verilog
# "+lint=PCWM" enables linting error messages
# "+libext+.v" specifies that library files (imported by the "-y" directive) ends with ".v"
# "-notice" used to get details when ports are coerced to inout
# "-full64" for 64 bit compilation and simulation
# "+v2k" for verilog 2001 constructs such as generate
# "-debug_pp" used for wave capture
VCS_FLAGS := 	-sverilog 			\
		+cli 				\
		+lint=PCWM			\
		+libext+.v			\
		-notice				\
		-full64				\
		+v2k				\
		-debug_pp			\
		-ld $(VCS_CC) 

# SIMV_FLAGS
# -----------
# SIMV_FLAGS are the runtime flags (passed to the executable that vcs created).
# "+vpdbufsize+100" limit the internal buffer to 100MB (forces flushing to disk)
# "+vpdports" Record information about ports (signal/in/out)
# "+vpdfileswitchsize+1000" limits the wave file to 1G (then switch to next file)
SIMV_FLAGS := 	$(SIMV_FLAGS) 				\
		-l simv.log				


################################################################################
################ Makefile Rules
################################################################################
#default rule: 
#all: simv testresults
all: simv 


# To add rtl compile rules:
# use "make COMP=+define+<compile_time_flag[=value]>" to add compile time flags
simv:	$(VERILOG_FILES)
	@echo ""
	@echo Making $@ because of $?
	@echo ==================================================
	$(COMPILER)  $(VCS_FLAGS) -top $(VERILOG_TOP) $(VERILOG_FILES) $(COMP)


# simulation rule:
# use "make run RUN=+<runtime_flag[=value]>" to add runtime flags
.PHONY: run run_wave
run_wave: simv 
	./simv +wave $(SIMV_FLAGS) $(RUN)

run: simv
	./simv $(SIMV_FLAGS) $(RUN)



# cleanup:
.PHONY: clean 
clean:
	\rm -rf simv*
	\rm -rf csrc
	\rm -rf *.daidir
	\rm -rf *.log
	\rm -rf vcs.key
	\rm -rf *.pvl
	\rm -rf *.syn
	\rm -rf *.mr
	\rm -rf *.pvk
	\rm -rf *~
	\rm -rf vcdplus.vpd
	\rm -f ucli.key


