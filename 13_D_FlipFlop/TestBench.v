module dflipfloptb;
reg clk,d;
wire q,qbar;
dflipflop dut(.d(d),.clk(clk),.q(q),.qbar(qbar));
always #5 clk=~clk;
initial begin
clk=0;
d=0;
#10 d=1;
#10
#10 $finish;
end
endmodule