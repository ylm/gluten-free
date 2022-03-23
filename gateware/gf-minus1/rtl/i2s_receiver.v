module i2s_receiver (
	input wire sys_clk,

	input wire SCK,
	input wire MCLK,
	input wire LRCLK,
	input wire SDATA,

	output wire [7:0] m_axis_tdata_l,
    output wire m_axis_tkeep_l,
    output wire m_axis_tvalid_l,
    output wire m_axis_tlast_l,
    output wire m_axis_tid_l,
    output wire m_axis_tdest_l,
    output wire m_axis_tuser_l,
    input wire m_axis_tready_l,

	output wire [7:0] m_axis_tdata_r,
    output wire m_axis_tkeep_r,
    output wire m_axis_tvalid_r,
    output wire m_axis_tlast_r,
    output wire m_axis_tid_r,
    output wire m_axis_tdest_r,
    output wire m_axis_tuser_r,
    input wire m_axis_tready_r

);
reg [7:0] l_data = 8'd0;
reg [7:0] r_data = 8'd0;

reg [7:0] divider_48k = 8'd0;
reg sample_tick = 1'b0;

reg current_ch = 1'd0; // 
reg [3:0] nibble_bit_ena = 4'd0;
reg nibble_select = 1'd0;
reg [7:0] shift_sipo = 8'd0;
reg sipo_rst = 1'b0;
reg left_sipo_valid = 1'b0;
reg right_sipo_valid = 1'b0;

wire [7:0] left_axis_data;
wire [7:0] right_axis_data;
wire left_data_valid;
wire right_data_valid;

assign m_axis_tdata_l = left_axis_data;
assign m_axis_tdata_r = right_axis_data;

assign m_axis_tkeep_l = 1'b0;
assign m_axis_tvalid_l = left_data_valid;
assign m_axis_tlast_l = 1'b0;
assign m_axis_tuser_l = 1'b0;
assign m_axis_tid_l = 1'b0;
assign m_axis_tdest_l = 1'b0;

assign m_axis_tkeep_r = 1'b0;
assign m_axis_tvalid_r = right_data_valid;
assign m_axis_tlast_r = 1'b0;
assign m_axis_tuser_r = 1'b0;
assign m_axis_tid_r = 1'b0;
assign m_axis_tdest_r = 1'b0;

// TODO: Hold reset until phase change on LRCLK
// TODO: 
always @(posedge SCK) begin
	current_ch <= LRCLK;
	sipo_rst <= current_ch ^ LRCLK;
	nibble_bit_ena <= {1'b0,nibble_bit_ena[3:1]};
	nibble_select <= nibble_select ^ nibble_bit_ena[0];
	if (current_ch != LRCLK) begin
		nibble_bit_ena <= 4'h8;
		nibble_select <= 1'b0;
	end
	if ({nibble_bit_ena[0], nibble_select} == 2'b10) begin
		nibble_bit_ena <= 4'h8;
	end
end

always @(posedge SCK) begin
	left_sipo_valid <= 1'b0;
	right_sipo_valid <= 1'b0;
	if (~nibble_select) begin
		shift_sipo[7:4] <= shift_sipo[7:4] | {4{SDATA}} & nibble_bit_ena;
	end
	else begin
		shift_sipo[3:0] <= shift_sipo[3:0] | {4{SDATA}} & nibble_bit_ena;
	end
	if (sipo_rst) begin
		shift_sipo[6:0] <=7'd0; //Not reseting Most Significant bit
	end
	if (sipo_rst) begin
		if (current_ch) begin
			left_sipo_valid <= 1'b1;
			l_data <= shift_sipo;
		end else begin
			right_sipo_valid <= 1'b1;
			r_data <= shift_sipo;
		end
	end
end

cdc_handshake #(
	.WIDTH(8)
) left_data_cdc (
.src_clk(SCK),
.src_data(l_data),
.src_valid(left_sipo_valid),
.src_rcv(),

.dest_clk(sys_clk),
.dest_data(left_axis_data),
.dest_valid(left_data_valid)
);

cdc_handshake #(
	.WIDTH(8)
) right_data_cdc (
.src_clk(SCK),
.src_data(r_data),
.src_valid(right_sipo_valid),
.src_rcv(),

.dest_clk(sys_clk),
.dest_data(right_axis_data),
.dest_valid(right_data_valid)
);

/*
always @(posedge sys_clk) begin
	sample_tick <= 1'b0;
	divider_48k <= divider_48k + 8'd1;
	if (divider_48k == 8'd249) begin
		sample_tick <= 1'b1;
		divider_48k <= 8'd0;
	end
end
always @(posedge sys_clk) begin
	l_data <= l_data + m_axis_tready_l;
	r_data <= r_data - m_axis_tready_r;
end
*/

endmodule

