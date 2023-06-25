
module FA(input a, b, cin, output sum, carry);
  assign{carry,sum}=a+b;
endmodule

module adder(input[3:0] op1, op2, output cout, output[3:0] sum);
  wire carry[4:0];
  assign carry[0]=1'b0;
  assign cout=carry[4];
  genvar i;
  generate for(i=0; i<4; i++)
    begin : ripple
      FA fa(op1[i], op2[i], carry[i], sum[i], carry[i+1]);
    end
  endgenerate
endmodule