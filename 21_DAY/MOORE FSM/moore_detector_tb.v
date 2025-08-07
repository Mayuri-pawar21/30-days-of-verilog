`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:09:55
// Design Name: 
// Module Name: moore_detector_tb
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


module moore_detector_tb();

reg Din, Clock, Reset;
wire Y;
moore_detector dut( .Din(Din), .Clock(Clock), .Reset(Reset), .Y(Y) );

always #5 Clock = ~Clock; 

initial begin
  Clock = 0;
  Reset = 1; 
  #10 Reset = 0;
  
  // Input sequence
  Din = 1; #10
  Din = 0; #10
  Din = 1; #10
  Din = 1; #10
  Din = 0; #10
  Din = 1; #10
  
  #100
  $finish;
end

initial begin
  $monitor("Time=%0t Din=%b State=%b Y=%b", $time, Din, dut.state, Y);
end
      
endmodule

