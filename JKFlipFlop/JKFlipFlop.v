//SRFlipFlop contains a do not use state when S and R are both 1
//JKFlipFlop utilizes this do not use state 

module JKFlipFlop
(input i_Clk,
input J,
input K,
output Q,
output Qbar);

reg r_Q;

always @(posedge i_Clk)
begin 
	case ({J,K})
	2'b00 : r_Q <= r_Q;
	2'b01 : r_Q <= 1'b0;
	2'b10 : r_Q <= 1'b1;
	2'b11 : r_Q <= ~r_Q;
	endcase 



end 

assign Q = r_Q;
assign Qbar = ~r_Q;

endmodule 

