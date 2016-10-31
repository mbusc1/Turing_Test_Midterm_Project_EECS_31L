`timescale 1ns / 1ps
module log (op1, op2, opsel, cin, coutl, resultl);
input logic op1;
input logic op2;
input logic [2:0]opsel;
input logic cin;
output logic coutl;
output logic resultl;

assign resultl = ((opsel == 3'b000) ? op1 && op2:
(opsel == 3'b001) ? op1 || op2:
 (opsel == 3'b010) ? op1 ^^ op2:
  (opsel == 3'b011) ? -op1 :
  (opsel == 3'b101) ? cin : 
 (opsel == 3'b101) ? op1:0);

endmodule