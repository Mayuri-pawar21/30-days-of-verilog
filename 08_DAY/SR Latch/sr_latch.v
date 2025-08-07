`timescale 1ns / 1ps
//sr latch implmentation using  nand gate


module sr_latch(input s,input r,output reg q,output reg qbar);
always @(s,r) begin 
  if(s==1'b1)
     begin 
      q <=1'b1;
      qbar <=1'b0;
   end 
   else if (r==1'b1)
     begin
     q <=1'b0;
     qbar <=1'b1;
   end 
end
endmodule
