module mux8(i1,i2,i3,i4,i5,i6,i7,i8,s,y);
input i1,i2,i3,i4,i5,i6,i7,i8;
input [2:0]s;
output reg y;
always @ (*)
begin
case (s)
3'b000:y=i1;
3'b001:y=i2;
3'b010:y=i3;
3'b011:y=i4;
3'b100:y=i5;
3'b101:y=i6;
3'b110:y=i7;
3'b111:y=i8;
endcase
end
endmodule
