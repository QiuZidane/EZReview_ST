//
//  BNRPortfolio.h
//  Stocks
//
//  Created by QiuZidane on 15/10/28.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio : BNRStockHolding

@property (nonatomic) NSMutableArray *holdings; //
//-(void)getStock:(BNRStockHolding *)s;
//-(void)getFStock:(BNRForeignStockHolding *)fs;
//-(void)removeStock:(BNRStockHolding *)s;
-(float)totalValue;

@end
