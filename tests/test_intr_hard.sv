class instr extends instr_base;


  pwm_seq pwm_gpio_seq;
  wdog_seq wdog_simple_seq;

  pwm_gpio_seq.randomize() with { val = 0;};
  wdog_simple_seq.randomize() with { mode = 0;};
    
  fork
    pwm_gpio_seq.start(m_seqr);
    wdog_simple_seq.start(m_seqr);
  join_any


endclass
