`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:27:12
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb( );
reg [3:0] in;
wire [1:0] out;

encoder_4_2 dut(.in(in), .out(out) );

initial begin
    $monitor("in = %b, out = %b", in, out); 
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    in = 4'b1111; #10;    
end
      
endmodule
