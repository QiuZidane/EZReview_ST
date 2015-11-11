//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance
@property (readonly) NSSet *ownerNames;

//指定初始化方法
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerNames:(NSString *)n;
- (void)removeOwnerNames:(NSString *)n;


@end
