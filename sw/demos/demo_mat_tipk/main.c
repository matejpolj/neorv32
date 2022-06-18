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

    neorv32_uart0_print("Matrična tipkovnica demo!\n");

    uint32_t stanje1, stanje2;

    uint16_t rows[] = {5, 6, 7, 8};
    uint16_t cols[] = {8, 9, 10, 11};

    while (1)
    {
        stanje1 = getKeyPress(rows, cols);
        neorv32_cpu_delay_ms(10);
        stanje2 = getKeyPress(rows, cols);



        if ((stanje1 < 30)&&(stanje1 ==stanje2)) {
            neorv32_uart0_printf("Pritisnjena tipka je: %i\n", stanje1);
        }
        
        neorv32_cpu_delay_ms(50);
    }

    return 0;
}