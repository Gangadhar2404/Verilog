module fulladdertb ;
reg a,b,cin;
wire sum,carry;
fulladder DUT(a,b,cin,sum,carry);
initial begin
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
a=0;b=0;cin=0;
#5 a=0;b=0;cin=1;
#5 a=0;b=1;cin=0;
#5 a=0;b=1;cin=1;
#5 a=1;b=0;cin=0;
#5 a=1;b=0;cin=1;
#5 a=1;b=1;cin=0;
#5 a=1;b=1;cin=1;
#5 $finish;
end
endmodule