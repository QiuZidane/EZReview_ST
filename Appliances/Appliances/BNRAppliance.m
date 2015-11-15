//
//  BNRAppliance.m
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance 



- (instancetype)init {
    
    //如果想禁用init，可以这样写
//    [NSException raise:@"BNRWallSafeInitialization"
//                format:@"Use initWithSecretCode: not init"];
    
    return [self initWithProductName:@"unknown"];
    
}

- (instancetype)initWithProductName:(NSString *)pn {
    self = [super init];
    if (self) {
        //下面两种方法都可以。。。用存取方法在swift中貌似不可行，会被判定为未初始化不能使用self，代确认
        _productName = [pn copy];
        //[self setProductName:pn];
        
        _voltage = 120;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"productName = %@ , voltage = %d",_productName,_voltage];
}

- (id)copyWithZone:(NSZone *)zone {
    BNRAppliance *a = [[BNRAppliance allocWithZone:zone]initWithProductName:@"EEE"];
    return a;
}

- (void)setCurrentState:(NSString *)currentState {
    _currentState = [currentState copy];
    NSLog(@"1234");
}

@synthesize age = _age;

- (void)setAge:(NSInteger)age
{
    _age = age;
}
- (NSInteger)age
{
    return _age;
}


- (void)setBb:(NSString *)bb
{
    if (_bb!=bb) {
      _bb = [bb copy];
    }
}

@end
