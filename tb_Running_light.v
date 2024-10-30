`timescale 1ns / 1ns
 
module tb_Running_light();
reg sys_clk     ;
reg sys_rst_n   ;
wire [3:0] LED  ;
 
 
initial begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;
    #201
    sys_rst_n <=1'b1;
end
 
always #10 sys_clk = ~sys_clk;// 时钟周期为 20ns，生成时钟信号
 
Running_light Running_light_inst(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .LED(LED)
    );
 
endmodule