#include <neorv32.h>
#include "keypad.h"
#include "buttons.h"

uint32_t getKeyPress(uint32_t rows[], uint32_t cols[]) {
    uint32_t activeCol, state;

    if (neorv32_gpio_available() == 0) {
        return 1;
    }

    for (int i=0; i<numCol; i++) {
        neorv32_gpio_pin_set(cols[i]);

        for (int j=0; j<numRow; j++) {
            uint32_t state = getButtonState(rows[j]);
            if (state == 1) return (i*4 + j);
        }

        neorv32_gpio_pin_clr(cols[i]);
    }

    return 31;
};