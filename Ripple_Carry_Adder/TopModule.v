module RCA(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire w1,w2,w3;
adder b0(a[0],b[0],cin,sum[0],w1);
adder b1(a[1],b[1],w1,sum[1],w2);
adder b2(a[2],b[2],w2,sum[2],w3);
adder b3(a[3],b[3],w3,sum[3],cout);
endmodule
