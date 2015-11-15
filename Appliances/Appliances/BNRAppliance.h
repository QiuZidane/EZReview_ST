//
//  BNRAppliance.h
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject<NSCopying>
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
@property (nonatomic,copy) NSString *currentState;
@property (nonatomic)NSInteger age;
@property (nonatomic,retain)NSString * name;
@property (nonatomic,copy)NSString * bb;

//指定初始化方法
- (instancetype)initWithProductName: (NSString *)pn;



@end
