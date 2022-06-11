// #################################################################################################
// # << NEORV32 - PWM Demo Program >>                                                              #
// # ********************************************************************************************* #
// # BSD 3-Clause License                                                                          #
// #                                                                                               #
// # Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
// #                                                                                               #
// # Redistribution and use in source and binary forms, with or without modification, are          #
// # permitted provided that the following conditions are met:                                     #
// #                                                                                               #
// # 1. Redistributions of source code must retain the above copyright notice, this list of        #
// #    conditions and the following disclaimer.                                                   #
// #                                                                                               #
// # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
// #    conditions and the following disclaimer in the documentation and/or other materials        #
// #    provided with the distribution.                                                            #
// #                                                                                               #
// # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
// #    endorse or promote products derived from this software without specific prior written      #
// #    permission.                                                                                #
// #                                                                                               #
// # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
// # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
// # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
// # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
// # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
// # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
// # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
// # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
// # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
// # ********************************************************************************************* #
// # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
// #################################################################################################


/**********************************************************************//**
 * @file demo_pwm/main.c
 * @author Stephan Nolting
 * @brief Simple PWM usage example.
 **************************************************************************/

#include <neorv32.h>
#include "buttons.h"


/**********************************************************************//**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 19200
/** Maximum PWM output intensity (0..255) */
#define PWM_MAX 128
/**@}*/


/**********************************************************************//**
 * This program generates a simple dimming sequence for PWM channel 0,1,2.
 *
 * @note This program requires the PWM controller to be synthesized (the UART is optional).
 *
 * @return 0 if execution was successful
 **************************************************************************/
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

    // say hello
    neorv32_uart0_print("PWM in tipke demo program\n");
  }


  // deactivate all PWM channels
  neorv32_pwm_set(0, 0);
  neorv32_pwm_set(1, 0);

  // configure and enable PWM
  neorv32_pwm_setup(CLK_PRSC_64);


  uint8_t pwm1 = 0;
  uint8_t pwm2 = 0;
  uint8_t tipka1 = 0;
  uint8_t tipka2 = 0;

  // animate!
  while(1) {
  
    // update duty cycle
    tipka1 = getButtonPress(1);
    tipka2 = getButtonPress(2);

    if (tipka1 == 1) {
        pwm1 += 8;
        pwm2 += 8;
    }
  
    if (tipka2 == 1) {
        pwm2 += 8;
        pwm1 += 8;
    }

    // output new duty cycle
    neorv32_pwm_set(0, pwm1);
    neorv32_pwm_set(1, pwm2);

    neorv32_cpu_delay_ms(10); // wait ~10ms
  }

  return 0;
}
