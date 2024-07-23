class gpio extends gpio_base;

  rand bit gpio;
  constraint gpio_out { gpio==0;};

  pwm_seq pwm_gpio_seq;

  if(pwm_gpio_seq.val == 0 ) begin
    read(gpio_s) = 1'b0;
  end
  else
    read(gpio_s) = 1'b1;

endclass
