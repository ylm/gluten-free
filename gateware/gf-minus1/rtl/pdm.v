// Copyright goes here ;)
// pdm.v Pulse Density Modulator

module pdm #(
parameter INPUT_WIDTH = 8
)(
input wire clk,
input wire reset,
input wire [INPUT_WIDTH-1:0] sample,
output wire dac_out
);

reg [INPUT_WIDTH:0] accumulator;
reg [INPUT_WIDTH-1:0] u_sample = 0;

assign dac_out = accumulator[8]; // DAC outputs the result of the overflow

always @(posedge clk) begin
	u_sample <= sample + 8'h7F; // Converts signed domain data to unsigned domain
	accumulator <= {1'b0, accumulator[INPUT_WIDTH-1:0]} + u_sample[INPUT_WIDTH-1:0]; // Accumulates to overflow
	if (reset) begin
		accumulator <= {1'b1,{INPUT_WIDTH-1{1'b0}}};
	end
end

endmodule

