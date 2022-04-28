# include <neorv32.h>
#include "buttons.h"

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

    neorv32_uart0_print("Blinker test skupaj s tipkami!\n");

    uint32_t stanje = 0;

    neorv32_gpio_pin_set(11);
    neorv32_gpio_pin_clr(12);

    while (1)
    {
        neorv32_uart0_print("Pritisni\n");
        uint32_t stanje2 = getButtonState(9);
        if (stanje != stanje2) {
            neorv32_uart0_printf("Stanje tipke je: %u\n", stanje);
            stanje = stanje2;
        }

        

        neorv32_gpio_pin_toggle(11);
        neorv32_gpio_pin_toggle(12);


        neorv32_cpu_delay_ms(500);
    }

    return 0;
}