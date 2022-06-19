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
#include "config.h"
#include "ext.h"


/**********************************************************************//**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 19200
/**@}*/


/**********************************************************************//**
 * This program generates a simple dimming sequence for PWM channel 0,1,2.
 *
 * @note This program requires the PWM controller to be synthesized (the UART is optional).
 *
 * @return 0 if execution was successful
 **************************************************************************/
int main() {

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
    neorv32_uart0_print("Razsiritvena ploscica demo!\n");
  }

  uint8_t number = 0;
  uint32_t cnt = 0;

  // animate!
  while(1) {
    number += getBut();
    number %= 16;
    uint8_t tmp = getButons();
    if ((number - tmp) < 16) {
      number -= tmp;
    } else {
      number = 0;
    }

    printNum(number);

    if (cnt%10 == 1) neorv32_uart0_printf("Trenutna vrednost: %x\n", number);
    cnt++;

    neorv32_cpu_delay_ms(100);

  }

  return 0;
}
