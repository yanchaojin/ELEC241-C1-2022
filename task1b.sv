//Dataflow or behavioural only

/*
A	B	C	Y
0	0	0	00
0	0	1	01
0	1	0	01
0	1	1	10
1	0	0	01
1	0	1	10
1	1	0	10
1	1	1	11
*/

module task1b(output logic [1:0] Y, input logic A, B, C);

always_comb
if((A==0 && B==0 && C == 1) || (A==0 && B==1 && C == 0) || (A==1 && B==0 && C == 0) || (A==1 && B==1 && C == 1))
   Y[0] = 1;         //Y0 =  A'B'C + A'BC' + AB'C' + ABC 
else
   Y[0] = 0;
   
always_comb
if((A==0 && B==1 && C == 1) || (A==1 && B==0 && C == 1) || (A==1 && B==1 && C == 0) || (A==1 && B==1 && C == 1))
   Y[1] = 1;          //Y[1] = A'BC  + AB'C  + ABC'  + ABC 
else
   Y[1] = 0;
   
   endmodule

