//
//  BNRAsset.h
//  BMITime
//
//  Created by QiuZidane on 15/10/27.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic,copy)NSString *label;
@property (nonatomic)unsigned int resaleValue;
@property (nonatomic, weak)BNREmployee *holder;

@end
