// Copyright
// Unit test for our uart implementation.

module uart_tb ();

reg [7:0] tx_loopback_data; // Data transmitted by DUT. Must match tx_data

reg clk;
reg reset;
wire txd; // DUT TX signal; Testbench is receiving
reg send_data; // Pulse high to transmit data; Sampled when busy is low
wire busy; // Goes high when transmiting
reg [7:0] tx_data; //Transmit data; sampled when send_data is asserted

reg rxd; // DUT RX signal; Testbench is transmitting
wire [7:0] rx_data; // Data received by DUT, valid on rx_intr
wire rx_intr; // Pulse high on new received data; aka rx_data_valid

integer idx; // Use to count the number of received symbols
initial begin
	$dumpfile("test.vcd");
	$dumpvars(0,uart_tb);
end

uart #(
	.INPUT_FREQ(5_000_000),
	.BAUD_RATE(115200)
) dut (
	.clk(clk),
	.reset(reset),
	.rxd(txd),
	.txd(txd),
	.rx_data(rx_data),
	.received_data_intr(rx_intr),
	.tx_data(tx_data),
	.busy(busy),
	.send_data(send_data)
);

// Clock generator
always begin
	#100 clk = 1;
	#100 clk = 0;
end

always begin
	#8680;
	$display("One symbol period");
end

initial begin
reset = 1;
#450;
reset = 0;
wait (busy == 1'b0) #1;
$display("Not busy");
tx_data = 8'hA5;
send_data = 1'b1;
wait (busy == 1'b1) #1;
$display("busy");
send_data = 1'b0;

//Behavioural rx uart

wait (txd == 1'b0) #1;
#4340;
for (idx = 0; idx < 8; idx = idx + 1) begin
	#8680;
	tx_loopback_data = {tx_loopback_data[6:0], txd};
	$display("Received %d symbols", idx);
end

wait (busy == 1'b0) #1;
$display("Sent %h; received %h", tx_data, tx_loopback_data);
$display("Sent %h; received %h", tx_data, rx_data);
$finish();
end

endmodule
