module tb;
reg a,b,c,d;
reg [1:0]sel;
wire out;
gates dut(.a(a),.b(b),.sel(sel),.out(out),.c(c),.d(d));
initial begin
a=0;b=1;sel=2'b01;c=0;d=0;
#10 a=0;b=1;sel=2'b00;
#10 a=0;b=1;sel=2'b10;c=1;d=0;
#10 a=0;b=1;sel=2'b11;c=1;d=1;
#10 a=0;b=0;sel=2'b01;
#10 a=1;b=0;sel=2'b10;
#10 $finish;
end

endmodule