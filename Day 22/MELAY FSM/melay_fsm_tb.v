`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:23:25
// Design Name: 
// Module Name: melay_fsm_tb
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


module melay_fsm_tb();
 reg din;
    reg clk;
    reg rst;

    wire dout;

    melay_fsm_1010 dut ( .din(din), .clk(clk), .rst(rst), .dout(dout) );

    always begin
        #5 clk = ~clk;
    end

    initial begin

        din = 0;
        clk = 0;
        rst = 1;
        #10 rst = 0;

        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
			  din = 0; #10;
        din = 1; #10;

        $finish;
    end

    always @(posedge clk) begin
        $monitor("Time=%t, din=%b, dout=%b", $time, din, dout);
    end

endmodule

