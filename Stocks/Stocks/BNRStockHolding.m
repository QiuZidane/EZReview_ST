//
//  BNRStockHolding.m
//  Stocks
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float)purchaseSharePrice
{
    return _purchaseSharePrice;
}
-(void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}
-(float)currentSharePrice
{
    return _currentSharePrice;
}
-(void)setCurrentSharePrice:(float)c
{
    _currentSharePrice = c;
}
-(int)numberOfShares
{
    return _numberOfShares;
}
-(void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}
-(float)costInDollars
{
    return _currentSharePrice * _numberOfShares;
}
-(float)valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"%@ (symbol = %@)has stock price of : %.1f",self.ownerName, self.symbol ,self.costInDollars];
}

-(void)dealloc
{
    NSLog(@"%@ is dealocation..",self.ownerName);
}


@end
