
module Running_light(
    input sys_clk,       
    input sys_rst_n,     
    output reg [3:0] LED
);
 
parameter NUM= 24999999; 
reg [24:0] counter;            
 

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)   
        counter <= 25'd0;       
    else if (counter == NUM)   
        counter <= 25'd0;       
    else
        counter <= counter + 25'd1; 
end
 
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)   
        LED <= 4'b1110;            
    else if (counter >= NUM)           
        LED <= {LED[2:0], LED[3]};  
    else
        LED<= LED;  
end
 
endmodule