module DMUX8to1_TB ();
reg Input;
reg [2:0] Select;
wire [7:0] Output; 

initial 
begin 
	Input = 1;
	Select = 3'b001;
	#5
	Input = 1;
	Select = 3'b101;
	#5
	Input = 1;
	Select = 3'b010;
	#5
	Input = 1;
	Select = 3'b111;
end 
initial 
begin 
	$dumpfile("DMUX.vcd");
	$dumpvars(0,DMUX8to1_TB);
end 
endmodule 