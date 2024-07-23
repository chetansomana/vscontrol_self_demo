class base_test;
  gpio1 = 1;
  wdog = 0;
  ldo1_volt = 5'b1_0010;

  pwm_seq pwm_period_seq;
  wdog_seq wdog_error_seq;

  pwm_period_seq.start(m_seqr);
  wdog_error_seq.start(m_seqr);


endclass
