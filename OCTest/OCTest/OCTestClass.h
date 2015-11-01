//
//  OCTestClass.h
//  OCTest
//
//  Created by QiuZidane on 15/10/31.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//  包含内容:
//  1.枚举 2.#define 3.全局变量

#import <Foundation/Foundation.h>
#define A_A 1212.111
extern const NSString *QSD;

//传统方式：
enum BlenderSpeed {
    BlenderSpeedStir = 1,
    BlenderSpeedChop = 2,
    BlenderSpeedLiquify = 5,
    BlenderSpeedPulse = 9,
    BlenderSpeedIceCrush = 15
};

typedef enum : NSUInteger { //: NSUInteger这个可以省略，默认只支持NSUInteger格式
    east = 1,
    south = 2,
    west = 3,
    north = 4
} myDirection;

typedef NS_ENUM(char, myEnum) {
    aa = 123,
    bb,
    cc,
    dd
};

//新建枚举类型的快捷方式
//typedef enum : NSUInteger {



@interface OCTestClass : NSObject
{
    enum BlenderSpeed speed;    //将speed定义为枚举BlenderSpeed类型，只能选择枚举BlenderSpeed中的值
    int intValue;
}

@property (nonatomic) enum BlenderSpeed speedOnPro;
@property (nonatomic) myDirection direction;
@property (nonatomic) myEnum me;

-(void)setSpeed:(enum BlenderSpeed)x;
-(int)speed;
-(int)mySpeed;


@end
