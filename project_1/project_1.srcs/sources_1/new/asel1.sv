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
    input logic opsel;
    output logic out_op2;

 
 assign out_op2 = ((opsel==3'b000)? out_op2 : out_op2);
 assign out_op2 = ((opsel==3'b001)? (!op2) : out_op2);
 assign out_op2 = ((opsel==3'b010)? 0 : out_op2);
 assign out_op2 = ((opsel==3'b011)? (!op2) : out_op2);
 assign out_op2 = ((opsel==3'b100)? 0 : out_op2);
 assign out_op2 = ((opsel==3'b101)? 1 : out_op2);
 assign out_op2 = ((opsel==3'b110)? out_op2 : out_op2);

 
endmodule
