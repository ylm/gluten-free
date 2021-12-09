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
reg out_value;

assign dac_out = accumulator[8];

always @(posedge clk) begin
	accumulator <= {1'b0, accumulator[INPUT_WIDTH-1:0]} + sample[INPUT_WIDTH-1:0];
	if (~(&sample[INPUT_WIDTH-1:INPUT_WIDTH-1])) begin // Make sure not to overflow
		out_value <= sample[INPUT_WIDTH-1:INPUT_WIDTH-1] + accumulator[INPUT_WIDTH];
	end
	if (reset) begin
		accumulator <= {1'b1,{INPUT_WIDTH-1{1'b0}}};
		out_value <= 1'b0;
	end
end

endmodule

