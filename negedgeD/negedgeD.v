
module dff(input clk, d, output reg k);
  always @ (negedge clk)
    begin
      k<=d;
    end
endmodule