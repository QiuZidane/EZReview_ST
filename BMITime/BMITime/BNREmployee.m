//
//  BNREmployee.m
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"



@interface BNREmployee ()
{
//    NSMutableArray *_assets;
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

-(double)yearOfEmployment
{
    if (self.hireDate) {
        
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

//overriding methods覆盖方法
-(float)bodyMassIndex
{
    NSLog(@"[super heightInMeters]=%.2f",[super heightInMeters]);
    return 19.0;
}


//属性的存取方法 -- 貌似没用
-(void)setAssets:(NSSet *)a
{
    _assets = [a mutableCopy];
}

//-- 貌似没用
-(NSSet *)assets
{
    return [_assets copy];
}

-(void)addAssets:(BNRAsset *)a
{
    //assets是否为nil？
    if (!_assets) {
        //创建数组
        _assets = [[NSMutableSet alloc]init];
    }
    [_assets addObject:a];
    a.holder = self;
}

-(void)removeAssets:(BNRAsset *)a
{
    //assets是否为nil？
    if (!_assets) {
        //创建数组
        _assets = [[NSMutableSet alloc]init];
    }
    [_assets removeObject:a];
}


-(unsigned int)valueOfAssets
{
    //累加物品的转售价值
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets , and address = %p>",self.employeeID,self.valueOfAssets,self];
}

-(void)dealloc  //程序运行结束,都会调用这个方法释放对象内存
{
    NSLog(@"deallocation %@",self);
}


@end
