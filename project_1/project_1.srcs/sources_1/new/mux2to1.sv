`timescale 1ns / 1ps
module mux2to1(
    input logic a,
    input logic b,
    input logic sel,
    output logic O
    );
   assign O = ((~sel)&a)|(sel&b);
endmodule
