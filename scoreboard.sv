class scoreboard ;

int compare_cnt =0;

int i ;

mailbox mon_to_sb ;

function new ( mailbox mon_to_sb ) ;

this . mon_to_sb = mon_to_sb ;

endfunction

task run ;

forever begin

transaction tr ;

tr = new () ;

mon_to_sb . get ( tr );

case ( tr . in )

3’ b11 : if ( tr . out ==4 ’ b1000 )

$display (" Matched ␣:␣ input =% b␣ output =% b" ,tr .in , tr . out );

else

$display (" Notmatched ␣: ␣ input =% b␣ output =% b" ,tr .in , tr .

out ) ;

3’ b10 : if ( tr . out ==4 ’ b0100 )

$display (" Matched ␣:␣ input =% b␣ output =% b" ,tr .in , tr . out );

else

$display (" Notmatched ␣: ␣ input =% b␣ output =% b" ,tr .in , tr .

out ) ;

3’ b01 : if ( tr . out ==4 ’ b0010 )

$display (" Matched ␣:␣ input =% b␣ output =% b" ,tr .in , tr . out );

else

$display (" Notmatched ␣: ␣ input =% b␣ output =% b" ,tr .in , tr .

out ) ;

3’ b00 : if ( tr . out ==4 ’ b0001 )

$display (" Matched ␣:␣ input =% b␣ output =% b" ,tr .in , tr . out );

else

$display (" Notmatched ␣: ␣ input =% b␣ output =% b" ,tr .in , tr .

out ) ;

endcase

compare_cnt ++;

end
