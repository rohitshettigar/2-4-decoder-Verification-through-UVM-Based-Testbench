module decoder ( input clk , reset , input [1:0] x , output reg
[3:0] y);
always @( posedge clk , posedge reset ) begin
if ( reset )
    y <=0;
else
begin
case (x)
3’ b11 :y <=4 ’ b1000 ;
3’ b10 :y <=4 ’ b0100 ;
3’ b01 :y <=4 ’ b0010 ;
3’ b00 :y <=4 ’ b0001 ;
default :y <=0;
endcase
end
end
endmodule
