`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:16:12
// Design Name: 
// Module Name: demux_1_8_tb
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


module demux_1_8_tb( );
  reg in;
  reg [2:0] sel;
  wire [7:0] out;

  demux_1_8 uut (.in(in), .sel(sel), .out(out));

  initial begin
   
    in = 1'b1; // Input is always 1 (for clarity)
    sel=3'b000;
    $monitor("Time=%0t | sel=%b | in=%b | out=%b", $time, sel, in, out);
    sel = 3'b000; #10;  // out = 00000001
    sel = 3'b001; #10;  // out = 00000010
    sel = 3'b010; #10;  // out = 00000100
    sel = 3'b011; #10;  // out = 00001000
    sel = 3'b100; #10;  // out = 00010000
    sel = 3'b101; #10;  // out = 00100000
    sel = 3'b110; #10;  // out = 01000000
    sel = 3'b111; #10;  // out = 10000000
    $finish;
  end
endmodule

