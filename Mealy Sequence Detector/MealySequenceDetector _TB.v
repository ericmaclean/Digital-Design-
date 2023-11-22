module MealySequenceDetector_TB ();

reg Clk = 1'b0;
reg Reset = 1'b0;
reg Sequence; 
wire X;

MealySequenceDetector DUT
(.i_Clk(Clk),
.Sequence(Sequence),
.Reset(Reset),
.X(X));

initial 
begin 
$dumpfile("MEEEEEAAALY.vcd");
$dumpvars(0,MealySequenceDetector_TB);

#1 Sequence = 0; #10 Sequence = 0; #10 Sequence = 1; #10 Sequence = 1; #10 Sequence = 1;
#10 Sequence = 0;#10 Sequence = 1;#10 Sequence = 1;#1 Reset = 1; #1 Reset =0;#10 Sequence = 1;#10 Sequence = 0;#10 Sequence = 0;
#10 Sequence = 0; #10 Sequence = 1; #10 Sequence = 1; #10 Sequence = 1; #10 Sequence = 0;
#10;
$finish; 
end 

always 
#5 Clk = ~Clk;

endmodule 