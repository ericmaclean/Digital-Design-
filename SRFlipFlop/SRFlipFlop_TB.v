module SRFlipFlop_TB ();
reg Set; 
reg Reset; 
reg Clk = 0;
wire Q_Out;
wire Qbar_Out;

SRFlipFlop DUT
(.i_Clk(Clk),
.S(Set),
.R(Reset),
.Q(Q_Out),
.Qbar(Qbar_Out));

initial 
begin 
//$display("sr flip flop");
//$monitor("%b  %b %b \t %b %b",Set,Reset,Clk, Q_Out,Qbar_Out;
$dumpfile("SRFlipFlop.vcd");
$dumpvars(0, SRFlipFlop_TB);

Set = 0;		
Reset  = 0;		
#10
Set = 0;		
Reset  = 1;		
#10
Set = 1;		
Reset  = 0;		
#10
Set = 0;		
Reset  = 0;		
#10
Set = 1;		
Reset  = 1;		
#10;
$finish;
end 
always 
#5 Clk = ~Clk;

endmodule 
