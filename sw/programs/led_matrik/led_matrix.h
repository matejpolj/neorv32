#include <neorv32.h>

#define rows 7
#define cols 5

#define sel1 22
#define sel2 23

void displaySymbol(uint8_t data[rows][cols], uint8_t pins[rows]);

void displayLine(uint8_t data[cols], uint8_t pins[rows], uint8_t line);