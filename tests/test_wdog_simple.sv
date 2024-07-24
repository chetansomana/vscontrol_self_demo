class wdog extends wdog_base;

  rand bit wdmode;
  constraint wdmode_simple { wdmode==0;};

  wdog_seq wdog_simple_seq;

  if(wdog_simple_seq.mode == 0 ) begin
    read(wdog_timer) = 5'b1_0110; //100us;
    read(fault_cnt) = 1'b0;
    write(timer) = 8'had;
  end
  

endclass
