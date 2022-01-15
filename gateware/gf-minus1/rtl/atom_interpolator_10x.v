/*
 * Copyright goes here
 *
 * Computes the interpolated sample for a 21 taps 10x upsample
 *
 * clk_en and clk_en_10x are phase aligned
 * coef0 and coef1 are the filter coefficients 
 * msb_stage is asserted when the MSB is processed (8 cycles after clk_en)
 * end_stage is asserted on the last "idle" processing cycle (9 cycles after
 * clk_en)
*/

module atom_interpolator_10x #(
	parameter integer coef0 = 0,
	parameter integer coef1 = 0
)(
	input wire clk,
	input wire reset,
	input wire clk_en,
	input wire clk_en_10x,
	input wire msb_stage,
	input wire end_stage,

	input wire [7:0] sample_x0,
	input wire [7:0] sample_x1,

	output reg [7:0] sample_y0 = 8'h00
);

reg [15:0] tmp_sample_y0 = 16'h00;
reg [7:0] tmp_sample_x0 = 8'h00;
reg [7:0] tmp_sample_x1 = 8'h00;

// Performs multiplication by bit rotation (aka Distributed Arithmetic)
always @(posedge clk) begin
	if (clk_en_10x) begin
		tmp_sample_x0 <= {1'b0, tmp_sample_x0[7:1]};
		tmp_sample_x1 <= {1'b0, tmp_sample_x1[7:1]};
		if (msb_stage) begin
			case({tmp_sample_x1[0], tmp_sample_x0[0]})
				2'b00: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]};
				2'b01: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} - (coef0*128);
				2'b10: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} - (coef1*128);
				2'b11: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} - (coef0 + coef1)*128;
			endcase
		end else begin
			case({tmp_sample_x1[0], tmp_sample_x0[0]})
				2'b00: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]};
				2'b01: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} + coef0*128;
				2'b10: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} + coef1*128;
				2'b11: tmp_sample_y0 <= {1'b0, tmp_sample_y0[15:1]} + (coef0 + coef1)*128;
			endcase
		end
	end
	if (clk_en) begin
		tmp_sample_x0 <= sample_x0;
		tmp_sample_x1 <= sample_x1;
		tmp_sample_y0 <= 16'h00; //clk_en acts as a reset for this signal only (desired behaviour)
	end
end

always @(posedge clk) begin
	if (end_stage) begin
		sample_y0 <= tmp_sample_y0[15:8];
	end
	if (reset) begin
		sample_y0 <= 16'h00;
	end
end

endmodule
