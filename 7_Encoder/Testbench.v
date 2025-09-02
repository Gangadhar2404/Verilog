module encodertb;
reg [3:0]in;
wire [1:0]out;
encoder dut(.in(in),.out(out));
initial begin
in=4'b0001;
#10 in=4'b0010;
#10 in=4'b0010;
#10 in=4'b0100;
#10 in=4'b1000;
#10 in=4'b1010;
#10 in=4'b0110;
#10 $finish;
end
endmodule
