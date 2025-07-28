‘include " interface . sv "
‘include " base_test . sv "
 module top_tb ;

bit clk ;

bit reset ;

// bit en ;

// bit [1:0] in ;

// bit [3:0] out ;

// integer i ;

always #2 clk =~ clk ;

deco_if dif ( clk , reset ) ;

decoder dec (. clk ( dif . clk ) ,. reset ( dif . reset ) ,.x( dif . in ) ,.y ( dif .

out ) );

base_test t1 ( dif );

initial begin

clk =0;

reset =1;

#20;

reset =0;

end

initial begin

// dump waves

$dumpfile ( " dump . vcd " );

$dumpvars (3) ;

end

endmodule

/* initial begin

reset =0;

for ( i =0; i <8; i= i +1)

begin

{en , in }= i ;

#4; $display (" %b % b % b" , clk ,{ en , in }, out );

end

$finish ;

end

endmodule
