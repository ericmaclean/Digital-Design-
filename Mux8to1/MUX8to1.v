module MUX8to1
(input [7:0] In, 
input [2:0] Sel,
output Out);

reg r_Output;

always @(*)
begin 
	case (Sel)
	3'b000 : r_Output <= In[0];
	3'b001 : r_Output <= In[1];
	3'b010 : r_Output <= In[2];
	3'b011 : r_Output <= In[3];
	3'b100 : r_Output <= In[4];
	3'b101 : r_Output <= In[5];
	3'b110 : r_Output <= In[6];
	3'b111 : r_Output <= In[7];
	endcase 

end 

assign Out = r_Output;

endmodule 
