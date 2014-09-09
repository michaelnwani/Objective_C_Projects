//
//  main.m
//  TimeAfterTime
//
//  Created by Michael Nwani on 8/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSDate *now = [NSDate date]; //A 'message send'; date is a MESSAGE, than was sent to the class, to activate is date METHOD.
        //alloc is a class method that every class has. init is an instance method that every class has.
        id now = [[NSDate alloc] init];
        
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the Unix epoch.", seconds);
        
//        double testSeconds = [NSDate timeIntervalSince1970];
//        NSDate *testNow = [now date];
//        
//        //Mistyped selector name
//        //No visible @interface for 'Class' declares the selector 'selector' means, this instance method was not found in the class
//        testSeconds = [now fooIntervalSince1970];
//        
//        testSeconds = [now timeintervalsince1970];
        
//        NSDate *later = [now dateByAddingTimeInterval:100000];
//        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                           inUnit:NSMonthCalendarUnit
                                          forDate:now];
        
        NSLog(@"This is day %lu of the month", day);
    }
    return 0;
}

