module arith (op1, op2, opsel, cin, couta, resulta);
input logic op1;
input logic op2;
input logic [2:0]opsel;
input logic cin;
output logic couta;
output logic resulta;

wire net1;
wire net2;

asel1 as1(.opsel(opsel[2:0]), .op2(op2), .out_op2(net1));
asel2 as2(.opsel(opsel[2:0]), .cin(cin), .out_cin(net2));

f_adder fa1(.a(op1), .b(net1), .c(net2), .S(resulta), .C1(couta));

endmodule   