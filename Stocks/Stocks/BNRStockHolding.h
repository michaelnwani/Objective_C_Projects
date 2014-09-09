//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice: (float)p;

- (float)currentSharePrice;
- (void)setCurrentSharePrice: (float)c;

- (int)numberOfShares;
- (void)setNumberOfShares: (int)n;

@end
