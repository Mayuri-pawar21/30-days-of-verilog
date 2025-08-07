`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 17:18:54
// Design Name: 
// Module Name: mux_2_to_1_tb
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


module mux_2_to_1_tb();
reg i0,i1;
reg sel;
wire out;
mux_2_to_1 dut(.i0(i0),.i1(i1),.sel(sel),.out(out));

initial begin
    i0 = 0;
    i1 = 1;
    sel = 0;
   
 $display("i0 = %b, i1 = %b, sel = %b, out = %b", i0, i1, sel, out);

	  sel = 0;
    #10;
    $display("i0 = %b, i1 = %b, sel = %b, out = %b", i0, i1, sel, out);

    sel = 1; 
    #10; 
    $display("i0 = %b, i1 = %b, sel = %b, out = %b", i0, i1, sel, out);

    $finish;
  end
endmodule
