module priority_encoder (
    input  [3:0] in,      // 4-bit input
    output [1:0] out,     // Encoded 2-bit output
    output       valid    // 1 if any input is high
);

    assign out = (in[3]) ? 2'b11 :
                 (in[2]) ? 2'b10 :
                 (in[1]) ? 2'b01 :
                 (in[0]) ? 2'b00 :
                           2'b00;  // Default if none are high

    assign valid = |in;  // valid = 1 if any input is high

endmodule
