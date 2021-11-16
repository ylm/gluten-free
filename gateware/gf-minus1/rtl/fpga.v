/*

Copyright (c) 2014-2018 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

/*
 * FPGA top-level module
 */
module fpga (
    /*
     * GPIO
     */
    output wire [7:0] pmod,
    /*
     * Ethernet: 1000BASE-T RGMII
     */
    input  wire       mii_grxck,
    input  wire [3:0] mii_grx,
    input  wire       mii_grdv,
    input  wire       mii_grxer,
    input  wire       mii_gcrs,
    output wire       mii_gtxck,
    output wire [3:0] mii_gtx,
    output wire       mii_gten,
    output wire       mii_gtxer,
    output wire       mii_gcol
);

wire       ledu;
wire       ledl;
wire       ledd;
wire       ledr;
wire       ledc;

// GPIO
wire btnu_int;
wire btnl_int;
wire btnd_int;
wire btnr_int;
wire btnc_int;
wire [7:0] sw_int;

wire ledu_int;
wire ledl_int;
wire ledd_int;
wire ledr_int;
wire ledc_int;
wire [7:0] led_int;

wire uart_rxd_int;
wire uart_txd_int;

debounce_switch #(
    .WIDTH(13),
    .N(4),
    .RATE(125000)
)
debounce_switch_inst (
    .clk(clk_125mhz_int),
    .rst(rst_125mhz_int),
    .in({1'b0,
        1'b0,
        1'b0,
        1'b0,
        1'b0,
        8'b0}),
    .out({btnu_int,
        btnl_int,
        btnd_int,
        btnr_int,
        btnc_int,
        sw_int})
);

assign ledu = ledu_int;
assign ledl = ledl_int;
assign ledd = ledd_int;
assign ledr = ledr_int;
assign ledc = ledc_int;
assign led = led_int;

assign uart_rxd = 1'b0;

fpga_core
core_inst (
    /*
     * GPIO
     */
    .pmod(pmod),
    /*
     * Ethernet: 1000BASE-T RGMII
     */
    .mii_grxck(mii_grxck),
    .mii_grx(mii_grx),
    .mii_grdv(mii_grdv),
    .mii_grxer(mii_grxer),
    .mii_gcrs(mii_gcrs),
    .mii_gtxck(mii_gtxck),
    .mii_gtx(mii_gtx),
    .mii_gten(mii_gten),
    .mii_gtxer(mii_gtxer),
    .mii_gcol(mii_gcol),
    /*
     * UART: 115200 bps, 8N1
     */
    .uart_rxd(uart_rxd_int),
    .uart_txd(uart_txd_int),
    .uart_rts(1'b1),
    .uart_cts()
);

endmodule
