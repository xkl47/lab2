`timescale 1ns/1ns
 
module tb_counter();
reg sys_clk;
reg sys_rst_n;
wire LED0;

    
    initial begin
         sys_clk =1;
        sys_rst_n=0;
        #201;
        sys_rst_n=1;
        #2000000000;
        $stop;
    end

initial sys_clk =1;
always#10 sys_clk= ~sys_clk;

counter counter_inst(
        .sys_rst_n(sys_rst_n),
        .sys_clk(sys_clk),
        .LED0(LED0)
    );
endmodule





