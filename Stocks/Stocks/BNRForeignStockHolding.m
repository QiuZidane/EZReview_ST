//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by QiuZidane on 15/10/27.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)costInDollars       //换算成美元
{
    return [super costInDollars]*self.conversionRate;
}
-(float)valueInDollars      //换算成美元
{
    return [super valueInDollars]*self.conversionRate;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"%@ (symbol = %@)has ForStock price of : %.1f",self.ownerName, self.symbol ,self.costInDollars];
}

@end
