//
//  main.m
//  PrintLifeSpan
//
//  Created by Michael Nwani on 8/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Will be printing the amount of time in seconds I have been alive.
        id now = [[NSDate alloc] init];
        
        //Need to create the proper NSDate object for my birthdate
        
        //Used to construct the components of a date for use in a NSDate object.
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: 1992];
        [comps setMonth:5];
        [comps setDay:24];
        
        //The default calendar identifier is the gregorian calendar, not sure why this is necessary...
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        //Getting the difference in seconds between now and my birthdate
        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"The amount of time from my birthdate to now in seconds is approximately %.1f", secondsSinceEarlierDate);
        
        
        
        
    }
    return 0;
}

