class instr extends instr_base;


  pwm_seq pwm_gpio_seq;
  wdog_seq wdog_simple_seq;
  pwr_seq pwr_up_seq;

  pwm_gpio_seq.randomize() with { val = 0;};
  wdog_simple_seq.randomize() with { mode = 0;};
   
  $display("substituded pwm with pwr");
  fork
    pwr_up_seq.start(m_seqr);
    wdog_simple_seq.start(m_seqr);
  join_any


endclass
