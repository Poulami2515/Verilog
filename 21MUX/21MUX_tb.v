

module mux21_tb;
    reg  i0, i1, sel; 
    wire y;
    mux21 t1(.i0(i0), .i1(i1), .sel(sel), .y(y));     
    initial
        begin
            i0=1'b0; i1=1'b0; sel=1'b0;
            #40 $finish;
        end
    always #20 i0=~i0;
    always #10 i1=~i1;
    always #5 sel=~sel;
    initial
        $monitor("Simulation time:%t, I0:%b, I1:%b, sel:%b, Y:%d", $time,i0,i1,sel,y);
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, mux21_tb);
    end
endmodule