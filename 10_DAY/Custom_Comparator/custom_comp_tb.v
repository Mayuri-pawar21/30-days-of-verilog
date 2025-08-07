`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 20:58:00
// Design Name: 
// Module Name: custom_comp_tb
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


module custom_comp_tb();
 reg [3:0] a, b;
    wire equal, less_than, greater_than;

    custom_comp dut ( .input_a(a), .input_b(b), .equal_to(equal), .less_than(less_than), 
			.greater_than(greater_than) );

    reg clk;
    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        a = 4'b0000; 
        b = 4'b0000;
        #10;

        a = 4'b0101;
        b = 4'b0010;
        #10;

        a = 4'b0010;
        b = 4'b0110;
        #10;

        $finish;
    end

    always @(posedge clk) begin
        $display("a = %b, b = %b", a, b);
        $display("Equal: %b, Less Than: %b, Greater Than: %b", 
					equal, less_than, greater_than);
    end

endmodule


