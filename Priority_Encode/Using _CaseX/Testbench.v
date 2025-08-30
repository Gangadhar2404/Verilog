module prencodertb;
reg [7:0]in;
wire [2:0]out;
prencoder dut(.in(in),.out(out));
initial begin
in=8'b00000001;
#10 in=8'b00000010;
#10 in=8'b00000110;
#10 in=8'b00001110;
#10 in=8'b00010010;
#10 in=8'b00101010;
#10 in=8'b01001010;
#10 in=8'b10000010;
#10 $finish;
end
endmodule