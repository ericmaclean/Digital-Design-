//Q is no change if D enters an unknown state 

module DFlipFlop
(input i_Clk,
input D, 
output Q,
output Qbar);

reg r_Q=0;

always @(posedge i_Clk)
begin 
	case (D)
	
	1'b0 : r_Q <= 1'b0;
	1'b1 : r_Q <= 1'b1;
	1'bx : r_Q <= r_Q;
	
	endcase 



end 

assign Q = r_Q;
assign Qbar = ~r_Q;

endmodule 
