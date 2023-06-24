
module dff(input clk, d, output reg k);
  always @ (posedge clk)
    begin
      k<=d;
    end
endmodule