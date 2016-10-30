module flaggen(mode, op1, op2, carry, result, C_flag, Z_flag, S_flag, O_flag);
    input mode; 
    input op1[127:0]; 
    input op2[127:0];
    input carry;
    input result[127:0];
    output logic C_flag;
    output logic Z_flag; 
    output logic S_flag;
    output logic O_flag; 

    //Code Starts Here
    assign C_flag = carry;
    assign Z_flag = ((result[127:0] == 0)? 1 : 0); 
    assign S_flag = ((result[127] == 0)? 1 : 0);
    assign O_flag = ((mode == 0 && result[127] == 1 && op1[127] == 0 && op2[127]== 0)? 1 : 0);
    assign O_flag = ((mode == 0 && result[127] == 0 && op1[127] == 1 && op2[127]== 1)? 1 : 0);

endmodule

