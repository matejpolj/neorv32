#include "buttons.h"
#include <neorv32.h>

uint32_t getButtonState(int button) {
    // dobimo stanje na začetku
    uint32_t stanje1 = neorv32_gpio_pin_get(button);

    neorv32_cpu_delay_ms(20);

    uint32_t stanje2 = neorv32_gpio_pin_get(button);

    if (stanje1 == stanje2) {
        return stanje1;
    }

    // v primeru napake vrne nemogoče stanje
    return 2;
};