//
//  main.m
//  Groceries
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
      
        //Creating an array for holding a couple of strings, and printing them to screen
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Container of milk";
        NSString *butter = @"Stick of butter";
        
        [array addObject:bread];
        [array addObject:milk];
        [array addObject:butter];
        
        NSLog(@"My grocery list is:");
        for (NSString *s in array)
        {
            NSLog(@"%@", s);
        }
        
    }
    return 0;
}

