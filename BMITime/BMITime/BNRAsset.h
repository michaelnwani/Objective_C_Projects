//
//  BNRAsset.h
//  BMITime
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;
@property (nonatomic, weak) BNREmployee *holder; //weak makes it so that it does not IMPLY ownership
@end
