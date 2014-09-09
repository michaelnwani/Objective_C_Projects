//
//  main.c
//  PBR
//
//  Created by Michael Nwani on 8/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#import <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
    //This function assumes meters is non-negative.
    
    //Convert the number of meters into a floating-point number of feet
    double rawFeet = meters * 3.281; // e.g. 24536
    
    //How many complete feet as an unsigned int?
    unsigned int feet = (unsigned int)floor(rawFeet); //I assume it's because the floor method does not return an unsigned int.
    
    
    //Store the number of feet at the supplied address
    if (ftPtr)
    {
        printf("Storing %u to the address %p\n", feet, ftPtr); //Guessing the u token is for unsigned int's.
        *ftPtr = feet; //By the very nature of pointers, they point to locations in memory.
        //It is not always possible to get the exact address where the exact data is, but you can always get the address for where that data BEGINS.
    }
    
    
    
    //Calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    //Store the number of inches at the supplied address
    if (inPtr)
    {
        printf("Storing %.2f inches to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
    
    
}

int main(int argc, const char * argv[])
{
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return 0;
}

