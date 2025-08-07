`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:43:06
// Design Name: 
// Module Name: PWM
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


module PWM(
 input clk,
    output [3:0] out  );
    
    reg [7:0] count = 0 ;
    
always@(posedge clk ) begin

if (count < 100) count <= count + 1;
else count <=0;

end

assign out[0] = (count < 20) ? 1:0;
assign out[1] = (count < 40) ? 1:0;
assign out[2] = (count < 60) ? 1:0;
assign out[3] = (count < 80) ? 1:0;

endmodule

