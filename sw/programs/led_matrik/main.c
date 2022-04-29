# include <neorv32.h>
#include "buttons.h"
#include "led_matrix.h"

# define BAUD_RATE 19200

int main(void) {

    // preverimo stanje uart
    neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

    // preverimo še, ali je gpio sintetiziran
    if (neorv32_gpio_available() == 0) {
        neorv32_uart0_print("Error! No GPIO unit synthesized!\n");
        return 1; // nope, no GPIO unit synthesized
    }

    // varnostni mehanizem
    neorv32_rte_setup();

    neorv32_uart0_print("LED matrika test:\n");

    // predpripravljena števila

    uint8_t nic[rows][cols] = {{1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1}};
    
    uint8_t pins[cols + 3] = {24, 25, 26, 27, 28, 29, 30, 31};

    uint8_t tmp[cols + 3] = {0, 1, 0, 0, 1, 1, 1, 0};

    neorv32_gpio_pin_clr(22);
    neorv32_gpio_pin_set(23);
    while (1)
    {
        displaySymbol(nic, pins);
        //neorv32_cpu_delay_ms(500);
        /*
        for (uint8_t i=0; i<8; i++) {
            tmp[i] ? neorv32_gpio_pin_set(pins[i]) : neorv32_gpio_pin_clr(pins[i]);
            neorv32_uart0_printf("%i", tmp[i]);
        }
        neorv32_uart0_printf("\n");*/
    }

    return 0;
}