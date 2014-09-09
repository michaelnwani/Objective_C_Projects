//
//  main.c
//  Degrees
//
//  Created by Michael Nwani on 8/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include "stdlib.h"

// Declare a global variable
static float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeinF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit.\n", freezeinF);
    printf("The last temperature converted was %f.\n", lastTemperature);
    return EXIT_SUCCESS; //0
}

