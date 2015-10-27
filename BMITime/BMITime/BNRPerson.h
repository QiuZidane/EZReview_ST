//
//  BNRPerson.h
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

/* 用属性替代实例变量和存取方法
{

    float _heightInMeter;
    int _weightInKilos;
    
}

-(float)heightInMeters;
-(void)setHeightInMeters:(float)h;
-(int)weightInKilos;
-(void)setWeightInKilos:(int)w;
 
*/
 /** 自定义方法
  *  计算个人BMI值
  *
  */
-(float)bodyMassIndex;
 



@end
