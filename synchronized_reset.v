module synchronized_reset(
	input 	sys_clk	,
	input 	sys_rst_n,
	input   key1,
	output reg  LED0
);

always @(posedge sys_clk)begin
	if(sys_rst_n<=1'b0)
		LED0 <= 1'b0;
	else 
		LED0 <= key1;
end 

endmodule 
