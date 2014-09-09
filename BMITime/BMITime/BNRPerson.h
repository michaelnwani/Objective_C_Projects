//
//  BNRPerson.h
//  BMITime
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
//{
//    //BNRPerson has two instance variables
////    float _heightInMeters;
////    int _weightInKilos;
//}

//BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson has methods to read and set its instance variables
//- (float)heightInMeters;
//- (void)setHeightInMeters: (float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos: (int)w;

//BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;
@end
