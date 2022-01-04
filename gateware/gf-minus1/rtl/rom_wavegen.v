// Copyright goes here ;)
// rom_wavegen.v

module rom_wavegen #(
parameter OUTPUT_WIDTH = 8
)(
input wire clk,
input wire reset,
input wire enable_pulse, // Acts as a clock divider
input wire [11:0] step, // Acts as a clock multiplier
output wire [OUTPUT_WIDTH-1:0] wave_out
);

reg [15:0] sine_rom [0:4095];
reg [11:0] rd_addr = 12'b0;
reg [15:0] out_value = 16'b0;

// Initializing our ROM
initial begin
$readmemh("rtl/sine.mem", sine_rom);
end

assign wave_out = out_value;

// Pseudo-dual port RAM (as in ice40)
always @(posedge clk) begin
	if (enable_pulse) begin
		rd_addr <= rd_addr + step;
		out_value <= sine_rom[rd_addr];
	end
	if (reset) begin
		rd_addr <= 12'b0;
		out_value <= {OUTPUT_WIDTH-1{1'b0}};
	end
end

endmodule


