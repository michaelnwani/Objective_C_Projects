//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Michael Nwani on 9/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

-(instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

-(instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
        //Call the superclass's initializer
        if (self = [super initWithProductName:pn])
        {
            //Create a set to hold owner names
            _ownerNames = [[NSMutableSet alloc] init];
            
            //Is the first owner name non-nil?
            if (n)
            {
                [_ownerNames addObject:n];
            }
        }
    
    //Return a pointer to the new object
    return self;
}

-(void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

-(void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

-(NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
