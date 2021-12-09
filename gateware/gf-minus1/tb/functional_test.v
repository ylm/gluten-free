// Copyright

module tb_top();

reg clk;
reg reset;
wire [11:0] dac_out;
reg rxd; //TBD to be used once we have a comm interface
reg txd; //TBD to be used once we have a comm interface

reg tested_value [0:2047]; //Tested values checklist
integer clk_cycle = 0; // Clock cycle counter
integer idx = 0; // Iterator for checklist

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,tb_top);
end

top u_top (
	.clk(clk),
	.reset(reset),
	.rxd(rxd),
	.txd(txd),
	.dac_out(dac_out)
);

// Clock generator
always begin
	#5 clk = 1;
	#5 clk = 0;
end

// Each rising edge, marks the output value as done.
always @(posedge clk) begin
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
