`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCI-EECS 31L
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: alu_1bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_1bit ( cout, result, op1 , op2 , cin, opsel , mode , resulta, resultl , couta, coutl);

    input  logic        op1 ;
    input  logic        op2 ;
    input  logic        cin ;
    input  logic [ 2:0] opsel ;
    input  logic        mode ;
    output logic        resulta ;
    output logic        resultl ;
    output logic        couta ;
    output logic        coutl ;
    output logic        result;
    output logic        cout;
    
arith(.op1(op1), .op2(op2), .opsel(opsel[2:0]), .cin(cin), .couta(couta), .resulta(resulta));
log(.op1(op1), .op2(op2), .opsel(opsel[2:0]), .cin(cin), .coutl(coutl), .resultl(resultl));
mux2to1 arith(
        .a(resultl),
        .b(resulta),
        .sel(mode),
        .O(result)
    );
 mux2to1 l1(
            .a(couta),
            .b(coutl),
            .sel(mode),
            .O(cout)
        );
endmodule