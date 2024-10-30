module asynchronized_reset(
	input 	sys_clk,
	input 	sys_rst_n,
	input   key1,
	output reg  LED0
);

always @(posedge sys_clk or negedge sys_rst_n)begin
	if(!sys_rst_n)
		LED0 <= 1'b0;
	else 
		LED0 <= key1;
end 

endmodule 
