module FStb;
reg a,b,cin;
wire d,br;
FS dut(.a(a),.b(b),.cin(cin),.d(d),.br(br));
initial begin
a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $finish;
end
endmodule