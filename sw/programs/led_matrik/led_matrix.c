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

void displayLine(uint8_t data[cols], uint8_t pins[rows], uint8_t line) {
    uint8_t buf = (~line) << cols;
    for (uint8_t i=0; i<cols; i++) {
        buf |= data[i] << (cols-i);
    }

    uint64_t tmp = (((uint64_t)NEORV32_GPIO.OUTPUT_HI << 32) | NEORV32_GPIO.OUTPUT_LO) & (~(uint64_t)0xff << 24); // pripravimo ustrezen buffer, da preprečimo kvarjenje ostalih podatkov

    tmp |= (buf << 24);
    neorv32_gpio_port_set(tmp);

};