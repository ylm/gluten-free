`timescale 1ns/1ps
// Copyright

module tb_top();

reg SCK = 1'b0;
reg clk12m;
reg LRCLK = 1'b1;
reg SDATA = 1'b0;
reg reset;
wire [11:0] dac_out;
	
reg tested_value [0:2047]; //Tested values checklist
integer clk_cycle = 0; // Clock cycle counter
integer idx = 0; // Iterator for checklist

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,tb_top);
end

hx8k_poc u_hx8k_poc (
	.clk12m(clk12m),
	.SCK(SCK),
	.SDATA(SDATA),
	.LRCLK(LRCLK),
	.out_clk(clk48m),
	.pdm0_l(pdm0_l),
	.pdm0_r(pdm0_r)
);

// Clock generator
always begin
	#325 SCK = 1;
	#325 SCK = 0;
end

always begin
	#83.333 clk12m = 1;
	#83.333 clk12m = 0;
end

reg [7:0] left_test_data = 8'hED;
reg [7:0] right_test_data = 8'h99;

always begin
	for (idx= 7; idx>=0; idx=idx-1) begin
		@(negedge SCK);
		SDATA = right_test_data[idx];
		if (idx == 0) begin
			LRCLK = 1'b0;
		end
	end
	for (idx= 7; idx>=0; idx=idx-1) begin
		@(negedge SCK);
		SDATA = left_test_data[idx];
		if (idx == 0) begin
			LRCLK = 1'b1;
		end
	end
end

// Each rising edge, marks the output value as done.
always @(posedge SCK) begin
tested_value[dac_out] <= 1'b1;
clk_cycle = clk_cycle + 1;
if (clk_cycle == (2048*18)+5) begin // Wait 'til we've gone through a full wave cycle
	for (idx = 0; idx < 2048; idx = idx + 1) begin
		$display("%b",tested_value[idx]); // Print our checklist
	end
	$finish();
end
end

initial begin
reset = 1;
#15;
reset = 0;
end

endmodule
