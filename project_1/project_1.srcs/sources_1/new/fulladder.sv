`timescale 1ns / 1ps
module f_adder(
    input logic a,
    input logic b,
    input logic c,
    output logic S,
    output logic C1
    );
    assign S = (c^(a^b));
    assign C1 = (a&b)|((a^b)&c);
endmodule
