class monitor ;

virtual deco_if dif ;

mailbox mon_to_sb ;

function new ( mailbox mon_to_sb , virtual deco_if dif );

this . dif = dif ;

this . mon_to_sb = mon_to_sb ;

endfunction

task run ;

forever begin

transaction mon_tr ;

wait (! dif . reset );

@( posedge dif . clk );

mon_tr = new () ;

mon_tr . in = dif . in ;

// mon_tr . en = dif . en ;

@( posedge dif . clk );

mon_tr . out = dif . out ;

mon_to_sb . put ( mon_tr );

end

endtask

endclassclass monitor ;
