#include <neorv32.h>
#include "buttons.h" // knjižnica s funkcijami za tipke
#include "config.h" // knjižnica z GPIO konfiguracijo

/** UART BAUD rate */
#define BAUD_RATE 19200
/** Maximum PWM output intensity (0..255) */
#define PWM_MAX 128
/**@}*/

int main() {

  // check if PWM unit is implemented at all
  if (neorv32_pwm_available() == 0) {
    return 1;
  }

  if (neorv32_gpio_available() == 0) {
    return 1;
  }

  // capture all exceptions and give debug info via UART
  // this is not required, but keeps us safe
  neorv32_rte_setup();

  // use UART0 if implemented
  if (neorv32_uart0_available()) {
    // init UART at default baud rate, no parity bits, ho hw flow control
    neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

    // check available hardware extensions and compare with compiler flags
    neorv32_rte_check_isa(0); // silent = 0 -> show message if isa mismatch


    neorv32_uart0_print("PWM in tipke demo program\n");
  }


  // deactivate all PWM channels
  neorv32_pwm_set(pwm1, 0);
  neorv32_pwm_set(pwm2, 0);

  // configure and enable PWM
  neorv32_pwm_setup(CLK_PRSC_64);


  uint8_t pwm1_ = 0;
  uint8_t pwm2_ = 0;
  uint8_t tipka1 = 0;
  uint8_t tipka2 = 0;

  // animate!
  while(1) {
  
    // update duty cycle
    tipka1 = getButtonState(but1);
    tipka2 = getButtonState(but2);

    if (tipka1) {
        pwm1_ += 8;
        pwm2_ -= 8;
    }
  
    if (tipka2) {
        pwm2_ += 8;
        pwm1_ -= 8;
    }

    // output new duty cycle
    neorv32_pwm_set(pwm1, pwm1_);
    neorv32_pwm_set(pwm2, pwm2_);

    neorv32_cpu_delay_ms(10); // wait ~10ms
  }

  return 0;
}
