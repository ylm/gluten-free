// Copyright

module uart #(
parameter INPUT_FREQ = 12_000_000,
parameter BAUD_RATE = 115_200
)(
input wire clk,
input wire reset,
input wire rxd,
output wire txd,
output wire [7:0] rx_data,
output reg received_data_intr,
input wire [7:0] tx_data,
output reg busy,
input wire send_data
);

// TODO: "Debounce/synchronize" rxd
// TODO: Compute clock enable for proper baud rate

reg [9:0] rx_buffer;
reg [9:0] tx_buffer;

reg [3:0] rx_received;
reg [3:0] tx_sent;

assign txd = tx_buffer[9];
assign rx_data = rx_buffer[8:1];

reg [7:0] rx_baud_divider;
reg rx_baud_enable;
reg rx_baud_middle;
reg rx_receiving;
reg [7:0] tx_baud_divider;
reg tx_baud_enable;

// Receive baud generator
always @(posedge clk) begin
	if (rx_receiving) begin
		rx_baud_enable <= 1'b0;
		rx_baud_divider <= rx_baud_divider + 8'd1;
		if ((INPUT_FREQ/(2*BAUD_RATE)-1) == rx_baud_divider) begin
			rx_baud_enable <= 1'b1;
			rx_baud_divider <= 8'd0;
		end
	end
	if (reset) begin
		rx_baud_enable <= 1'b0;
		rx_baud_divider <= 8'd0;
	end
end

// Receive state machine
always @(posedge clk) begin
	received_data_intr <= 1'b0; // We might want the to have the same reset as other rx flops for better packing.
	if (rx_receiving&rx_baud_enable) begin
		rx_baud_middle <= ~rx_baud_middle;
		if (rx_baud_middle) begin
			rx_buffer <= {rx_buffer[8:0], rxd};
			rx_received <= rx_received + 4'd1;
		end else begin
			if (rx_received == 4'd10) begin
				rx_receiving <= 1'b0;
				received_data_intr <= 1'b1;
			end
		end
	end
	if (~rx_receiving) begin
		rx_receiving <= ~rxd;
	end
	if (reset) begin
		rx_buffer <= 10'd0;
		rx_received <= 3'd0;
		rx_receiving <= 1'b0;
		rx_baud_middle <= 1'b1;
	end
end

// Transmit state machine
always @(posedge clk) begin
	if (busy&tx_baud_enable) begin
		tx_buffer <= {tx_buffer[8:0], 1'b1};
		tx_sent <= tx_sent + 4'b1;
		if (tx_sent == 4'd9) begin
			busy <= 1'b0;
			tx_sent[3] <= 1'b0;
		end
	end
	if (~busy & send_data) begin
		tx_buffer <= {1'b0, tx_data, 1'b1};
		busy <= 1'b1;
	end
	if (reset) begin
		tx_buffer <= 10'h3ff;
		tx_sent <= 4'd0;
		busy <= 1'b0;
	end
end

// Transmit baud generator
always @(posedge clk) begin
	if (busy) begin
		tx_baud_enable <= 1'b0;
		tx_baud_divider <= tx_baud_divider + 8'd1;
		if ((INPUT_FREQ/BAUD_RATE-1) == tx_baud_divider) begin
			tx_baud_enable <= 1'b1;
			tx_baud_divider <= 8'd0;
		end
	end
	if (reset) begin
		tx_baud_enable <= 1'b0;
		tx_baud_divider <= 8'd0;
	end
end

endmodule
