module adder_tb;
  reg [3:0] op1, op2;
  wire [3:0] sum;
  wire cout;
  adder a1(.op1(op1), .op2(op2), .cout(cout), .sum(sum));
  initial begin
    op1=4'b1000; op2=4'b1010;
  end
  initial
    $monitor("Simulation time:%t, op1:%b, op2:%b, sum:%b, cout:%d", $time,op1,op2,sum,cout);
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0, adder_tb);
   end
endmodule