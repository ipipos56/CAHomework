module full_adder 
  (
   x,
   y,
   carry_in,
   z,
   carry_out
   );
	
  input  x;
  input  y;
  input  carry_in;
  output z;
  output carry_out;
  
  wire w1;
  wire w2;
  wire w3;
  
  assign w1 = x ^ y;
  assign w2 = w1 & carry_in;
  assign w3 = x & y;
  
  assign z   = w1 ^ carry_in;
  assign carry_out = w2 | w3;
  
endmodule
