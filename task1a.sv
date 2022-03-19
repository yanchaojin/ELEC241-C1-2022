// ELEC241 C1 2022
//Structural Version

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

module task1a(output logic [1:0] Y, input logic A, B, C);


//internal node
// function Y[0] = A'B'C + A'BC' + AB'C' + ABC 
// function Y[0] = A'BC  + AB'C  + ABC'  + ABC 
wire a1;
wire a2;
wire a3;
wire a4;

wire b1;
wire b2;
wire b3;
wire b4;
wire notA;
wire notB;
wire notC;
not a_no (notA, A);//A'
not b_no (notB, B);//B'
not c_no (notC, C);//C'
and y0and1 (a1 ,notA,notB ,C   );//  a1=  A'B'C
and y0and2 (a2 ,notA,B,    notC );// a2 = A'BC'
and y0and3 (a3 ,A,   notB, notC);//  a3 = AB'C'
and y0and4 (a4 ,A,   B,    C);//       Y0 = a1+ a2 + a3 + a4
or  Y0   (Y[0],a1,a2,a3,a4);

and y1and1 (b1 ,notA,B ,   C   );//    b1 = A'BC
and y1and2 (b2 ,A,   notB, C   );//    b2 = AB'C  
and y1and3 (b3 ,A,   B,    notC);//    b3 = ABC'
and y1and4 (b4 ,A,   B,    C);//       b4 = ABC 
or  Y1   (Y[1],b1,b2,b3,b4);//         Y1 = b1+ b2 + b3 + b4


endmodule
