#include "ext_tipke.h"

uint32_t getExtButtons(void) {
    uint32_t stanje = 0;
    for (uint32_t i=0; i<range; i++) {
        uint32_t tmp = getButtonState(start + i);
        if (i < 2) stanje |= (tmp << (range - i));
    }

    return stanje;
}
