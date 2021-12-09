/*

Copyright (c) 2021 gatin00b

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

	input wire clk48m,
	inout wire mii_gmdio,
	inout wire mii_gmdc,

	/*
	* Sigma-Delta Interfaces
	*/
	output wire pdm0_l,
	output wire pdm0_r,
	output wire pdm1_l,
	output wire pdm1_r,

    /*
     * GPIO
     */
    output wire [7:0] pmod,
    /*
     * Ethernet: 1000BASE-T MII
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

assign mii_gmdio = 1'b0;
assign mii_gmdc = 1'b0;

fpga_core
core_inst (
	.clk48m(clk48m),

	/*
	 * Sigma-Delta Interfaces
	 */
	.pdm0_l(pdm0_l),
	.pdm0_r(pdm0_r),
	.pdm1_l(pdm1_l),
	.pdm1_r(pdm1_r),
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
