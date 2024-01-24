module Vending_Machine_tb;
	reg clk;
	reg [1:0] in;
	reg rst;
	
	wire out;
	wire [1:0] change;
	
	Vending_Machine uut(
		.Clk(clk),
		.rst(rst),
		.in(in),
		.out(out),
		.change(change)
	
	);
	initial begin
		rst = 1;
		clk = 0;
		#6 rst = 0;
		in = 2;
		#19 in = 2;
		#25 $finish;
	end
	always #5 clk = ~clk;
endmodule