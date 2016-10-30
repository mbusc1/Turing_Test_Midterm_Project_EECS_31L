module log (op1, op2, opsel, cin, coutl, resultl);
parameter DWIDTH = 128;
input logic [DWIDTH-1:0]op1;
input logic [DWIDTH-1:0]op2;
input logic [2:0]opsel;
input logic cin;
output logic coutl;
output logic resultl;

assign resultl = ((opsel == 3'b000) ? op1[DWIDTH-1] && op2[DWIDTH-1]:resultl);
assign resultl = ((opsel == 3'b001) ? op1[DWIDTH-1] || op2[DWIDTH-1]:resultl);
assign resultl = ((opsel == 3'b010) ? op1[DWIDTH-1] ^^ op2[DWIDTH-1]:resultl);
assign resultl = ((opsel == 3'b011) ? -op1[DWIDTH-1] :resultl);
assign resultl = ((opsel == 3'b101) ? cin : resultl);
assign coutl = ((opsel == 3'b101) ? op1[DWIDTH-1]:0);

endmodule