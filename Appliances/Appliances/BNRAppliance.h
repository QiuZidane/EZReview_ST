//
//  BNRAppliance.h
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

//指定初始化方法
- (instancetype)initWithProductName: (NSString *)pn;



@end
