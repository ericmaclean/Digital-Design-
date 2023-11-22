module MealySequenceDetector 
(input i_Clk, 
input Sequence,
input Reset,
output X);

reg r_X;
reg [3:0] STATE = 0;
parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
reg [3:0] NS; 

always @(posedge i_Clk or posedge Reset)
begin 
	if(Reset)
		STATE <= S0;
	else 
        STATE <= NS;
end 

  always @(Sequence,STATE)  //asychronous reset 
begin 


	case(STATE)
		S0:
			begin
				r_X = Sequence ? 0 : 0;
				NS = Sequence ? S0 : S1;
			end 
		S1:
			begin
				r_X = Sequence ? 0 : 0;
				NS = Sequence ? S2 : S1;
			end 
		S2:
			begin
				r_X = Sequence ? 0 : 0;
				NS = Sequence ? S3 : S1;
			end 
		S3:
			begin
				r_X = Sequence ? 0 : 0;
				NS = Sequence ? S4 : S1;
			end 
		S4:
			begin
				r_X = Sequence ? 0 : 1;
				NS = Sequence ? S0 : S1;
			end 
	endcase 
		
end 

assign X = r_X;

endmodule  