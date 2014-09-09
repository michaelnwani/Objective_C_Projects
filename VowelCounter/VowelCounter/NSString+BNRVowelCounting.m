//
//  NSString+BNRVowelCounting.m
//  VowelCounter
//
//  Created by Michael Nwani on 9/3/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "NSString+BNRVowelCounting.h"

@implementation NSString (BNRVowelCounting)
-(int)bnr_vowelCount
{
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOYU"];
    
    NSUInteger count = [self length]; //self is the NSString object...
    int sum = 0;
    for (int i = 0; i < count; i++)
    {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c])
        {
            sum++;
        }
    }
    
    return sum;
}
@end
