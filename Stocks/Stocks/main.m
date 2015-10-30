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
        
        //初始化、定义股票，每个股票都有持有人
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        
        //本币股票
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        stock1.ownerName = @"owner1";
        stock1.symbol = @"ABC";
        //本币股票
        [stock2 setPurchaseSharePrice:12.19];
        [stock2 setCurrentSharePrice:10.56];
        [stock2 setNumberOfShares:90];
        stock2.ownerName = @"owner2";
        stock2.symbol = @"EFG";
        //本币股票
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares:210];
        stock3.ownerName = @"owner3";
        stock3.symbol = @"XYZ";
        
        NSMutableArray *stockArray = [NSMutableArray array];
        [stockArray addObject:stock1];
        [stockArray addObject:stock2];
        [stockArray addObject:stock3];

        stock1 = nil;
        stock1 = stockArray[0];
        
//        [stockArray addObject:stock1];
        
        //外币股票
        BNRForeignStockHolding *forStock1 = [[BNRForeignStockHolding alloc] init];
        forStock1.purchaseSharePrice = 2.30;
        forStock1.currentSharePrice = 4.50;
        forStock1.numberOfShares = 40;
        forStock1.conversionRate = 0.94;
        forStock1.ownerName = @"owner4";
        forStock1.symbol = @"AAA";
        
        [stockArray addObject:forStock1];
        
        NSLog(@"%@",stockArray);
        
        //初始化投资组合统计对象：
        BNRPortfolio *pf = [[BNRPortfolio alloc]init];
        pf.holdings = stockArray;
        NSLog(@"%@",pf);
        
        //使用sortByValueInDollars方法排序
        NSArray *priceSortArray = [pf sortByValueInDollars];
        NSLog(@"%@",priceSortArray);
 
        NSArray *symbolSortArray = [pf sortBySymbol];
        NSLog(@"%@",symbolSortArray);
        
        
        //sleep(2);//等待2秒;
        
    }//@autoreleasepool结束后会销毁所有对象(除非leak了)
    
    
    return 0;
}
