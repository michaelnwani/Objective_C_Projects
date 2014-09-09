//
//  main.m
//  PrintComputerName
//
//  Created by Michael Nwani on 8/30/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       //First need to create an instance of NSHost
        NSHost *host = [NSHost currentHost];
        
        //Then need to use the localizedName method inside NSHost to get the name of my computer
        NSString *nameOfComputer = [host localizedName];
        
        //Playing around:
        NSString *description = [host description];
        

        //Now need to print it to console, using NSLog
        NSLog(@"The name of my computer is %@", nameOfComputer);
        
        NSLog(@"Description of my computer is %@", description);
        
        
    }
    return 0;
}

