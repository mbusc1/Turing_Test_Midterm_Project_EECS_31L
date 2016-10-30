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


module alu_1bit ( op1 , op2 , cin, opsel , mode , result , c_flag , z_flag , o_flag , s_flag );

    input  logic        op1 ;
    input  logic        op2 ;
    input  logic        cin ;
    input  logic [ 2:0] opsel ;
    input  logic        mode ;
    output logic        result ;
    output logic        c_flag ;
    output logic        z_flag ;
    output logic        o_flag ;
    output logic        s_flag ;



endmodule ;