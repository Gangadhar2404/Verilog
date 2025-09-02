module HS_tb;
reg a,b;
wire d,br;
HS dut (.a(a),.b(b),.d(d),.br(br));
initial begin 
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end
endmodule