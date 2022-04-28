# include <neorv32.h>
#include "buttons.h"
#include "keypad.h"

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

    neorv32_uart0_print("Pritisni na tipko 1 (torej cisto levo)\n");

    uint32_t stanje;

    uint16_t rows[] = {5, 6, 7, 8};
    uint16_t cols[] = {7, 8, 9, 10};

    while (1)
    {
        stanje = getKeyPress(rows, cols);

        neorv32_uart0_printf("Pritisnjena tipka je: %i\n", stanje);
        
        neorv32_cpu_delay_ms(500);
    }

    return 0;
}