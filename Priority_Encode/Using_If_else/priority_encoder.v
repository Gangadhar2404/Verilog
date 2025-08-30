`timescale 1ns/1ps

module prencoder_if_tb;

    reg  [7:0] in;
    wire [2:0] out;

    // Instantiate IF-ELSE Encoder
    prencoder_if dut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("prencoder_if_tb.vcd");
        $dumpvars(0, prencoder_if_tb);

        // Apply test patterns
        in = 8'b00000000; #10;
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        in = 8'b10101010; #10;  // multiple active bits
        in = 8'b01110001; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);
    end

endmodule
