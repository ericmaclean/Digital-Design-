module TFlipFlop_TB ();
reg Clk = 0;
reg T;
wire Q;
wire Qbar;

TFlipFlop DUT
(.i_Clk(Clk),
.T(T),
.Q(Q),
.Qbar(Qbar));

initial 
begin 
$dumpfile("TFlipFlop.vcd");
$dumpvars(0,TFlipFlop_TB);

T=0;
#10;
T=1;
#10;
T=0;
#10;

$finish;


end 
always 
#5 Clk = ~Clk;

endmodule 