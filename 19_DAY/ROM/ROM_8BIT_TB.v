`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 14:05:01
// Design Name: 
// Module Name: ROM_8BIT_TB
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


module ROM_8BIT_TB();
 reg [2:0] address; 
    wire [7:0] data; 

    ROM_8BIT dut ( .addr(address), .data(data) );

    initial begin

        address = 3'b000;
        #10;

        address = 3'b010;  
        #10;

        if (data === 8'b01010101)
            $display("Test Passed: Read Data is Correct");
        else
            $display("Test Failed: Read Data is Incorrect");

        $finish;
    end
endmodule
