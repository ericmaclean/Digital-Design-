module ClockDiv_TB();

reg in_clk = 0;
wire out_clk;

Clock_Divider UUT
(.i_Clk(in_clk),
.o_Clk(out_clk));

initial 
begin 
$dumpfile("ClockDiv_TB.vcd");
$dumpvars(0,ClockDiv_TB);

#100;
$finish; 

end 



always
begin 
#1 in_clk = ~in_clk;
end 

endmodule 