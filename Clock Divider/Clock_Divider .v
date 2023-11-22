//Odd integer Clock divder where N is the divisor

module Clock_Divider 
  #(parameter N = 5)
(input i_Clk, 
output o_Clk);

reg FF1 = 0;
reg FF2 = 0;
reg [N-1:0] Count = 0; 
reg r_Div1 = 0;
reg r_Div2 = 0;
wire w_Div1;
wire w_Div2;

always @(posedge i_Clk)
begin 
  if (Count == N-1)
	begin 
		FF1 <= 1'b1;
	end 
	else 
	begin 
		FF1 <= 1'b0;
	end 
	
  if (Count == ((N+1)/2)-1)
	begin 
		FF2 <= 1'b1;
	end 
	else 
	begin 
		FF2 <= 1'b0;
	end 
	
  if (Count == (N-1))
  begin
    Count <= 0;
  end 
  else 
  begin 
  	Count <= Count +1;
  end 
end 
always @(negedge FF1)
begin 
	r_Div1 <= ~r_Div1;
end 
always @(negedge i_Clk)
begin 
	if (FF2 == 1'b1)
	begin 
		r_Div2 <= ~r_Div2;
	end 
end 




assign w_Div1 = r_Div1;
assign w_Div2 = r_Div2;
assign o_Clk = w_Div1 ^ w_Div2;


endmodule 