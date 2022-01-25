`timescale 1ns/1ps

module interpolator_tb ();

reg clk;
reg rst;
wire dac_out;
reg pulse_48k;
reg pulse_480k;
reg pulse_sine;
wire [7:0] sine_signal;
reg [7:0] sine_signal_r = 0;
reg [7:0] sine_signal_r2 = 0;

wire end_stage;
wire [7:0] sample_y0;
wire [7:0] sample_y1;
wire [7:0] sample_y2;
wire [7:0] sample_y3;
wire [7:0] sample_y4;
wire [7:0] sample_y5;
wire [7:0] sample_y6;
wire [7:0] sample_y7;
wire [7:0] sample_y8;
wire [7:0] sample_y9;

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,interpolator_tb);
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
integer f,i,f_48k,f_480k,idx_48k,idx_480k;

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

`define DEFINED
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
		$fwrite(f_480k,"%d\n",sample_y0);
		$fwrite(f_480k,"%d\n",sample_y1);
		$fwrite(f_480k,"%d\n",sample_y2);
		$fwrite(f_480k,"%d\n",sample_y3);
		$fwrite(f_480k,"%d\n",sample_y4);
		$fwrite(f_480k,"%d\n",sample_y5);
		$fwrite(f_480k,"%d\n",sample_y6);
		$fwrite(f_480k,"%d\n",sample_y7);
		$fwrite(f_480k,"%d\n",sample_y8);
		$fwrite(f_480k,"%d\n",sample_y9);
  end
  $fclose(f_480k);
  $finish();
end

`else

initial begin
  f = $fopen("output.txt","w");

  @(negedge rst); //Wait for reset to be released

  while (i<4096) begin
	  @(posedge clk);   //Wait for first clock out of reset
	  //$fwrite(f,"%d\n",sine_signal);
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

	.sample_y0(sample_y0),
	.sample_y1(sample_y1),
	.sample_y2(sample_y2),
	.sample_y3(sample_y3),
	.sample_y4(sample_y4),
	.sample_y5(sample_y5),
	.sample_y6(sample_y6),
	.sample_y7(sample_y7),
	.sample_y8(sample_y8),
	.sample_y9(sample_y9)
);

pdm #(
	.INPUT_WIDTH(8)
) i_so_pdm (
	.clk(clk),
	.reset(rst),
	.sample(sine_signal),
	.dac_out(dac_out)
);

endmodule
