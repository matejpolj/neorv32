# include <neorv32.h>
#include "buttons.h"
#include "led_matrix.h"

# define BAUD_RATE 19200

void gptmr_firq_handler(void);

// predpripravljena števila

uint8_t nic[rows][cols] = {{1, 0, 0, 0, 1},
                        {0, 1, 0, 0, 1},
                        {1, 1, 0, 0, 1},
                        {0, 0, 1, 0, 1},
                        {1, 0, 1, 0, 1},
                        {0, 1, 1, 0, 1},
                        {1, 1, 1, 0, 1}};

uint8_t pins[cols + 3] = {24, 25, 26, 27, 28, 29, 30, 31};

uint8_t tmp[cols] = {1, 1, 1, 1, 1};

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

    // install GPTMR interrupt handler
    neorv32_rte_exception_install(GPTMR_RTE_ID, gptmr_firq_handler);

    // configure timer for 1Hz in continuous mode
    uint32_t soc_clock = NEORV32_SYSINFO.CLK;
    soc_clock = soc_clock / 2; // divide by two as we are using the 1/2 clock prescaler
    //neorv32_gptmr_setup(CLK_PRSC_2, 1, soc_clock);
    neorv32_gptmr_setup(CLK_PRSC_8, 1, NEORV32_SYSINFO.CLK / (8 * 500));

    // enable interrupt
    neorv32_cpu_irq_enable(GPTMR_FIRQ_ENABLE); // enable GPTRM FIRQ channel
    neorv32_cpu_eint(); // enable global interrupt flag

    neorv32_gpio_pin_clr(sel1);
    neorv32_gpio_pin_set(sel2);
    while (1)
    {
        //displaySymbol(nic, pins);
        
    }

    return 0;
}

uint8_t cout = 0;
/**********************************************************************//**
 * GPTMR FIRQ handler.
 *
 * @warning This function has to be of type "void xyz(void)" and must not use any interrupt attributes!
 **************************************************************************/
void gptmr_firq_handler(void) {

    neorv32_cpu_csr_write(CSR_MIP, ~(1<<GPTMR_FIRQ_PENDING)); // clear/ack pending FIRQ

    neorv32_uart0_putc('.'); // send tick symbol via UART
    //neorv32_uart0_printf("%x  : : %x %u\n", NEORV32_GPIO.OUTPUT_HI, NEORV32_GPIO.OUTPUT_LO, cout);

    displaySymbol(nic, pins);

    //displayLinePart(tmp, pins, 3);
    /*
    (cout == rows) ? cout = 0: cout++;

    switch (cout)
    {
    case 0:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 1:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 2:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 3:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 4:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 5:
        displayLine(nic[cout], pins, cout);
        //cout++;
        break;
    case 6:
        displayLine(nic[cout], pins, cout);
        //cout = 0;
        break;
    default:
        break;
    }
    */
  
}
