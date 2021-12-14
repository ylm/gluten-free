// Copyright goes here ;)
// sinegen.v Sine wave generator

module sinegen (
input wire clk,
input wire reset,
input wire clk_en,
output wire [7:0] sine_out
);

reg [7:0] sine_rom [0:2047];
reg [10:0] rd_addr = 11'b0;
reg [7:0] out_value = 8'b0;

assign sine_out = out_value;

// Initializing our ROM
initial begin
$readmemh("rtl/sine.mem", sine_rom);
end

// Iterating through the wave's ROM
always @(posedge clk) begin
	if (clk_en == 1'b1) begin
		rd_addr <= rd_addr + 1'b1;
		out_value <= sine_rom[rd_addr];
	end
	if (reset) begin
		rd_addr <= 11'b0;
		out_value <= 8'b0;
	end
end

endmodule


