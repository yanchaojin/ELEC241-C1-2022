
module task2 #(parameter N=16'b1010110011100001) (output logic [15:0] Q, input logic CLK, n_RESET);

 always_ff @(posedge CLK,negedge n_RESET) begin
    if(n_RESET == 1'b0)
        begin
            Q <= N; //reset for initial value
        end 
     else begin  //loop lsfr value
          Q[0]    <= Q[1];
          Q[1]    <= Q[2];
          Q[2]    <= Q[3];
          Q[3]    <= Q[4];
          Q[4]    <= Q[5];
          Q[5]    <= Q[6];
          Q[6]    <= Q[7];
          Q[7]    <= Q[8] ;
          Q[8]    <= Q[9];
          Q[9]    <= Q[10] ;
          Q[10]   <= Q[11]^Q[0] ; //xor operation
          Q[11]   <= Q[12];
          Q[12]   <= Q[13]^Q[0] ;//xor operation
          Q[13]   <= Q[14]^Q[0] ;//xor operation
          Q[14]   <= Q[15];
          Q[15]   <= Q[0];         
       end 
 end 
 


endmodule