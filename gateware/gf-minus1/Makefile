# Targets
TARGETS:=

# Files for simulation
SIM_FILES = rtl/hx8k_poc.v
SIM_FILES += tb/hx8k_pll_sim.v
SIM_FILES += rtl/i2s_receiver.v
SIM_FILES += rtl/cdc_handshake.v
SIM_FILES += rtl/axis_dac.v
SIM_FILES += rtl/sddac.v
SIM_FILES += rtl/interpolator_1000x.v
SIM_FILES += rtl/interpolator_10x.v
SIM_FILES += rtl/atom_interpolator_10x.v
SIM_FILES += rtl/decade_clock_divider.v
SIM_FILES += rtl/clock_divider.v
SIM_FILES += rtl/debounce_switch.v
SIM_FILES += rtl/fpga_core.v
SIM_FILES += rtl/so_pdm.v
SIM_FILES += rtl/pdm.v
SIM_FILES += rtl/sync_signal.v
SIM_FILES += ip/eth/rtl/iddr.v
SIM_FILES += ip/eth/rtl/oddr.v
SIM_FILES += ip/eth/rtl/ssio_sdr_in.v
SIM_FILES += ip/eth/rtl/ssio_sdr_out.v
SIM_FILES += ip/eth/rtl/ssio_ddr_in.v
SIM_FILES += ip/eth/rtl/ssio_ddr_out.v
SIM_FILES += ip/eth/rtl/gmii_phy_if.v
SIM_FILES += ip/eth/rtl/eth_mac_1g_gmii_fifo.v
SIM_FILES += ip/eth/rtl/eth_mac_1g_gmii.v
SIM_FILES += ip/eth/rtl/eth_mac_1g.v
SIM_FILES += ip/eth/rtl/axis_gmii_rx.v
SIM_FILES += ip/eth/rtl/axis_gmii_tx.v
SIM_FILES += ip/eth/rtl/lfsr.v
SIM_FILES += ip/eth/rtl/eth_axis_rx.v
SIM_FILES += ip/eth/rtl/eth_axis_tx.v
SIM_FILES += ip/eth/rtl/udp_complete.v
SIM_FILES += ip/eth/rtl/udp_checksum_gen.v
SIM_FILES += ip/eth/rtl/udp.v
SIM_FILES += ip/eth/rtl/udp_ip_rx.v
SIM_FILES += ip/eth/rtl/udp_ip_tx.v
SIM_FILES += ip/eth/rtl/ip_complete.v
SIM_FILES += ip/eth/rtl/ip.v
SIM_FILES += ip/eth/rtl/ip_eth_rx.v
SIM_FILES += ip/eth/rtl/ip_eth_tx.v
SIM_FILES += ip/eth/rtl/ip_arb_mux.v
SIM_FILES += ip/eth/rtl/arp.v
SIM_FILES += ip/eth/rtl/arp_cache.v
SIM_FILES += ip/eth/rtl/arp_eth_rx.v
SIM_FILES += ip/eth/rtl/arp_eth_tx.v
SIM_FILES += ip/eth/rtl/eth_arb_mux.v
SIM_FILES += ip/eth/lib/axis/rtl/arbiter.v
SIM_FILES += ip/eth/lib/axis/rtl/priority_encoder.v
SIM_FILES += ip/eth/lib/axis/rtl/axis_fifo.v
SIM_FILES += ip/eth/lib/axis/rtl/axis_async_fifo.v
SIM_FILES += ip/eth/lib/axis/rtl/axis_async_fifo_adapter.v
SIM_FILES += ip/eth/lib/axis/rtl/sync_reset.v
SIM_FILES += ip/sd_dac/second_order_dac.v

test: $(SIM_FILES) tb/functional_test.v
	iverilog $^

# Subdirectories
SUBDIRS = fpga_hx8k
SUBDIRS_CLEAN = $(patsubst %,%.clean,$(SUBDIRS))

# Rules
.PHONY: all
all: $(SUBDIRS) $(TARGETS)

.PHONY: $(SUBDIRS)
$(SUBDIRS):
	cd $@ && $(MAKE)

.PHONY: $(SUBDIRS_CLEAN)
$(SUBDIRS_CLEAN):
	cd $(@:.clean=) && $(MAKE) clean

.PHONY: clean
clean: $(SUBDIRS_CLEAN)
	-rm -rf $(TARGETS)

program:
	#djtgcfg prog -d Atlys --index 0 --file fpga/fpga.bit
