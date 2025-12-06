module updowncounter_tb;
reg clk,rst,updown;
wire [3:0]count;
Updowncounter dut(.clk(clk),.rst(rst),.updown(updown),.count(count));
always #5 clk=~clk;
initial begin
clk=0;
rst=1; updown=1;
#10 rst=0;
#180;
rst=1;updown=0;
#15 rst=0;
#150;
#10 $finish;
end
endmodule
