module so_pdm_tb ();

reg clk;
reg rst;
reg dac_out;

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,so_pdm_tb);
end

// Clock generator
always begin
	#10.416 clk = 1;
	#10.416 clk = 0;
end

initial begin
reset = 1;
#50;
reset = 0;
end

real x;

initial begin
din = $sin(2 * 3.1415926 * x);
end

so_pdm #(
	.INPUT_WIDTH(8)
) (
	.i_clk(clk),
	.i_rst(rst),
	.i_ce(1'b1),
	.i_func(8'b0),
	.o_DAC(dac_out)
);

endmodule
