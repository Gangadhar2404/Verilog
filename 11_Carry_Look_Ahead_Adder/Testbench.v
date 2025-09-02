module  CLA_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
CLA dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin 
a=4'b0000;b=4'b0000;cin=0;
#10 a=4'b0000;b=4'b0000;cin=1;
#10 a=4'b0011;b=4'b0000;cin=1;
#10 a=4'b0000;b=4'b0011;cin=0;
#10 a=4'b0011;b=4'b0011;cin=1;
#10 a=4'b0011;b=4'b0011;cin=0;
#10 $finish;
end
endmodule