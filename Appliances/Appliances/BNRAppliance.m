//
//  BNRAppliance.m
//  Appliances
//
//  Created by Michael Nwani on 9/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

-(instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

-(instancetype)initWithProductName:(NSString *)pn
{
    //Call the NSObject's init method
//    self = [super init];
    
    //Did it return something non-nil?
    if (self = [super init])
    {
        //Set the product name
        _productName = [pn copy];
//        [self setProductName:pn];
        
        //Give voltage a starting value
        _voltage = 120;
//        [self setVoltage:120];
    }
    
    return self;
    
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

-(void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    _voltage = x;
}
@end
