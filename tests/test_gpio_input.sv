class gpio extends gpio_base;

  rand bit gpio;
  constraint gpio_in { gpio==1;};

  pwm_seq pwm_gpio_seq;

  if(pwm_gpio_seq.val == 0 ) begin
    read(ldo1_reg_val) = 4'b1011; //2.5v
    read(buck_reg_val) = 4'b1111; //3.1v
  end
  else begin
    read(ldo1_reg_val) = 4'b0101; //1.3v
    read(ldo2_reg_val) = 4'b0011; //0.9v
    read(sw1_reg_val) = 5'b1_0001;
  end

endclass
