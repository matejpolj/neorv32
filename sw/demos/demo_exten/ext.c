#include <neorv32.h>
#include "ext.h"
#include "config.h"

void printNum(uint8_t num){
    uint8_t tmp = (num & (1<<3))>>3;

    if (tmp) {
        neorv32_gpio_pin_set(eled4);
    } else {
        neorv32_gpio_pin_clr(eled4);
    }

    tmp = (num & (1<<2))>>2;

    if (tmp) {
        neorv32_gpio_pin_set(eled3);
    } else {
        neorv32_gpio_pin_clr(eled3);
    }

    tmp = (num & (1<<1))>>1;

    if (tmp) {
        neorv32_gpio_pin_set(eled2);
    } else {
        neorv32_gpio_pin_clr(eled2);
    }

    tmp = (num & (1));

    if (tmp) {
        neorv32_gpio_pin_set(eled1);
    } else {
        neorv32_gpio_pin_clr(eled1);
    }

}

uint8_t getBut(void) {
    uint8_t ret = 0;
    if (neorv32_gpio_pin_get(ebut1)) {
        ret = 1;
    }
    if (neorv32_gpio_pin_get(ebut2)) {
        ret += 2;
    }
    if (neorv32_gpio_pin_get(ebut3)) {
        ret += 3;
    }
    if (neorv32_gpio_pin_get(ebut4)) {
        ret += 4;
    }
    return ret;
}

