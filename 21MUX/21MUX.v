module mux21 (input i0, i1, sel, output y);
    assign y=sel?i1:i0;
endmodule
