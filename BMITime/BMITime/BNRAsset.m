//
//  BNRAsset.m
//  BMITime
//
//  Created by QiuZidane on 15/10/27.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

-(NSString *)description
{
//    return [NSString stringWithFormat:@"<%@: $%u>",self.label,self.resaleValue];
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",self.label,self.resaleValue,self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",self.label,self.resaleValue];
    }
}


-(void)dealloc
{
    NSLog(@"deallocation %@",self);
}

@end
