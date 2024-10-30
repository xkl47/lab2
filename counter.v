module counter(
input sys_clk,
input sys_rst_n,
output reg LED0
);

parameter NUM =24999999 ;
reg [24:0]counter;

always@(posedge sys_clk or negedge sys_rst_n)begin
if(!sys_rst_n)
		      counter <= 0;
		 else if(counter==NUM)
		     counter <=0;
		 else
		    counter <= counter+1'b1;
		    end

always@(posedge sys_clk or negedge sys_rst_n) begin
		if(!sys_rst_n)
		       LED0<= 0;
		 else if (counter==NUM)
		     LED0 <= ~LED0;
             else 
             LED0 <= LED0;
             end
endmodule