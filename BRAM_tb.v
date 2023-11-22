module BRAM_tb();

reg Clk = 0;
reg w_en = 0;
reg r_en = 0;
reg [3:0] w_addr = 0;
reg [3:0] r_addr = 0;
reg [7:0] w_data = 0;
reg [3:0] i;
wire [7:0] r_data;


BRAM 
UUT
(.i_Clk(Clk),
.Wr_En(w_en),
.Rd_En(r_en),
.W_Addr(w_addr),
.R_Addr(r_addr),
.Wr_Data(w_data),
.Rd_Data(r_data));

initial 
begin 
$dumpfile("BRAM.vcd");
$dumpvars(0,BRAM_tb);
  for(i=0; i<15; i=i+1)
begin
r_addr = i;
r_en = 1;
#2;
end 
r_addr = 4'b1111;
r_en = 1;
#2;
r_addr = 0;
r_en = 0;
#5;
w_addr = 4'b11;
w_data = 'hA5;
w_en  = 1;
#5;
w_addr = 0;
w_data = 0;
w_en = 0;
#5;
r_addr = 4'b11;
r_en = 1;
#20;

$finish;

end 

always 
#1 Clk = ~Clk;

endmodule 