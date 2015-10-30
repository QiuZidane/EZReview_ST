//
//  BNRPortfolio.m
//  Stocks
//
//  Created by QiuZidane on 15/10/28.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio ()

@end

@implementation BNRPortfolio

//-(id)init{
//    if ([super init]) {
//        NSMutableArray *array = [[NSMutableArray alloc]init];
//        self.holdings
//    }
//}


-(NSArray *)sortByValueInDollars
{
    NSSortDescriptor *price = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    [_holdings sortUsingDescriptors:@[price]];
    return _holdings;
}

-(float)totalValue {
    float value = 0;
    for (int i = 0; i<_holdings.count; i++) {
        value += [_holdings[i] valueInDollars];
    }
    return value;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"has total stock value of :%.2f",self.totalValue];
}

-(void)dealloc {    //dealloc方法不会被覆盖，会先调用子类的dealloc，再调用父类的dealloc
    
    NSLog(@"BNRPortfolio is deallocation.");
}

@end
