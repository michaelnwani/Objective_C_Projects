//
//  BNRAsset.m
//  BMITime
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *)description
{
    //Is holder non-nil?
    if (self.holder)
    {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    }
    else
    {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }

}

-(void)dealloc //supplementary; it will still be deleted
{
    NSLog(@"deallocating %@", self);
}
@end
