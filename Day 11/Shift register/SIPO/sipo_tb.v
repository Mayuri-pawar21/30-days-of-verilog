`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 09:55:59
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb();
reg clk,serial_in,reset;
wire[3:0] parallel_out;

sipo dut(.clk(clk),.reset(reset),.serial_in(serial_in),.parallel_out(parallel_out));

always begin 
#5 clk=~clk;
end 
initial begin
    clk = 0;
    reset=0;
    serial_in = 0;
    
    $display("Time\tSerial_In\tParallel_Out");
    $monitor("%d\t%d\t%d", $time, serial_in, parallel_out);

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
