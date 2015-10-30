//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by QiuZidane on 15/10/27.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding //这是外币股票，本币美元

@property (nonatomic) float conversionRate; //利率，本地货币*conversionRate=美元价格


@end
