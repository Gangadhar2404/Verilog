module upcounter_tb;
reg clk,rst;
wire [3:0]count;
downcounter dut(.clk(clk),.rst(rst),.count(count));
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
#10 rst=0;
#160;
rst=1;
#15 rst=0;
#50;
#10 $finish;
end
endmodule