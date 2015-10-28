//
//  BNRPortfolio.m
//  Stocks
//
//  Created by QiuZidane on 15/10/28.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio ()
@property (nonatomic) NSMutableArray *holdings;
@end

@implementation BNRPortfolio


-(void)getStock:(BNRStockHolding *)s
{
    if (!s) {
        NSLog(@"无效股票");
    }
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:s];
    NSLog(@"持有股票:%@",s);
}

-(void)getFStock:(BNRForeignStockHolding *)s   //这个没用上了，getStock方法涵盖了这个，因为是父子关系
{
    if (!s) {
        NSLog(@"无效股票");
    }
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:s];
    NSLog(@"持有股票:%@",s);
}

-(void)removeStock:(BNRStockHolding *)s
{
    if (!s) {
        NSLog(@"无效股票");
    }
    [_holdings removeObject:s];
    NSLog(@"减持股票:%@",s);
}


-(float)totalValue {
    float value = 0;
    for (int i = 0; i<_holdings.count; i++) {
        value += [_holdings[i] valueInDollars];
    }
    return value;
}



-(void)dealloc {    //dealloc方法不会被覆盖，会先调用子类的dealloc，再调用父类的dealloc
    
    NSLog(@"BNRPortfolio is deallocation.");
}

@end
