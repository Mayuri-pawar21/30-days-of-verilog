`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 17:18:53
// Design Name: 
// Module Name: RAM_1BIT_TB
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


module RAM_1BIT_TB();
reg write_enable;
    reg write_data;
    reg read_enable;
    wire read_data;

    RAM_1BIT uut ( .write_enable(write_enable), .write_data(write_data),
     .read_enable(read_enable), .read_data(read_data) );

    reg clock = 0;

    always #5 clock = ~clock; 

    initial begin

        write_enable = 0;
        write_data = 0;
        read_enable = 0;

        write_enable = 1; write_data = 1; #10;

        write_enable = 0;  read_enable = 1; #10; 

        if (read_data === 1)
            $display("Test Passed: Read Data is Correct");
        else
            $display("Test Failed: Read Data is Incorrect");

        $finish;
    end

endmodule

