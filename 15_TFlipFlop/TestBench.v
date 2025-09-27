module TFF_Tb;
reg clk,t;
wire q,qbar;
TFF dut(.t(t),.clk(clk),.q(q),.qbar(qbar));
always #5 clk=~clk;
initial begin 
clk=0;
t=0;
#10 t=1;
#10 $finish;
end
endmodule