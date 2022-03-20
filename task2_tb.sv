module task2_tb;

logic [15:0] Q;
logic CLK, n_RESET;
logic [15:0] check_num = 0;
task2 u1(Q,CLK,n_RESET);
initial begin
//check_num = 0;
CLK = 0;
n_RESET = 0;
#50;
n_RESET = 1;
#20
assert (Q == 57968) $display( "passed "); else $error("failed");
#20
assert (Q == 28984) $display( "passed "); else $error("failed");
#20
assert (Q == 14492) $display( "passed "); else $error("failed");

# (20*65533);
assert (Q == 57968) $display( "passed "); else $error("failed");
#20
assert (Q == 28984) $display( "passed "); else $error("failed");
#20
assert (Q == 14492) $display( "passed "); else $error("failed");
end

always #10 CLK = ~CLK; 

always_ff @ (posedge CLK)
check_num <= check_num + 1;


endmodule
