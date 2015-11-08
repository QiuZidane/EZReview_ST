//
//  OCTestClass.m
//  OCTest
//
//  Created by QiuZidane on 15/10/31.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "OCTestClass.h"

@interface OCTestClass ()
{
    NSString *str1;
    @protected NSString *str2;
    @private NSString *str3;
    @public NSString *str4;
}

@end

@implementation OCTestClass




const NSString *QSD = @"QSD";


-(void)setSpeed:(enum BlenderSpeed)x
{
    speed = x;
}

-(int)speed
{
    return speed;
}

-(int)mySpeed
{
    extern int MYSPEED;
    NSLog(@"A_A = %f",A_A);
    return MYSPEED;
}



@end
