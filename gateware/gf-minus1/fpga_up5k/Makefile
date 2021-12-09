
# FPGA settings
FPGA_PART = ice40up5k-sg48tr
FPGA_TOP = fpga
FPGA_ARCH = up5k

# Files for synthesis
SYN_FILES = rtl/fpga.v
SYN_FILES += rtl/axis_dac.v
SYN_FILES += rtl/clock_divider.v
SYN_FILES += rtl/debounce_switch.v
SYN_FILES += rtl/fpga_core.v
SYN_FILES += rtl/pll.v
SYN_FILES += rtl/so_pdm.v
SYN_FILES += rtl/pdm.v
SYN_FILES += rtl/sync_signal.v
SYN_FILES += ip/eth/rtl/iddr.v
SYN_FILES += ip/eth/rtl/oddr.v
SYN_FILES += ip/eth/rtl/ssio_sdr_in.v
SYN_FILES += ip/eth/rtl/ssio_sdr_out.v
SYN_FILES += ip/eth/rtl/ssio_ddr_in.v
SYN_FILES += ip/eth/rtl/ssio_ddr_out.v
SYN_FILES += ip/eth/rtl/gmii_phy_if.v
SYN_FILES += ip/eth/rtl/eth_mac_1g_gmii_fifo.v
SYN_FILES += ip/eth/rtl/eth_mac_1g_gmii.v
SYN_FILES += ip/eth/rtl/eth_mac_1g.v
SYN_FILES += ip/eth/rtl/axis_gmii_rx.v
SYN_FILES += ip/eth/rtl/axis_gmii_tx.v
SYN_FILES += ip/eth/rtl/lfsr.v
SYN_FILES += ip/eth/rtl/eth_axis_rx.v
SYN_FILES += ip/eth/rtl/eth_axis_tx.v
SYN_FILES += ip/eth/rtl/udp_complete.v
SYN_FILES += ip/eth/rtl/udp_checksum_gen.v
SYN_FILES += ip/eth/rtl/udp.v
SYN_FILES += ip/eth/rtl/udp_ip_rx.v
SYN_FILES += ip/eth/rtl/udp_ip_tx.v
SYN_FILES += ip/eth/rtl/ip_complete.v
SYN_FILES += ip/eth/rtl/ip.v
SYN_FILES += ip/eth/rtl/ip_eth_rx.v
SYN_FILES += ip/eth/rtl/ip_eth_tx.v
SYN_FILES += ip/eth/rtl/ip_arb_mux.v
SYN_FILES += ip/eth/rtl/arp.v
SYN_FILES += ip/eth/rtl/arp_cache.v
SYN_FILES += ip/eth/rtl/arp_eth_rx.v
SYN_FILES += ip/eth/rtl/arp_eth_tx.v
SYN_FILES += ip/eth/rtl/eth_arb_mux.v
SYN_FILES += ip/eth/lib/axis/rtl/arbiter.v
SYN_FILES += ip/eth/lib/axis/rtl/priority_encoder.v
SYN_FILES += ip/eth/lib/axis/rtl/axis_fifo.v
SYN_FILES += ip/eth/lib/axis/rtl/axis_async_fifo.v
SYN_FILES += ip/eth/lib/axis/rtl/axis_async_fifo_adapter.v
SYN_FILES += ip/eth/lib/axis/rtl/sync_reset.v
SYN_FILES += ip/sd_dac/second_order_dac.v

# UCF files
PCF_FILES = pcf/gf-minus1.pcf
CLK_FILES = pcf/timing.py

# Bitgen options
BITGEN_OPTIONS = -g StartupClk:Cclk -g ConfigRate:26

include ../common/up5k.mk

test: $(SYN_FILES) tb/so_pdm_tb.v
	iverilog $<

program: $(FPGA_TOP).bin
	echo "setmode -bscan" > program.cmd
	echo "setcable -p auto" >> program.cmd
	echo "identify" >> program.cmd
	echo "assignfile -p 2 -file $(FPGA_TOP).bit" >> program.cmd
	echo "program -p 2" >> program.cmd
	echo "quit" >> program.cmd
	impact -batch program.cmd

