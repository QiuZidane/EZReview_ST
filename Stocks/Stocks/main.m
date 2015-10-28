//
//  main.m
//  Stocks
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        stock1.stockName = @"s1";
        stock1.symbol = @"A";
        
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        stock2.stockName = @"s2";
        stock2.symbol = @"B";
        
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        stock3.stockName = @"s3";
        stock3.symbol = @"C";
        
        NSMutableArray *stockArray = [NSMutableArray array];
        [stockArray addObject:stock1];
        [stockArray addObject:stock2];
        [stockArray addObject:stock3];

        stock1 = nil;
        stock1 = stockArray[0];
        
        [stockArray addObject:stock1];
        
        BNRForeignStockHolding *forStock1 = [[BNRForeignStockHolding alloc] init];
        forStock1.purchaseSharePrice = 2.30;
        forStock1.currentSharePrice = 4.50;
        forStock1.numberOfShares = 40;
        forStock1.conversionRate = 0.94;
        forStock1.stockName = @"fs1";
        forStock1.symbol = @"D";
        
        [stockArray addObject:forStock1];
        
        BNRPortfolio *pf = [[BNRPortfolio alloc]init];
        pf.stockName = @"Portfolio";
        pf.holdings = [[NSMutableArray alloc]init];
        
        for (BNRStockHolding *s in stockArray) {
            NSLog(@"costInDollars = %.1f",[s costInDollars]);
            [pf.holdings addObject:s];
//            [pf getStock:s];
        }
//        pf.holdings = stockArray;
        
        NSLog(@"totalValue=%.2f",[pf totalValue]);

//        [pf removeStock:stock3];
        NSLog(@"totalValue=%.2f",[pf totalValue]);
        
        
        //sleep(2);//等待2秒;
        
    }//@autoreleasepool结束后会销毁所有对象(除非leak了)
    
    
    return 0;
}
