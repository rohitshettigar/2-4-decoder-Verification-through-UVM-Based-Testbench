class agent ;

driver drv ;

monitor mon ;

generator gen ;

mailbox gen_to_drv ;

virtual deco_if dif ;

function new ( virtual deco_if dif , mailbox mon_to_sb );

gen_to_drv = new () ;

drv = new ( gen_to_drv , dif );

mon = new ( mon_to_sb , dif );

gen = new ( gen_to_drv ) ;

endfunction

task run () ;

fork

drv . run () ;

mon . run () ;

gen . run () ;

join_any

endtask

endclass
