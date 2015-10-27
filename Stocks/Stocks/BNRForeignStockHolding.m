//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by QiuZidane on 15/10/27.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)costInDollars
{
    return [super costInDollars]*self.conversionRate;
}
-(float)valueInDollars
{
    return [super valueInDollars]*self.conversionRate;
}

@end
