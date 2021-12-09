// Copyright goes here

module pdm_tb ();

reg clk = 0;
reg reset = 0;
reg [4:0] test_input;
wire [1:0] test_output;
pdm #(
.INPUT_WIDTH(5),
.OUTPUT_WIDTH(2)
) my_pdm (
.clk(clk),
.reset(reset),
.sample(test_input),
.dac_out(test_output)
);

// Clock generator
always begin
	#5 clk = 1;
	#5 clk = 0;
end

always @(posedge clk) begin
//$display("rising edge");
//$display("reset = %b", reset);
//$display("test_input = %b", test_input);
$display("test_output = %b", test_output);
end

initial begin
test_input = 5'd1;
reset = 1;
#15;
reset = 0;
wait (test_output == 2'b01) #1;
test_input = 5'd15;
wait (test_output == 2'b10) #1;
if (test_output[1:0] == 2'b10) begin
	$display("SUCCESS @%g", $time);
end else begin
	$display("failure");
end
$finish();
end
endmodule

