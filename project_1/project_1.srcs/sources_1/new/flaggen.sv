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
    assign Z_flag = ((result[127:0] == 0)? Z_flag == 1 : Z_flag == 0); 
    assign S_flag = ((result[127] == 0)? S_flag == 1 : S_flag == 0);
    assign O_flag = ((mode == 0 && result[127] == 1 && op1[127] == 0 && op2[127]== 0)? O_flag == 1 : O_flag == 0);
    assign O_flag = ((mode == 0 && result[127] == 0 && op1[127] == 1 && op2[127]== 1)? O_flag == 1 : O_flag == 0);

endmodule
