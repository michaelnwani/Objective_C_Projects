//
//  main.m
//  Callbacks
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        //Notification Center
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                              selector:@selector(zoneChange:)
                                                 name:NSSystemTimeZoneDidChangeNotification
                                               object:nil];
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        //Helper Object (delegate)
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                              delegate:logger
                                                                      startImmediately:YES];
        
        
        //the action message (method) will always take one parameter - the object that is sending the action message
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                  target:logger
                                selector:@selector(updateLastTime:) //the selector, updateLastTime:, is the action message (method)
                                userInfo:nil
                                 repeats:YES];
        
        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        
        //I want to know the new value and the old value whenever lastTime is changed.
        [logger addObserver:observer forKeyPath:@"lastTimeString"
                    options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                    context:nil];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

