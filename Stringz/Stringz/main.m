//
//  main.m
//  Stringz
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
 
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++)
        {
            [str appendString:@"Aaron is cool!\n"];
        }
        //Declare a pointer to an NSError object, but do not instantiate it.
        //The NSError instance will only be created if there is, in fact, an error.
        NSError *error;
        
        //Pass the NSError pointer by referencing to the NSString method
//        BOOL success = [str writeToFile:@"/too/darned/bad.txt"
//                              atomically:YES
//                                encoding:NSUTF8StringEncoding
//                                   error:&error];
//        
//        //Test the returned BOOL, and query the NSError if the write failed
//        if (success)
//        {
//                    NSLog(@"done writing /tmp/cool.txt");
//        }
//        else
//        {
//            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
//        }

        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolve.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if (!str2)
        {
            NSLog(@"read failed: %@", [error localizedDescription]);
        }
        else
        {
            NSLog(@"resolve.conf looks like this: %@", str2);
        }
        
        
    }
    return 0;
}

