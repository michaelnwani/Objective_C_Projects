//
//  BNREmployee.m
//  BMITime
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//A class extension:
@interface BNREmployee ()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

- (double)yearsOfEmployment
{
    //Do I have a non-nil hireDate?
    if (self.hireDate)
    {
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //Seconds per year
    }
    else
    {
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}


//Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets)
    {
        //Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets)
    {
        //Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    
    //Is assets empty?
    if ([_assets count] == 0)
    {
        return NSLog(@"Array is empty; Can not do a delete");
    }
    
    [_assets removeObject:a];
    a.holder = nil;
    NSLog(@"Object has been removed: %@", a);
}

-(unsigned int)valueOfAssets
{
    //Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets)
    {
        sum += [a resaleValue];
    }
    
    return sum;
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
