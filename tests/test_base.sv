class base_test;
  gpio1 = 1;
  wdog = 0;
  ldo1_volt = 5'b1_0010;
  sw1_voly = 5'b1_0101;

  $display("creating merge fault");
  $display("added new line");
  pwm_seq pwm_period_swp;
  wdog_seq wdog_error_seq;
  $display("merge fault");

  pwm_period_seq.start(m_seqr);
  wdog_error_seq.start(m_seqr);


endclass
