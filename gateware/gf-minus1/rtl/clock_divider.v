// Copyright
// clock_divider.v Contains a simple clock divider
// configurable through parameters.

module clock_divider #(
parameter DIVIDER_LOG2 = 4 //This is the bitwidth of our divider
)(
input wire clk,
input wire reset,
output wire enable_pulse
);

wire [DIVIDER_LOG2-1:0] max_value = {DIVIDER_LOG2{1'b1}};
reg [DIVIDER_LOG2-1:0] clock_divider;

//clk   _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
//dplse _____________________________/-\_____________________________/-\
//rdadr x0                             x1                              x 2

assign enable_pulse = (clock_divider == max_value) ? 1'b1 : 1'b0;

always @(posedge clk) begin
	clock_divider <= clock_divider + 1'b1;
	if (reset) begin
		clock_divider <= 4'b0;
	end
end

endmodule
