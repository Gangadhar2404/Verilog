module allgates(a,b,ag,og,ng,nrg,xg,xng);
input a,b;
output ag,og,xg,xng,ng,nrg;
assign ag=a&b;
assign og=a|b;
assign xg=a^b;
assign xng=~(a^b);
assign ng=~(a&b);
assign nrg=~(a|b);
endmodule