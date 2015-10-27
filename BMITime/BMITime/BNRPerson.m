//
//  BNRPerson.m
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

/*
-(float)heightInMeters {
    return _heightInMeter;
}

-(void)setHeightInMeters:(float)h {
    _heightInMeter = h;
}

-(int)weightInKilos
{
    return _weightInKilos;
}

-(void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
    
}
*/


-(float)bodyMassIndex
{    
    float h = [self heightInMeters];
    return  [self weightInKilos] / ( h * h);    
}


@end
