#############################################################################
# Author: @gatin00b
# Date: 04/11/2021
# License: GPL
# Desc: This is a Makefile intended to take a verilog rtl design
# through the Yosys/nextpnr/icestorm toolchain to generate
# configuration files for ice40up5k FPGAs.
#
##############################################################################
#
# Parameter:
# SYN_FILES - Space seperated list of files to be synthesized
# PART - FPGA part (see Lattice documentation)
# PROM - PROM part
# NGC_PATHS - Space seperated list of any dirs with pre-compiled ngc files.
# UCF_FILES - Space seperated list of user constraint files. Defaults to xilinx/$(FPGA_TOP).ucf
#
#
# Example Calling Makefile:
#
# SYN_FILES = fpga.v fifo.v clks.v
# PART = up5k
# FPGA_TOP = fpga
# PCF_FILES = pcf/gf-minus1.pcf
# CLK_FILES = pcf/timing.py
# FPGA_ARCH = up5k
# SPI_PROM_SIZE = (in bytes)
# include up5k.mk
#############################################################################
#
# Command Line Example:
# make -f up5k.mk PART=ice40up5k-sg48tr SYN_FILES="fpga.v test.v" FPGA_TOP=fpga
#
##############################################################################
#
# Required Setup:
#
# %.pcf - user constraint file. Needed by nextpnr
#

PROJ = fpga
DEVICE = up5k

NEXTPNR = nextpnr-ice40
NEXTPNR_ARGS = 
ICEPACK = icepack
ICETIME = icetime
ICEPROG = iceprog

.PHONY: clean bit prom fpga spi

fpga: $(FPGA_TOP).bin

fpgasim: $(FPGA_TOP)_sim.v



# Mark the intermediate files as PRECIOUS to prevent make from
# deleting them (see make manual section 10.4).
.PRECIOUS: %.json %.config %.bin

# include the local Makefile for project for any project specific targets
CONFIG ?= config.mk
-include ../$(CONFIG)

SYN_FILES_REL = $(patsubst %, ../%, $(SYN_FILES))
INC_FILES_REL = $(patsubst %, ../%, $(INC_FILES))
INC_PATHS_REL = $(patsubst %, ../%, $(INC_PATHS))

ifdef PCF_FILES
  PCF_FILES_REL = $(patsubst %, ../%, $(PCF_FILES))
else
  PCF_FILES_REL = pcf/$(FPGA_TOP).pcf
endif

ifdef CLK_FILES
  CLK_FILES_REL = $(patsubst %, ../%, $(CLK_FILES))
else
  CLK_FILES_REL = $(FPGA_TOP).py
endif



%.json: $(SYN_FILES_REL) $(INC_FILES_REL)
	rm -rf defines.v
	touch defines.v
	for x in $(DEFS); do echo '`define' $$x >> defines.v; done
	yosys -p "scratchpad -copy abc9.script.flow3 abc9.script; synth_ice40 -device u -dsp -abc9 -dff -json $@ -top $(FPGA_TOP)" $(SYN_FILES_REL) defines.v


%.asc: %.json $(PCF_FILES_REL) $(CLK_FILES_REL)
	$(NEXTPNR) $(NEXTPNR_ARGS) --$(DEVICE) --asc $@ --pcf $(PCF_FILES_REL) --json $(PROJ).json --package sg48 --pre-pack $(CLK_FILES_REL)

%.bin: %.asc
	$(ICEPACK) $< $@

%.rpt: %.asc
	$(ICETIME) -d $(DEVICE) -mtr $@ $<

prog: $(PROJ).bin
	$(ICEPROG) -S $<

sudo-prog: $(PROJ).bin
	@echo 'Executing prog as root!!!'
	sudo $(ICEPROG) -S $<

clean:
	rm -f $(PROJ).json $(PROJ).asc $(PROJ).rpt $(PROJ).bin

.SECONDARY:
.PHONY: all prog clean
