module ripple_carry
  (
   input [15:0] in1,
   input [15:0] in2,
   output [15:0] out,
	output [1:0] overflow_bit
   );
   
  wire [16:0] w;
  wire [15:0] sum;
  
  assign w[0] = 1'b0;
  
  genvar i;
  generate 
    for (i=0; i<16; i=i+1) 
      begin: adder
		full_adder full_adder_inst
            (
              .x(in1[i]),
              .y(in2[i]),
              .carry_in(w[i]),
              .z(sum[i]),
              .carry_out(w[i+1])
              );
      end
  endgenerate
  
  assign overflow_bit = w[16];
  assign out = sum;
  
endmodule
