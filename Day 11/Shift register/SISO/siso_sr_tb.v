`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 09:34:57
// Design Name: 
// Module Name: siso_sr_tb
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


module siso_sr_tb();
reg clk,serial_in;
wire serial_out;

siso_sr dut(.clk(clk),.serial_in(serial_in),.serial_out(seiral_out));

always begin
    #5 clk = ~clk;
  end

  initial begin
    clk = 0;
    serial_in = 0;

    $display("Time\tSerial_In\tSerial_Out");
    $monitor("%d\t%d\t%d", $time, serial_in, serial_out);

    serial_in = 1;
    #10;
    serial_in = 0;
    #10;
    serial_in = 1;
    #10;
    serial_in = 0;
    #10;

    $finish;
  end


endmodule
