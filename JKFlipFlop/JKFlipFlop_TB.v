module JKFlipFlop_TB();
reg Clk =0;
reg J;
reg K;
wire Q;
wire Qbar;

JKFlipFlop DUT
(.i_Clk(Clk),
.J(J),
.K(K),
.Q(Q),
.Qbar(Qbar));

initial 
begin
$dumpfile("JKFlipFlop.vcd");
$dumpvars(0,JKFlipFlop_TB);
J=0;
K=0;
#10; 
J=0;
K=1;
#10;
J=1;
K=0;
#10;
J=1;
K=1;
#10;
$finish; 
end
always 
#5 Clk = ~Clk;


endmodule 