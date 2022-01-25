`timescale 1ns/1ps

module interpolator_1000x_tb ();

reg clk;
reg rst;
wire dac_out;
reg pulse_48k;
reg pulse_480k;
reg pulse_4M8;
reg pulse_sine;
wire [7:0] sine_signal;
reg [7:0] sine_signal_r = 0;
reg [7:0] sine_signal_r2 = 0;

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

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,interpolator_1000x_tb);
end

// Clock generator
always begin
	clk = 0;
	#10.416 clk = 1;
	#10.416 clk = 0;
end

initial begin
rst = 1;
#50;
rst = 0;
end

real x;
integer f,i,f_48k,f_480k,f_48M, idx_48M, idx_48k,idx_480k,idx_4m8;

// 48KHz pulse train
always begin
	pulse_48k = 0;
	for (idx_48k= 0; idx_48k<999; idx_48k=idx_48k+1) begin
		@(posedge clk);
	end
	@(negedge clk);
	pulse_48k = 1;
	@(negedge clk);
	//#20811.168 pulse_48k = 1;
	//#20.832 pulse_48k = 0;
end

// 480KHz pulse train
always begin
	pulse_480k = 0;
	for (idx_480k= 0; idx_480k<99; idx_480k=idx_480k+1) begin
		@(posedge clk);
	end
	@(negedge clk);
	pulse_480k = 1;
	@(negedge clk);
	//#2062.500 pulse_480k = 1;
	//#20.832 pulse_480k = 0;
end

// 4.80MHz pulse train
always begin
	pulse_4M8 = 0;
	for (idx_4m8= 0; idx_4m8<9; idx_4m8=idx_4m8+1) begin
		@(posedge clk);
	end
	@(negedge clk);
	pulse_4M8 = 1;
	@(negedge clk);
	//#2062.500 pulse_480k = 1;
	//#20.832 pulse_480k = 0;
end

// sine pulse train
always begin
	pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 1;
	#20.832 pulse_sine = 0;
end

`ifdef DEFINED
initial begin
  f_48k = $fopen("48k_output.txt","w");
  @(negedge rst); //Wait for reset to be released
  for (i = 0; i<4096; i=i+1) begin
	  @(posedge pulse_48k);
	  $fwrite(f_48k,"%d\n",sine_signal_r);
  end
  $fclose(f_48k);  
  $finish();
end

initial begin
	f_480k = $fopen("480k_output.txt","w");
	@(negedge rst); //Wait for reset to be released
	for (i = 0; i<4096; i=i+1) begin
		@(posedge end_stage);
		@(posedge clk);
		@(posedge clk);
		$fwrite(f_480k,"%d\n",sample_y0_480k);
		$fwrite(f_480k,"%d\n",sample_y1_480k);
		$fwrite(f_480k,"%d\n",sample_y2_480k);
		$fwrite(f_480k,"%d\n",sample_y3_480k);
		$fwrite(f_480k,"%d\n",sample_y4_480k);
		$fwrite(f_480k,"%d\n",sample_y5_480k);
		$fwrite(f_480k,"%d\n",sample_y6_480k);
		$fwrite(f_480k,"%d\n",sample_y7_480k);
		$fwrite(f_480k,"%d\n",sample_y8_480k);
		$fwrite(f_480k,"%d\n",sample_y9_480k);
  end
  $fclose(f_480k);
  $finish();
end

`else

initial begin
  //f_48k = $fopen("48k_output.txt","w");
  @(negedge rst); //Wait for reset to be released
  for (i = 0; i<4096; i=i+1) begin
	  @(posedge pulse_48k);
	  //$fwrite(f_48k,"%d\n",sine_signal_r);
  end
  //$fclose(f_48k);  
  //$finish();
end

initial begin
  f = $fopen("output.txt","w");
  f_48M = $fopen("48M_output.txt","w");

  i = 0;
  @(negedge rst); //Wait for reset to be released

  while (i<4096) begin
	  @(posedge clk);   //Wait for first clock out of reset
	  $fwrite(f_48M,"%d\n",sine_signal_48Mr2);
	  $fwrite(f,"%d\n",{8{dac_out}});
  end

  $fclose(f);  
  $finish();
end
`endif

rom_wavegen i_sinegen(
	.clk(clk),
	.reset(rst),
	.enable_pulse(pulse_sine),
	.step(12'b1),
	.wave_out(sine_signal)
);

always @(posedge clk) begin
	if (pulse_48k) begin
		sine_signal_r <= sine_signal;
		sine_signal_r2 <= sine_signal_r;
		
	end
end

interpolator_10x interpolate_48k_to_480k (
	.clk(clk),
	.reset(rst),
	.clk_en(pulse_48k),
	.clk_en_10x(pulse_480k),
	
	.sample_x0(sine_signal_r2),
	.sample_x1(sine_signal_r),

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

reg [7:0] sine_signal_480kr;
reg [7:0] sine_signal_480kr2;
reg [7:0] interpolator_48k_sr [0:9];

always @(posedge clk) begin
	if (pulse_480k) begin
		sine_signal_480kr2 <= sine_signal_480kr;
		sine_signal_480kr <= interpolator_48k_sr[2];

		interpolator_48k_sr[2] <= interpolator_48k_sr[3];
		interpolator_48k_sr[3] <= interpolator_48k_sr[4];
		interpolator_48k_sr[4] <= interpolator_48k_sr[5];
		interpolator_48k_sr[5] <= interpolator_48k_sr[6];
		interpolator_48k_sr[6] <= interpolator_48k_sr[7];
		interpolator_48k_sr[7] <= interpolator_48k_sr[8];
		interpolator_48k_sr[8] <= interpolator_48k_sr[9];
	end
	if (pulse_48k) begin
		sine_signal_480kr2 <= sample_y0_480k;
		sine_signal_480kr <= sample_y1_480k;
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
		sine_signal_480kr <= 0;
		sine_signal_480kr2 <= 0;
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
	
	.sample_x0(sine_signal_480kr2),
	.sample_x1(sine_signal_480kr),

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

reg [7:0] sine_signal_4M8r = 0;
reg [7:0] sine_signal_4M8r2 = 0;
reg [7:0] interpolator_480k_sr [0:9];

always @(posedge clk) begin
	if (pulse_4M8) begin
		sine_signal_4M8r <= interpolator_480k_sr[2];
		sine_signal_4M8r2 <= sine_signal_4M8r;

		interpolator_480k_sr[2] <= interpolator_480k_sr[3];
		interpolator_480k_sr[3] <= interpolator_480k_sr[4];
		interpolator_480k_sr[4] <= interpolator_480k_sr[5];
		interpolator_480k_sr[5] <= interpolator_480k_sr[6];
		interpolator_480k_sr[6] <= interpolator_480k_sr[7];
		interpolator_480k_sr[7] <= interpolator_480k_sr[8];
		interpolator_480k_sr[8] <= interpolator_480k_sr[9];
	end
	if (pulse_480k) begin
		sine_signal_4M8r2 <= sample_y0_4M8;
		sine_signal_4M8r <= sample_y1_4M8;
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
		sine_signal_4M8r <= 0;
		sine_signal_4M8r2 <= 0;
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
	
	.sample_x0(sine_signal_4M8r2),
	.sample_x1(sine_signal_4M8r),

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

reg [7:0] sine_signal_48Mr = 0;
reg [7:0] sine_signal_48Mr2 = 0;
reg [7:0] interpolator_48M_sr [0:9];

always @(posedge clk) begin

	sine_signal_48Mr <= interpolator_48M_sr[2];
	sine_signal_48Mr2 <= sine_signal_48Mr;

	interpolator_48M_sr[2] <= interpolator_48M_sr[3];
	interpolator_48M_sr[3] <= interpolator_48M_sr[4];
	interpolator_48M_sr[4] <= interpolator_48M_sr[5];
	interpolator_48M_sr[5] <= interpolator_48M_sr[6];
	interpolator_48M_sr[6] <= interpolator_48M_sr[7];
	interpolator_48M_sr[7] <= interpolator_48M_sr[8];
	interpolator_48M_sr[8] <= interpolator_48M_sr[9];

	if (pulse_4M8) begin
		sine_signal_48Mr2 <= sample_y0_48M;
		sine_signal_48Mr <= sample_y1_48M;
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
		sine_signal_48Mr <= 0;
		sine_signal_48Mr2 <= 0;
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

pdm #(
	.INPUT_WIDTH(8)
) i_so_pdm (
	.clk(clk),
	.reset(rst),
	.sample(sine_signal_48Mr2),
	.dac_out(dac_out)
);

endmodule
