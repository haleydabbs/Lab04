#include "myLib.h"

// The start of the video memory
unsigned short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// Set a pixel on the screen
void setPixel(int col, int row, unsigned short color) {
	videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
}

// Draw a rectangle at the specified location and size
void drawRect(int col, int row, int width, int height, unsigned short color) {
    // TODO 4.2: Rewrite this function using DMA
	// for(int r = 0; r < height; r++) {
    //     for(int c = 0; c < width; c++) {
    //         videoBuffer[OFFSET(col+c, row+r, SCREENWIDTH)] = color;
    //     }
    // }

    volatile unsigned short c = color;

    for (int y = 0; y < height; y++) {
        DMANow(3, &c, &videoBuffer[col + (SCREENWIDTH * (row + y))], width | DMA_DESTINATION_INCREMENT | DMA_SOURCE_FIXED);
    }
}

// Fill the entire screen with a single color
void fillScreen(unsigned short color) {
    // TODO 4.1: Rewrite this function using DMA
    // for(int i = 0; i < SCREENHEIGHT * SCREENWIDTH; i++) {
    //     videoBuffer[i] = color;
    // }

    // Addressed possible compiler bug
    // Without using volatile for color, screen only drew in black no matter
    // what was input for u16 color attribute
    volatile unsigned short c = color;
    DMANow(3, &c, videoBuffer, ((SCREENHEIGHT * SCREENWIDTH) | DMA_DESTINATION_INCREMENT | DMA_SOURCE_FIXED));
}

// Pause code execution until vertical blank begins
void waitForVBlank() {
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}

// Set up and begin a DMA transfer
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    // TODO 4.0: Complete this function
    // First, turn this channel of DMA off (cnt = 0)
    dma[channel].cnt = 0;

    // Second, set the source and destination registers of this DMA channel to the given parameters
    // dma[channel].src = src;
    dma[channel].dst = dst;
    dma[channel].src = src;

    // Finally, set the control to the given parameter,
    // and bitwise-or DMA_ON to the end to turn it on
    dma[channel].cnt = (cnt | DMA_ON);


}

// Return true if the two rectangular areas are overlapping
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}