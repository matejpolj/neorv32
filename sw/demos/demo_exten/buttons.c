#include "buttons.h"
#include <neorv32.h>

uint32_t getButtonState(int button) {
    // dobimo stanje na začetku
    uint32_t stanje1 = neorv32_gpio_pin_get(button);

    neorv32_cpu_delay_ms(5);

    uint32_t stanje2 = neorv32_gpio_pin_get(button);

    if (stanje1 == stanje2) {
        return stanje1;
    }

    // v primeru napake vrne nemogoče stanje
    return 2;
};

uint32_t getButtonPress(int button) {
    static uint32_t stanje = 0;
    // dobimo stanje na začetku
    uint32_t stanje1 = neorv32_gpio_pin_get(button);

    neorv32_cpu_delay_ms(5);

    uint32_t stanje2 = neorv32_gpio_pin_get(button);

    if (stanje1 == stanje2) {
        if ((stanje != stanje1) && (stanje1 == 1)) {
            stanje = stanje1;
            return 1;
        } else {
            return 0;
        }
    }

    // v primeru napake vrne nemogoče stanje
    return 2;
};

uint8_t getButons(void) {
    uint8_t ret = 0;
    if (neorv32_gpio_pin_get(but1)) {
        ret = 1;
    }
    if (neorv32_gpio_pin_get(but2)) {
        ret += 2;
    }
    if (neorv32_gpio_pin_get(but3)) {
        ret += 3;
    }
    if (neorv32_gpio_pin_get(but4)) {
        ret += 4;
    }
    return ret;
}