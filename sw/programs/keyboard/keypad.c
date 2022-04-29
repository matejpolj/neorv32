#include <neorv32.h>
#include "keypad.h"
#include "buttons.h"

uint16_t getKeyPress(uint16_t rows[], uint16_t cols[]) {
    uint32_t state;

    if (neorv32_gpio_available() == 0) {
        return 1;
    }

    for (int i=3; i>(-1); i--) {
        neorv32_gpio_pin_set(cols[i]);
        //neorv32_cpu_delay_ms(500);
        //neorv32_uart0_printf("rewr: %i\n", cols[i]);
        for (int j=0; j<4; j++) {
            state = getButtonState(rows[j]);
            //neorv32_uart0_printf("rtzrtrt: %i\n", state);
            if (state == 0) {
                neorv32_gpio_pin_clr(cols[i]);
                return (i*4 + j);
            }
        }

        neorv32_gpio_pin_clr(cols[i]);
        //neorv32_cpu_delay_ms(500);
    }

    return 31;
};