`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 14:31:14
// Design Name: 
// Module Name: decodr_3_8_tb
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


module decodr_3_8_tb();
reg [2:0] in;
    wire [7:0] out;
    
    decoder_3_8 dut ( .in(in), .out(out) );

    initial begin
        in = 3'b000; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b001; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b010; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b011; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b100; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b101; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b110; #10;
        $display("Input = %b, Output = %b", in, out);
        in = 3'b111; #10;
        $display("Input = %b, Output = %b", in, out);
        
        $finish;
    end
endmodule
