`timescale 1ns/1ps
/**
 * PLL configuration
 *
 * This Verilog module was generated automatically
 * using the icepll tool from the IceStorm project.
 * Use at your own risk.
 *
 * Given input frequency:        12.000 MHz
 * Requested output frequency:   48.000 MHz
 * Achieved output frequency:    48.000 MHz
 */

module hx8k_pll(
	input wire clock_in,
	output reg clock_out,
	output reg locked
	);

always @(posedge clock_in) begin
	locked = 1'b1;
	clock_out = 1'b1;
	#20.833 clock_out = 1'b0;
	#20.833 clock_out = 1'b1;
	#20.833 clock_out = 1'b0;
	#20.833 clock_out = 1'b1;
	#20.833 clock_out = 1'b0;
	#20.833 clock_out = 1'b1;
	#20.833 clock_out = 1'b0;
	#20.833;
end

endmodule
