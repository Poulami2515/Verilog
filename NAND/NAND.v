module andgate(input a,b, output c);
    and(c,a,b);
endmodule

module inv(input a, output c);
    not(c,a);
endmodule

module nandgate(input j,k, output y);
    wire v;
    andgate t1(.a(j), .b(k), .c(v));
    inv t2(.a(v), .c(y));
endmodule
    