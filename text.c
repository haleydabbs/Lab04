#include "myLib.h"
#include "text.h"
#include "font.h"

// Draws the specified character at the specified location
void drawChar(int col, int row, char ch, unsigned short color) {
    // TODO 1.0: Complete this function
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 8; j++) {
            if (fontdata_6x8[48 * ch + i + 6 * j]) {
                setPixel(col + i, row + j, color);
            }
        }
    }
}

// Draws the specified string at the specified location
void drawString(int col, int row, char *str, unsigned short color) {
    // TODO 2.0: Complete this function
    int i = 0;
    char current = *str;
    while (current != '\0') {
        drawChar(col + 6 * i, row, current, color);
        i++;
        current = (str[i]);
    }
}