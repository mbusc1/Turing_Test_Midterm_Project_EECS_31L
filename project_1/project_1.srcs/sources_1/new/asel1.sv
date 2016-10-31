`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2016 05:43:29 PM
// Design Name: 
// Module Name: carrygen
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

// mode 1 101 pass carry in as 1 
module asel1(opsel, op2, out_op2);
    input logic op2;
    input logic [2:0]opsel;
    output logic out_op2;
 
 assign out_op2 = ((opsel==3'b000 && op2 == 1)? 1 :
 (opsel==3'b001 && op2 != 1)? 1'b1 : 
 (opsel==3'b010 && op2 == 1)? 1'b0 : 
 (opsel==3'b011 && op2 != 1)? 1'b1 : 
 (opsel==3'b100 && op2 == 1)? 1'b0 : 
 (opsel==3'b101 && op2 == 1 || op2 !=1)? 1'b1 :
 (opsel==3'b110 && op2 == 1)? 1'b1 : 1'b0);

 
endmodule
