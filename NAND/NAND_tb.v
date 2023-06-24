
module NAND_tb;
    reg e,f;
    wire g;
    nandgate u1 (.j(e), .k(f), .y(g));
    initial begin
        e=1'b0; f=1'b0;
        #10 e=1'b0; f=1'b1;
        #10 e=1'b1; f=1'b0;
        #10 e=1'b1; f=1'b1;
    end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, NAND_tb);
    end
endmodule