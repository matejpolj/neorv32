#include <neorv32.h>
#include "led_matrix.h"

uint32_t displaySymbol(uint32_t data[cols][rows], uint16_t pins[rows]) {
    for (int i=0; i<cols; i++) {
        for (int j=0; j<rows; j++) {
            data[i][j] ? neorv32_gpio_pin_set(j) : neorv32_gpio_pin_clr(j); 
        }
    }
}