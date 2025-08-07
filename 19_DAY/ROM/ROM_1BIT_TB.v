`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 13:54:13
// Design Name: 
// Module Name: ROM_1BIT_TB
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


module ROM_1BIT_TB();

    reg [1:0] addr;
    wire data;

    ROM_1BIT dut ( .addr(addr), .data(data) );

    initial begin

        addr = 2'b00;
        #10;

        addr = 2'b01;
        #10;

        if (data === 1'b1)
            $display("Test Passed: Read Data is Correct");
        else
            $display("Test Failed: Read Data is Incorrect");

        $finish;
    end

endmodule

