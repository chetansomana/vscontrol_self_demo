class gpio extends gpio_base;

  rand bit gpio;
  constraint gpio_in { gpio==1;};

  pwm_seq pwm_gpio_seq;

  if(pwm_gpio_seq.val == 0 ) begin
    read(ldo1_reg_val) = 4'b1011; //2.5v
    read(ldo2_reg_val) = 4'b1110; //3v
    read(buck_reg_val) = 4'b1111; //3.1v
  end
  else begin
    read(ldo1_reg_val) = 4'b0101; //1.3v
    read(ldo2_reg_val) = 4'b0010; //0.7v
  end

endclass
