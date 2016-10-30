module arith (op1, op2, opsel, cin, coutl, resulta);
input logic op1;
input logic op2;
input logic [2:0]opsel;
input logic cin;
output logic coutl;
output logic resulta;

assign resulta = ((opsel == 3'b000) ? op1 && op2 : resulta);
assign resulta = ((opsel == 3'b001) ? op1 || op2 : resulta);
assign resulta = ((opsel == 3'b010) ? op1 ^^ op2 : resulta);
assign resulta = ((opsel == 3'b011) ? -op1 :resulta);
assign resulta = ((opsel == 3'b101) ? cin : resulta);
assign coutl = ((opsel == 3'b101) ? op1 : 0);

endmodule   