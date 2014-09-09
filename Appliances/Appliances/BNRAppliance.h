//
//  BNRAppliance.h
//  Appliances
//
//  Created by Michael Nwani on 9/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic) int voltage;
@property (nonatomic, copy) NSString *productName;

//The designated initializer
-(instancetype)initWithProductName:(NSString *)pn;
@end
