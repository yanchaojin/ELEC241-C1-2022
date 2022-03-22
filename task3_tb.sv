module task3_tb;

logic [2:0] Q;
logic  VALID;
logic DATAIN,CLK, START;
task3 u1(Q,VALID,CLK,DATAIN,START);
initial begin
DATAIN = 1;
CLK = 0;
START = 1;
#110; START = 0; 
     DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 0;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;

#1000; START = 1;
#100; START = 0;  
     DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 0;
#20  DATAIN = 1;
#20  DATAIN = 0;

#1000; START = 1;
#100; START = 0;  
     DATAIN = 0;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;

#1000; START = 1;
#100; START = 0;  
     DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
#20  DATAIN = 1;
end
always #10 CLK = ~CLK; 

endmodule
