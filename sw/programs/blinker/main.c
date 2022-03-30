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

    while (1)
    {
        neorv32_uart0_print("Pritisni na tipko 1 (torej cisto levo)\n");
        uint32_t stanje2 = getButtonState(0);
        //if (stanje != stanje2) {
            neorv32_uart0_printf("Stanje tipke je: %u\n", stanje);
            stanje = stanje2;
        //}

        neorv32_uart0_print("Ce zelis prekiniti in koncati program pritisni tipko 4 (torej cisto desno)\n");
        uint32_t konec = getButtonState(3);
        if (konec == 1) break; 

        neorv32_uart0_printf("Debugging: %u\n", neorv32_gpio_pin_get(0));
        neorv32_uart0_printf("Debugging: %u\n", neorv32_gpio_pin_get(1));
        neorv32_uart0_printf("Debugging: %u\n", neorv32_gpio_pin_get(2));
        neorv32_uart0_printf("Debugging: %u\n", neorv32_gpio_pin_get(3));

        neorv32_cpu_delay_ms(10000);
    }

    neorv32_uart0_print("Koncali ste program, cestitke!\n");

    return 0;
}