module mux_21(
    input logic a,
    input logic b,
    input logic sel,
    output logic O
    );
   assign O = ((~sel)&a)|(sel&b);
endmodule
