//TFlipFlop differs from the DFlipFlop in that it just toggles depedning on the T value 

module TFlipFlop
(input i_Clk,
input T, 
output Q,
output Qbar);

reg r_Q=0;

always @(posedge i_Clk)
begin 
	case (T)
	
	1'b0 : r_Q <= r_Q;
	1'b1 : r_Q <= ~r_Q;
	
	endcase 



end 

assign Q = r_Q;
assign Qbar = ~r_Q;

endmodule 