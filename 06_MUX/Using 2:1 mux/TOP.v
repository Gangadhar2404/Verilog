module eightmux(
  input [7:0]a,
  input [2:0]select,
  output y
);
  
  wire w1,w2,w3,w4,w5,w6;
  mux mux1(.in(a[1:0]),.sel(select[0]),.out(w1));
  mux mux2(.in(a[3:2]),.sel(select[0]),.out(w2));
  mux mux3(.in(a[5:4]),.sel(select[0]),.out(w3));         
  mux mux4(.in(a[7:6]),.sel(select[0]),.out(w4));
           
  mux mux5(.in({w2,w1}),.sel(select[1]),.out(w5));
  mux mux6(.in({w4,w3}),.sel(select[1]),.out(w6));  
           
  mux mux7(.in({w6,w5}),.sel(select[2]),.out(y));
           
  endmodule