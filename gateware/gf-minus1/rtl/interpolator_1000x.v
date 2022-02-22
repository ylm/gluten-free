module interpolator_1000x (
	input wire clk,
	input wire rst,

	input wire [7:0] signal_x0,
	input wire [7:0] signal_x1,

	output wire [7:0] signal_48M
);

wire pulse_48k;
wire pulse_480k;
wire pulse_4M8;

wire end_stage;
wire [7:0] sample_y0_480k;
wire [7:0] sample_y1_480k;
wire [7:0] sample_y2_480k;
wire [7:0] sample_y3_480k;
wire [7:0] sample_y4_480k;
wire [7:0] sample_y5_480k;
wire [7:0] sample_y6_480k;
wire [7:0] sample_y7_480k;
wire [7:0] sample_y8_480k;
wire [7:0] sample_y9_480k;

wire [7:0] sample_y0_4M8;
wire [7:0] sample_y1_4M8;
wire [7:0] sample_y2_4M8;
wire [7:0] sample_y3_4M8;
wire [7:0] sample_y4_4M8;
wire [7:0] sample_y5_4M8;
wire [7:0] sample_y6_4M8;
wire [7:0] sample_y7_4M8;
wire [7:0] sample_y8_4M8;
wire [7:0] sample_y9_4M8;

wire [7:0] sample_y0_48M;
wire [7:0] sample_y1_48M;
wire [7:0] sample_y2_48M;
wire [7:0] sample_y3_48M;
wire [7:0] sample_y4_48M;
wire [7:0] sample_y5_48M;
wire [7:0] sample_y6_48M;
wire [7:0] sample_y7_48M;
wire [7:0] sample_y8_48M;
wire [7:0] sample_y9_48M;

decade_clock_divider inst_decade_clock_divider (
	.clk(clk),
	.rst(rst),
	
	.pulse_48k(pulse_48k),
	.pulse_480k(pulse_480k),
	.pulse_4M8(pulse_4M8)
);

interpolator_10x interpolate_48k_to_480k (
	.clk(clk),
	.reset(rst),
	.clk_en(pulse_48k),
	.clk_en_10x(pulse_480k),
	
	.sample_x0(signal_x0),
	.sample_x1(signal_x1),

	.end_stage(end_stage),

	.sample_y0(sample_y0_480k),
	.sample_y1(sample_y1_480k),
	.sample_y2(sample_y2_480k),
	.sample_y3(sample_y3_480k),
	.sample_y4(sample_y4_480k),
	.sample_y5(sample_y5_480k),
	.sample_y6(sample_y6_480k),
	.sample_y7(sample_y7_480k),
	.sample_y8(sample_y8_480k),
	.sample_y9(sample_y9_480k)
);

reg [7:0] signal_480kr;
reg [7:0] signal_480kr2;
reg [7:0] interpolator_48k_sr [0:9];

always @(posedge clk) begin
	if (pulse_480k) begin
		signal_480kr2 <= signal_480kr;
		signal_480kr <= interpolator_48k_sr[2];

		interpolator_48k_sr[2] <= interpolator_48k_sr[3];
		interpolator_48k_sr[3] <= interpolator_48k_sr[4];
		interpolator_48k_sr[4] <= interpolator_48k_sr[5];
		interpolator_48k_sr[5] <= interpolator_48k_sr[6];
		interpolator_48k_sr[6] <= interpolator_48k_sr[7];
		interpolator_48k_sr[7] <= interpolator_48k_sr[8];
		interpolator_48k_sr[8] <= interpolator_48k_sr[9];
	end
	if (pulse_48k) begin
		signal_480kr2 <= sample_y0_480k;
		signal_480kr <= sample_y1_480k;
		interpolator_48k_sr[2] <= sample_y2_480k;
		interpolator_48k_sr[3] <= sample_y3_480k;
		interpolator_48k_sr[4] <= sample_y4_480k;
		interpolator_48k_sr[5] <= sample_y5_480k;
		interpolator_48k_sr[6] <= sample_y6_480k;
		interpolator_48k_sr[7] <= sample_y7_480k;
		interpolator_48k_sr[8] <= sample_y8_480k;
		interpolator_48k_sr[9] <= sample_y9_480k;
	end
	if (rst) begin
		signal_480kr <= 0;
		signal_480kr2 <= 0;
		interpolator_48k_sr[2] <= 0;
		interpolator_48k_sr[3] <= 0;
		interpolator_48k_sr[4] <= 0;
		interpolator_48k_sr[5] <= 0;
		interpolator_48k_sr[6] <= 0;
		interpolator_48k_sr[7] <= 0;
		interpolator_48k_sr[8] <= 0;
		interpolator_48k_sr[9] <= 0;
	end
end

interpolator_10x interpolate_480k_to_4M80 (
	.clk(clk),
	.reset(rst),
	.clk_en(pulse_480k),
	.clk_en_10x(pulse_4M8),
	
	.sample_x0(signal_480kr2),
	.sample_x1(signal_480kr),

	.end_stage(),

	.sample_y0(sample_y0_4M8),
	.sample_y1(sample_y1_4M8),
	.sample_y2(sample_y2_4M8),
	.sample_y3(sample_y3_4M8),
	.sample_y4(sample_y4_4M8),
	.sample_y5(sample_y5_4M8),
	.sample_y6(sample_y6_4M8),
	.sample_y7(sample_y7_4M8),
	.sample_y8(sample_y8_4M8),
	.sample_y9(sample_y9_4M8)
);

reg [7:0] signal_4M8r = 0;
reg [7:0] signal_4M8r2 = 0;
reg [7:0] interpolator_480k_sr [0:9];

always @(posedge clk) begin
	if (pulse_4M8) begin
		signal_4M8r <= interpolator_480k_sr[2];
		signal_4M8r2 <= signal_4M8r;

		interpolator_480k_sr[2] <= interpolator_480k_sr[3];
		interpolator_480k_sr[3] <= interpolator_480k_sr[4];
		interpolator_480k_sr[4] <= interpolator_480k_sr[5];
		interpolator_480k_sr[5] <= interpolator_480k_sr[6];
		interpolator_480k_sr[6] <= interpolator_480k_sr[7];
		interpolator_480k_sr[7] <= interpolator_480k_sr[8];
		interpolator_480k_sr[8] <= interpolator_480k_sr[9];
	end
	if (pulse_480k) begin
		signal_4M8r2 <= sample_y0_4M8;
		signal_4M8r <= sample_y1_4M8;
		interpolator_480k_sr[2] <= sample_y2_4M8;
		interpolator_480k_sr[3] <= sample_y3_4M8;
		interpolator_480k_sr[4] <= sample_y4_4M8;
		interpolator_480k_sr[5] <= sample_y5_4M8;
		interpolator_480k_sr[6] <= sample_y6_4M8;
		interpolator_480k_sr[7] <= sample_y7_4M8;
		interpolator_480k_sr[8] <= sample_y8_4M8;
		interpolator_480k_sr[9] <= sample_y9_4M8;
	end
	if (rst) begin
		signal_4M8r <= 0;
		signal_4M8r2 <= 0;
		interpolator_480k_sr[2] <= 0;
		interpolator_480k_sr[3] <= 0;
		interpolator_480k_sr[4] <= 0;
		interpolator_480k_sr[5] <= 0;
		interpolator_480k_sr[6] <= 0;
		interpolator_480k_sr[7] <= 0;
		interpolator_480k_sr[8] <= 0;
		interpolator_480k_sr[9] <= 0;
	end
end

interpolator_10x interpolate_4M8_to_48M (
	.clk(clk),
	.reset(rst),
	.clk_en(pulse_4M8),
	.clk_en_10x(1'b1),
	
	.sample_x0(signal_4M8r2),
	.sample_x1(signal_4M8r),

	.end_stage(),

	.sample_y0(sample_y0_48M),
	.sample_y1(sample_y1_48M),
	.sample_y2(sample_y2_48M),
	.sample_y3(sample_y3_48M),
	.sample_y4(sample_y4_48M),
	.sample_y5(sample_y5_48M),
	.sample_y6(sample_y6_48M),
	.sample_y7(sample_y7_48M),
	.sample_y8(sample_y8_48M),
	.sample_y9(sample_y9_48M)
);

reg [7:0] signal_48Mr = 0;
reg [7:0] signal_48Mr2 = 0;
reg [7:0] interpolator_48M_sr [0:9];

always @(posedge clk) begin

	signal_48Mr <= interpolator_48M_sr[2];
	signal_48Mr2 <= signal_48Mr;

	interpolator_48M_sr[2] <= interpolator_48M_sr[3];
	interpolator_48M_sr[3] <= interpolator_48M_sr[4];
	interpolator_48M_sr[4] <= interpolator_48M_sr[5];
	interpolator_48M_sr[5] <= interpolator_48M_sr[6];
	interpolator_48M_sr[6] <= interpolator_48M_sr[7];
	interpolator_48M_sr[7] <= interpolator_48M_sr[8];
	interpolator_48M_sr[8] <= interpolator_48M_sr[9];

	if (pulse_4M8) begin
		signal_48Mr2 <= sample_y0_48M;
		signal_48Mr <= sample_y1_48M;
		interpolator_48M_sr[2] <= sample_y2_48M;
		interpolator_48M_sr[3] <= sample_y3_48M;
		interpolator_48M_sr[4] <= sample_y4_48M;
		interpolator_48M_sr[5] <= sample_y5_48M;
		interpolator_48M_sr[6] <= sample_y6_48M;
		interpolator_48M_sr[7] <= sample_y7_48M;
		interpolator_48M_sr[8] <= sample_y8_48M;
		interpolator_48M_sr[9] <= sample_y9_48M;
	end
	if (rst) begin
		signal_48Mr <= 0;
		signal_48Mr2 <= 0;
		interpolator_48M_sr[2] <= 0;
		interpolator_48M_sr[3] <= 0;
		interpolator_48M_sr[4] <= 0;
		interpolator_48M_sr[5] <= 0;
		interpolator_48M_sr[6] <= 0;
		interpolator_48M_sr[7] <= 0;
		interpolator_48M_sr[8] <= 0;
		interpolator_48M_sr[9] <= 0;
	end
end

assign signal_48M = signal_48Mr2;

endmodule
