class generator ;

int count , i;

mailbox gen_to_drv ;

transaction tr ;

function new ( mailbox gen_to_drv );

this . gen_to_drv = gen_to_drv ;

endfunction

task run ;

for ( i =0; i < count +4; i =i +1)

begin

tr = new () ;

{ tr . in }= i ;

gen_to_drv . put ( tr );

end

endtask

endclass
