//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}

@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n
{
    
    if (self = [super initWithProductName:pn]) {
        _ownerNames = [[NSMutableSet alloc] init];
        
        //判断传入的第一个拥有者姓名是否未nil
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    return self;
}

- (instancetype)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:@"N/A"];
}

- (void)addOwnerNames:(NSString *)n{
    [_ownerNames addObject:n];
}


- (void)removeOwnerNames:(NSString *)n {
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames {
    return [_ownerNames copy];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"productName = %@ , voltage = %d , ownerName = %@",[self productName],[self voltage],_ownerNames];
}

@end
