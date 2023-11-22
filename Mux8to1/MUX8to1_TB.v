module MUX8to1_TB ();
  reg [7:0] Input;
  reg [2:0] Select;
wire Output;
  MUX8to1 DUT(Input,Select,Output);
initial 
begin 
 Select = 3'b111;
 Input = 8'b01111110;
 #5; 
 Select = 3'b111;
 Input = 8'b11111111;
 #5;
 Select = 3'b000;
 #5;
end
    initial 
    begin
      $dumpfile("MUX8to1.vcd");
      $dumpvars(0,MUX8to1_TB);
    end 
 
endmodule 