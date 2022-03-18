module task1_tb;

//Use these for the inputs.
logic a,b,c;

//Use these two signals for the outputs
logic [1:0] y_structural, y_other;

// Instantiate both UUT
task1a u1 (y_structural, a, b, c);
task1b u2 (y_other, a, b, c);

initial
begin

a = 0; b=0; c=0;
#50; 
assert (y_structural == 2'b00) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other ==  2'b00) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 0; b=0; c=1;
#50
assert (y_structural == 2'b01) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b01)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 0; b=1; c=0;
#50
assert (y_structural == 2'b01)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b01) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 0; b=1; c=1;
#50
assert (y_structural == 2'b10) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b10)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 1; b=0; c=0;
#50
assert (y_structural == 2'b01)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b01) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 1; b=0; c=1;
#50
assert (y_structural == 2'b10)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b10)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 1; b=1; c=0;
#50
assert (y_structural == 2'b10) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b10) $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);

a = 1; b=1; c=1;
#50
assert (y_structural == 2'b11)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
assert (y_other == 2'b11)  $display( "passed %d %d %d",a,b,c); else $error("failed %d %d %d",a,b,c);
#50;


end

endmodule

