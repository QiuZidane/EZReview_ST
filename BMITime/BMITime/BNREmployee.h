//
//  BNREmployee.h
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset; //----->????告诉编译器程序有一个名为BNRAsset的类

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@property (nonatomic,copy)NSArray *assets; //-- 貌似用NSMutableArray也一样。。。



-(double)yearOfEmployment;
-(void)addAssets:(BNRAsset *)a;
-(unsigned int)valueOfAssets;



@end
