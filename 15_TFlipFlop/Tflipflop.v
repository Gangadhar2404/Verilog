module TFF(clk,t,q,qbar);
input clk,t;
output reg q;
output qbar;
initial q=0;
always @(posedge clk)
case(t)
1'b0:q<=q;
1'b1:q<=~q;
endcase
assign qbar=~q;
endmodule