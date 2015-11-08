//
//  BlockClass.h
//  BlockResearch001
//
//  Created by QiuZidane on 15/11/6.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BLOCKOFNSLOG)();

@interface BlockClass : NSObject
{
    NSString *age;
    void (^myblock)(void);
}
//@property (nonatomic) void (^myblock)(void);
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) NSString *string1;
@property (nonatomic,unsafe_unretained) NSString *string2;

-(instancetype)initWithName:(NSString *)nameStr;

-(void)printLog;

- (void)testGlobalObj;
- (void)testStaticObj;
- (void)testLocalObj;
- (void)testBlockObj;
- (void)testWeakObj;

@end
