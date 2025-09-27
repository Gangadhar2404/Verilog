module JKFF_TB;
reg clk,j,k;
wire q,qbar;
JKFF dut(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));
always #5 clk=~clk;
initial begin
clk=0;
j=0;k=1;
#10 j=0;k=0;
#10 j=1;k=0;
#10 j=1;k=1;
#10 $finish;
end
endmodule