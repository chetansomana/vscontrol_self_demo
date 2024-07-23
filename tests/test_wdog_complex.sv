class wdog extends wdog_base;

  rand bit wdmode;
  constraint wdmode_complex { wdmode==1;};

  wdog_seq wdog_complex_seq;

  if(wdog_simple_seq.mode == 1 ) begin
    read(wdog_timer) = 5'b1_0000; //50us;
    read(fault_cnt) = 1'b0;
  end

  start(wdog_complex_seq.m_seqr);
  read(status_i) == 1'b0;
  
  

endclass
