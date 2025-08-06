`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 20:52:01
// Design Name: 
// Module Name: custom_comp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module custom_comp( input[3:0] input_a,input_b,output reg equal_to,less_than,greater_than);
always  @(*)
begin 
if(input_a==input_b)
begin
equal_to<=1'b1;
less_than<=1'b0;
greater_than<=1'b0;
end
else if (input_a<input_b)
begin 
equal_to<=1'b0;
less_than<=1'b1;
greater_than<=1'b0;
end
else if(input_a>input_b)
begin 
equal_to<=1'b0;
less_than<=1'b0;
greater_than<=1'b1;
end 
end 
endmodule
