module decade_clock_divider (
	input wire clk,
	input wire rst,
	
	output reg pulse_48k = 1'b0,
	output reg pulse_480k = 1'b0,
	output reg pulse_4M8 = 1'b0,
);

reg [9:0] divider_48k = 10'd0;
reg [6:0] divider_480k = 7'd0;
reg [3:0] divider_4M8 = 4'd0;

always @(posedge clk) begin
	pulse_48k <= 1'b0;
	divider_48k <= divider_48k + 10'd1;
	if (divider_48k == 10'd999) begin
		pulse_48k <= 1'b1;
		divider_48k <= 10'd0;
	end
	if (rst) begin
		pulse_48k <= 1'b1;
		divider_48k <= 10'd0;
	end
end

always @(posedge clk) begin
	pulse_480k <= 1'b0;
	divider_480k <= divider_480k + 7'd1;
	if (divider_480k == 7'd99) begin
		pulse_480k <= 1'b1;
		divider_480k <= 7'd0;
	end
	if (rst) begin
		pulse_480k <= 1'b1;
		divider_480k <= 7'd0;
	end
end

always @(posedge clk) begin
	pulse_4M8 <= 1'b0;
	divider_4M8 <= divider_4M8 + 4'd1;
	if (divider_4M8 == 4'd9) begin
		pulse_4M8 <= 1'b1;
		divider_4M8 <= 4'd0;
	end
	if (rst) begin
		pulse_4M8 <= 1'b1;
		divider_4M8 <= 4'd0;
	end
end
endmodule
