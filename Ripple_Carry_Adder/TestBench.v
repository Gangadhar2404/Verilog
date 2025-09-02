module RCAtb ;
reg [3:0]a,b;
reg cin;
wire cout;
wire [3:0]sum;
RCA DUT(a,b,cin,sum,cout);
initial 
begin
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
cin=0;a=4'b0101;b=4'b0101;
#10;a=4'b1111;b=4'b1111;
#10;a=4'b0000;b=4'b0000;cin=1;
#10;a=4'b1000;b=4'b1000;cin=1;
#5 $finish;
end
endmodule
