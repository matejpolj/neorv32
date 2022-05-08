# include <neorv32.h>
#include "buttons.h"
//#include "led_matrix.h"
#include "ext_tipke.h"

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

    neorv32_uart0_print("Test dodanih tipk:\n");

    neorv32_gpio_pin_set(sel1);
    neorv32_gpio_pin_clr(sel2);

    for (int i=0; i<8; i++) {
        neorv32_gpio_pin_clr(sel2 + 1);
    }

    uint32_t stanje = 0;

    while (1)
    {
        neorv32_uart0_print("Pritisni :::::>>>>>>>  ");
        stanje = getExtButtons();
        neorv32_uart0_printf("Stanje je: %x ------------ %x    \n", stanje, neorv32_gpio_port_get());
        neorv32_uart0_printf("    %x  : : %x   \n", NEORV32_GPIO.OUTPUT_HI, NEORV32_GPIO.OUTPUT_LO);

        neorv32_cpu_delay_ms(1000);
        
    }

    return 0;
}
