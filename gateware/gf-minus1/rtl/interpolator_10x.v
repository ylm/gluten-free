/*
 * Copyright goes here
 *
 * Computes the interpolated sample for a 21 taps 10x upsample
 *
 * clk_en and clk_en_10x are phase aligned
 * A cycle happens on a rising edge of clk when clk_en_10x is high.
 * coef0 and coef1 are the filter coefficients 
 * msb_stage is asserted (high) when the MSB is processed (8 cycles after clk_en)
 * end_stage is asserted (high) on the last "idle" processing cycle (9 cycles after
 * clk_en)
*/

module interpolator_10x (
	input wire clk,
	input wire reset,
	input wire clk_en,
	input wire clk_en_10x,
	
	input wire [7:0] sample_x0,
	input wire [7:0] sample_x1,

	output reg end_stage = 1'b0,

	output wire [7:0] sample_y0,
	output wire [7:0] sample_y1,
	output wire [7:0] sample_y2,
	output wire [7:0] sample_y3,
	output wire [7:0] sample_y4,
	output wire [7:0] sample_y5,
	output wire [7:0] sample_y6,
	output wire [7:0] sample_y7,
	output wire [7:0] sample_y8,
	output wire [7:0] sample_y9
);

reg msb_stage = 1'b0;

reg [2:0] cycle_count = 3'd0;

always @(posedge clk) begin
	if (clk_en_10x) begin
		msb_stage <= 1'b0;
		end_stage <= 1'b0;
		cycle_count <= cycle_count + 3'b1;
		if (cycle_count == 3'd6) begin
			msb_stage <= 1'b1;
		end
		if (cycle_count == 3'd7) begin
			end_stage <= 1'b1;
		end
	end
	if (clk_en) begin
		cycle_count <= 3'b0;
	end
end

// XXX: THIS STAGE IS USELESS... JUST USE THE INPUT SAMPLE!!!!
atom_interpolator_10x #(
	.coef0('h7f),
	.coef1('h00)
) interpolator_sample_y0 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y0)
);

atom_interpolator_10x #(
	.coef0('h7D),
	.coef1('h0E)
) interpolator_sample_y1 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y1)
);

atom_interpolator_10x #(
	.coef0('h77),
	.coef1('h1E)
) interpolator_sample_y2 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y2)
);

atom_interpolator_10x #(
	.coef0('h6D),
	.coef1('h2F)
) interpolator_sample_y3 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y3)
);

atom_interpolator_10x #(
	.coef0('h60),
	.coef1('h40)
) interpolator_sample_y4 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y4)
);

atom_interpolator_10x #(
	.coef0('h51),
	.coef1('h51)
) interpolator_sample_y5 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y5)
);

atom_interpolator_10x #(
	.coef0('h40),
	.coef1('h60)
) interpolator_sample_y6 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y6)
);

atom_interpolator_10x #(
	.coef0('h2F),
	.coef1('h6D)
) interpolator_sample_y7 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y7)
);

atom_interpolator_10x #(
	.coef0('h1E),
	.coef1('h77)
) interpolator_sample_y8 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y8)
);

atom_interpolator_10x #(
	.coef0('h0E),
	.coef1('h7D)
) interpolator_sample_y9 (
	.clk(clk),
	.reset(reset),
	.clk_en(clk_en),
	.clk_en_10x(clk_en_10x),
	.msb_stage(msb_stage),
	.end_stage(end_stage),

	.sample_x0(sample_x0),
	.sample_x1(sample_x1),

	.sample_y0(sample_y9)
);

endmodule

