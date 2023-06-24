
module dff_tb();
  reg clk, d, k;
  dff t1(.clk(clk), .d(d), .k(k));
  initial begin
    clk=1'b0; d=1'b0;
    #40 $finish;
  end
  always #5 clk=~clk;
  always #3 d=~d;
  initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, dff_tb);
    end
endmodule