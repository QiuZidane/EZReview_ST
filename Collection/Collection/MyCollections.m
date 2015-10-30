//
//  MyCollections.m
//  Collection
//
//  Created by QiuZidane on 15/10/30.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "MyCollections.h"

@implementation MyCollections

-(NSArray *)odds
{
    NSMutableArray *odds = [[NSMutableArray alloc]init];
    int i = 1;
    while ([odds count] < 30) {
        [odds addObject:[NSNumber numberWithInt:i]];
        i += 2;
    }
    return odds;
}

@end
