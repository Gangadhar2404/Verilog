module SRFF_tb;
reg s,r,clk;
wire q,qbar;
SRFF dut(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
always #5 clk=~clk;
initial begin 
clk=0;
s=1;r=0;
#10 s=0;r=0;
#10 s=0;r=1;
#10 s=0;r=0;
#10 s=1;r=1;
#10 $finish;
end
endmodule