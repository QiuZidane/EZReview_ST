//
//  BNRPortfolio.h
//  Stocks
//
//  Created by QiuZidane on 15/10/28.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio : NSObject

@property (nonatomic) NSMutableArray *holdings;//持有股票组合

-(float)totalValue;
-(NSArray *)sortByValueInDollars;   //按美元排序
-(NSArray *)sortBySymbol;

@end
