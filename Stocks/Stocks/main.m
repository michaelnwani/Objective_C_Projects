//
//  main.m
//  Stocks
//
//  Created by Michael Nwani on 8/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRStockHolding *n1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *n2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *n3 = [[BNRStockHolding alloc] init];
        
        [n1 setNumberOfShares:100];
        [n1 setCurrentSharePrice:49.0];
        [n1 setPurchaseSharePrice:35.0];
        
        [n2 setNumberOfShares:450];
        [n2 setCurrentSharePrice:118.0];
        [n2 setPurchaseSharePrice:77.0];
        
        [n3 setNumberOfShares:119];
        [n3 setCurrentSharePrice:16.0];
        [n3 setPurchaseSharePrice:25.0];
        
        NSArray *array = @[n1, n2, n3];
        
        for (BNRStockHolding *n in array)
        {
            NSLog(@"Number of shares: %d", [n numberOfShares]);
            NSLog(@"Their current share price each: %.1f", [n currentSharePrice]);
            NSLog(@"The share price they were purchased at: %.1f\n\n", [n purchaseSharePrice]);
        }
    }
    return 0;
}

