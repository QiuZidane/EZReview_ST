//
//  BNREmployee.h
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset; //----->告诉编译器程序有一个名为BNRAsset的类,不会把实例变量和方法都导入



@interface BNREmployee : BNRPerson
//{
//    NSMutableArray *_assets;  --放到私有区(类扩展)
//}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode; --放到私有区(类扩展)
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@property (nonatomic,copy)NSArray *assets; //-- 貌似用NSMutableArray也一样。。。



-(double)yearOfEmployment;
-(void)addAssets:(BNRAsset *)a;
-(void)removeAssets:(BNRAsset *)a;
-(unsigned int)valueOfAssets;



@end
