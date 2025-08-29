
module mux8(i1,i2,i3,i4,i5,i6,i7,i8,s,y);
input i1,i2,i3,i4,i5,i6,i7,i8;
input [2:0]s;
output reg y;
always @(*)
begin 
if(s==3'b000)
y=i1;
else if(s==3'b001)
y=i2;
else if(s==3'b010)
y=i3;
else if(s==3'b011)
y=i4;
else if(s==3'b100)
y=i5;
else if(s==3'b101)
y=i6;
else if(s==3'b110)
y=i7;
else if(s==3'b111)
y=i8;
end
endmodule
