module axis_dac (
	input wire clk,
	input wire rst,

	input wire [7:0] s_axis_tdata,
    input wire s_axis_tkeep,
    input wire s_axis_tvalid,
    output wire s_axis_tready,
    input wire s_axis_tlast,
    input wire s_axis_tid,
    input wire s_axis_tdest,
    input wire s_axis_tuser,

	output wire dac_out
);

wire [7:0] dac_data;
reg [7:0] dac_data_reg;
wire sample_tick;

clock_divider #(
	.DIVIDER_LOG2(10)
) sample_enable (
	.clk(clk),
	.reset(rst),
	.enable_pulse(sample_tick)
);

axis_fifo #(
    .DEPTH(4096), // TODO: Actual depth to be rounded up to BRAM size
    .DATA_WIDTH(8),
    .KEEP_ENABLE(0),
    .ID_ENABLE(0),
    .DEST_ENABLE(0),
    .USER_ENABLE(1),
    .USER_WIDTH(1),
    .FRAME_FIFO(0)
)
udp_payload_fifo (
    .clk(clk),
    .rst(rst),

    // AXI input
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(0),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tid(0),
    .s_axis_tdest(0),
    .s_axis_tuser(s_axis_tuser),

    // AXI output
    .m_axis_tdata(dac_data),
    .m_axis_tkeep(),
    .m_axis_tvalid(),
    .m_axis_tready(sample_tick),
    .m_axis_tlast(),
    .m_axis_tid(),
    .m_axis_tdest(),
    .m_axis_tuser(),

    // Status
    .status_overflow(),
    .status_bad_frame(),
    .status_good_frame()
);

always @(posedge clk) begin
	dac_data_reg <= dac_data;
end

so_pdm inst_dac (
  .i_clk(clk),
  .i_res(1'b0),
  .i_ce(1'b1),
  .i_func(dac_data_reg), 
  .o_DAC(dac_out)
);
/*
pdm inst_dac (
	.clk(clk),
	.reset(rst),
	.sample(dac_data_reg),
	.dac_out(dac_out)
);
*/

endmodule
