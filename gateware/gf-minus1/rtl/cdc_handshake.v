module cdc_handshake #(
	parameter WIDTH = 1
) (
input wire src_clk,
input wire [WIDTH-1:0] src_data,
input wire src_valid,
output wire src_rcv,

input wire dest_clk,
output reg [WIDTH-1:0] dest_data,
output wire dest_valid
);

// XXX: Add async register property
reg [2:0] dest_sync_reg = 3'd0;
reg [2:0] src_sync_reg = 3'd0;

reg src_valid_d1 = 1'b0;
reg [WIDTH-1:0] src_data_d1 = {WIDTH{1'b0}};

assign src_rcv = src_sync_reg[1];
assign dest_valid = dest_sync_reg[2];

always @(posedge dest_clk) begin
	dest_sync_reg <= {dest_sync_reg[1:0], src_valid_d1};
	dest_data <= src_data_d1;
end

always @(posedge src_clk) begin
	if (src_valid) begin
		src_valid_d1 <= 1'b1;
		src_data_d1 <= src_data;
	end
	if (src_sync_reg[1]) begin
		src_valid_d1 <= 1'b0;
	end
	src_sync_reg <= {src_sync_reg[1:0], dest_sync_reg[2]};
end

endmodule
