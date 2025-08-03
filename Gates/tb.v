module tb ;
reg a,b;
wire ag,og,ng,nrg,xg,xng;
allgates DUT (a,b,ag,og,ng,nrg,xg,xng);
initial
begin
$monitor($time,"a=%b,b=%b,ag=%b,og=%b,ng=%b,nrg=%b,xg=%b,xng=%b",a,b,ag,og,ng,nrg,xg,xng);
a=0;b=0;
#5 a=1;b=0;
#5 a=0;b=1;
#5 a=1;b=1;
#5 $finish;
end
endmodule