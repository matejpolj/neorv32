#include <neorv32.h>
#include "led_matrix.h"

void displaySymbol(uint8_t data[rows][cols], uint8_t pins[cols + 3]) {
    for (int i=0; i<rows; i++) {
        uint8_t izbir = ~i;
        // za izbiro vrstice
        for (uint8_t j=0; j<3; j++) {
            ((izbir & (1<<j))>>j) ? neorv32_gpio_pin_set(pins[2 - j]) : neorv32_gpio_pin_clr(pins[2 - j]);
            //neorv32_uart0_printf("%x: %x, ", ((izbir & (1<<j))>>j), pins[2 - j]);
        }
        // za izbiro stolpca
        for (uint8_t j=0; j<cols; j++) {
            data[i][j] ? neorv32_gpio_pin_set(pins[j + 3]) : neorv32_gpio_pin_clr(pins[j + 3]);
            if (data[i][j]) {
                neorv32_gpio_pin_clr(pins[j + 3]);
             } else {
                neorv32_gpio_pin_set(pins[j + 3]);
             }
        }
        //neorv32_uart0_printf("\n");
    }

    /*for (uint8_t i=0; i<rows; i++) {
        uint8_t izbir = ~i;
        uint32_t buffer = 0;
        // za izbiro vrstice
        uint32_t tmp = (izbir & 7) << 5;
        // za izbiro stolpca
        for (uint8_t j=0; j<cols; j++) {
            tmp |= (data[j][i] << (4-j));
        }
        buffer = (tmp | (1 << (rows + 1)));
        neorv32_gpio_port_set(buffer << sel1);
        //neorv32_uart0_printf("%x: %x, \n", buffer << sel1, tmp);
    }*/
}