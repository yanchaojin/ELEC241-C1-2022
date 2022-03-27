// Task 3 - 2022
module task3 (output logic [2:0] Q,output logic VALID, input logic CLK, DATAIN,START);
logic [3:0] count;
logic [7:0] store;
   always_ff @(posedge CLK) begin
    if(START == 1'b1) begin   //reset for initial value
            VALID <= 0;
            Q     <= 0;
            count <= 0;
			store <= 8'b00000000;
        end 
     else begin 
         if(count <=  7)begin            //max input number is 8,count form 0 to 7
             count <= count + 1;         // count the input data number
			 store[count] <= DATAIN;     //buffer input data
		 end
         else
             count <= 7;  
             
         if(count <=  6)   begin
             if(DATAIN == 0) begin       //if detect the first 0
                 Q<= count;       
                 VALID <= 1;
             end
             else begin    
                 Q<= Q;
                 VALID <= VALID;
             end                   
         end
        else if(count == 7 && store == 8'b11111111)       //special situation,sequence is 11111111
            begin
                 Q<= 7;
                 VALID <= 1;			
            end			
		 
     end 
 end 

endmodule
