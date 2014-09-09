//
//  BNRPerson.m
//  BMITime
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//- (float)heightInMeters
//{
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h
//{
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos
//{
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    _weightInKilos = w;
//}

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
