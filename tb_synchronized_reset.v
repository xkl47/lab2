`timescale 1ns/1ns 

module tb_synchronized_reset();
reg sys_clk;
reg sys_rst_n;
reg key1;
wire LED0;



initial begin
	sys_clk    = 1'b0;
	sys_rst_n <= 1'b1;
	key1   <= 1'b1;
	#20 sys_rst_n <= 1'b0;
	#19 sys_rst_n <= 1'b1;
	#35 sys_rst_n <= 1'b0;
	#25 sys_rst_n <= 1'b1;

end 

always #10 sys_clk = ~sys_clk; 

//
synchronized_reset   synchronized_reset_inst(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n),
	.key1(key1),
	.LED0(LED0)
);

endmodule
