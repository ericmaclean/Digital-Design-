module DMUX8to1
(input In, 
input [2:0] Sel, 
output [7:0] Out);


reg [7:0] r_Output = 0;

always @(*)
begin 
	case(Sel) 
		3'b000 : r_Output[0] <= In;
		3'b001 : r_Output[1] <= In;
		3'b010 : r_Output[2] <= In;
		3'b011 : r_Output[3] <= In;
		3'b100 : r_Output[4] <= In;
		3'b101 : r_Output[5] <= In;
		3'b110 : r_Output[6] <= In;
		3'b111 : r_Output[7] <= In;
	endcase 

end 

assign Out = r_Output;


endmodule 