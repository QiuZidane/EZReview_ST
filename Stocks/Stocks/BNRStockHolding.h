//
//  BNRStockHolding.h
//  Stocks
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

-(float)purchaseSharePrice;
-(void)setPurchaseSharePrice:(float)p;
-(float)currentSharePrice;
-(void)setCurrentSharePrice:(float)c;
-(int)numberOfShares;
-(void)setNumberOfShares:(int)n;

-(float)costInDollars;
-(float)valueInDollars;



@end
