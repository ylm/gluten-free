`timescale 1ns/1ps
module so_pdm_tb ();

reg clk;
reg rst;
wire dac_out;
reg pulse_48k;
reg pulse_24M;
reg pulse_sine;
wire [7:0] sine_signal;
reg [7:0] sine_signal_r = 0;

initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,so_pdm_tb);
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
integer f,i;

// 24MHz pulse train
always begin
	pulse_24M = 0;
	#20.832 pulse_24M = 1;
	#20.832 pulse_24M = 0;
end

// 48KHz pulse train
always begin
	pulse_48k = 0;
	#20811.168 pulse_48k = 1;
	#20.832 pulse_48k = 0;
end

// sine pulse train
always begin
	pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 0;
	#20.832 pulse_sine = 1;
	#20.832 pulse_sine = 0;
end

initial begin
  for (i = 0; i<4096; i=i+1) begin
	  @(posedge pulse_48k);
  end
end

initial begin
  f = $fopen("output.txt","w");

  @(negedge rst); //Wait for reset to be released

  while (i<4096) begin
	  @(posedge clk);   //Wait for first clock out of reset
	  $fwrite(f,"%d\n",sine_signal_r);
	  //$fwrite(f,"%d\n",{8{dac_out}});
  end

  $fclose(f);  
  $finish();
end

rom_wavegen i_sinegen(
	.clk(clk),
	.reset(rst),
	.enable_pulse(pulse_sine),
	.step(12'b1),
	.wave_out(sine_signal)
);

always @(posedge clk) begin
	sine_signal_r <= 8'h00;
	if (pulse_24M) begin
		sine_signal_r <= sine_signal;
	end
end

second_order_dac i_so_pdm (
	.i_clk(clk),
	.i_res(~rst),
	.i_ce(1'b1),
	.i_func({sine_signal_r, 8'h00}),
	.o_DAC(dac_out)
);

endmodule
