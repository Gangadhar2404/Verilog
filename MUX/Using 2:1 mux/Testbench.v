module tb;
  reg [7:0]in;
  reg [2:0]sel;
  wire out;
  
  eightmux dut(.a(in),.select(sel),.y(out));
  
  initial begin
    in=8'b00000001;sel=3'b000;
    #10 sel=3'b001;
    #10 in=8'b00000010;sel=3'b001;
    #10 sel=3'b010;
    #10 in=8'b00000111;sel=3'b010;
    #10 sel=3'b011;
    
  end
  initial begin
    $monitor("in=%b sel = %b out=%b",in,sel,out);
  end
endmodule