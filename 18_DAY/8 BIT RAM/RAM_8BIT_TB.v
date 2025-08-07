`timescale 1ns / 1ps
module RAM_8BIT_TB();

    reg [7:0] address;
    reg write_enable;
    reg [7:0] write_data;
    reg read_enable;
    wire [7:0] read_data;

    RAM_8BIT dut ( .address(address), .write_enable(write_enable),
				 .write_data(write_data), .read_enable(read_enable), .read_data(read_data) );

    reg clock = 0;

    always #5 clock = ~clock; 

    initial begin
        address = 8'b0000_0000;
        write_enable = 0;
        write_data = 8'b0000_0000;
        read_enable = 0;

        write_enable = 1;
        address = 8'b0000_0111;
        write_data = 8'b1101_1010;
        #10;

        write_enable = 0;
        read_enable = 1;
        address = 8'b0000_0111;
        #10;

        if (read_data === 8'b1101_1010)
            $display("Test Passed: Read Data is Correct");
        else
            $display("Test Failed: Read Data is Incorrect");

        $finish;
    end

endmodule

