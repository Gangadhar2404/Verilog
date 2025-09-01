`timescale 1ns/1ps

module tb_priority_encoder;

    reg [3:0] in;
    wire [1:0] out;
    wire valid;

    // Instantiate the priority encoder
    priority_encoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        // Display header
        $display("Time\tin\tout\tvalid");
        $monitor("%0t\t%b\t%b\t%b", $time, in, out, valid);

        // Test all possible input combinations
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;

        $finish;
    end

endmodule
