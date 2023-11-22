module DFlipFlop_TB ();
reg Clk = 0;
reg D;
wire Q;
wire Qbar;

DFlipFlop DUT
(.i_Clk(Clk),
.D(D),
.Q(Q),
.Qbar(Qbar));

initial 
begin 
$dumpfile("DFlipFlop.vcd");
$dumpvars(0,DFlipFlop_TB);
$monitor($time, "Q: %b", Q);
D=0;
#5;
D=1;
#5;
D=1'bx;
#5;
D=0;
#5;


$finish;

end 

always 
#5 Clk = ~Clk;

endmodule 