#include "buttons.h"
#include <neorv32.h>

uint32_t getButtonState(int button) {
    /**
     * @brief vrne stanje tipke vključno z nekim bad debouncom
     * 
     */
    // dobimo stanje na začetku
    uint32_t stanje1 = neorv32_gpio_pin_get(button);

    neorv32_cpu_delay_ms(5);

    uint32_t stanje2 = neorv32_gpio_pin_get(button);

    if ((stanje1 & stanje2) || ((stanje1 == 0) && (stanje2 == 0))) {
        if (stanje1 == 0) {
            return 0;
         } else {
            return 1;
         }
    }

    // v primeru napake vrne nemogoče stanje
    return 2;
};

uint32_t getButtonPress(int button) {
    /** 
     * @brief vrne 1, če je tipka pritisnjena
     * 
     **/
    // dobimo stanje na začetku
    static uint32_t stanje1 = 0;

    uint32_t stanje2 = neorv32_gpio_pin_get(button);

    neorv32_cpu_delay_ms(20);

    uint32_t stanje3 = neorv32_gpio_pin_get(button);

    if (((stanje2 == 0) && (stanje3 != 0)) || ((stanje3 == 0) && (stanje2 != 0))) {
        return 2; // vrne nemogoče stanje, če prehitro spustimo tipko
    }

    if ((stanje1 != stanje2) && (stanje1 == 0)) {
        stanje1 = 1;
        return stanje1;
    } else {
        stanje1 = 0;
        return stanje1;
    }
    
    // v primeru napake vrne nemogoče stanje
    return 2;
};