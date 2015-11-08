//
//  BlockClass.m
//  BlockResearch001
//
//  Created by QiuZidane on 15/11/6.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BlockClass.h"



@interface BlockClass ()
{
    NSString *__globalString;// = nil;
}
@end

@implementation BlockClass


-(instancetype)initWithName:(NSString *)nameStr
{
    if (self = [super init]) {
        self.name = [nameStr copy];
    }
    
    __block int shared;
    BLOCKOFNSLOG block1 = ^{
        shared = 1;
        NSLog(@"%@",self);
        NSLog(@"%d",shared);
    };
    block1();

    
    return self;
}

//==================下面是测试方法==================
//NSString *__globalString = nil;

- (void)testGlobalObj
{
    __globalString = @"1";
    void (^TestBlock)(void) = ^{
        NSLog(@"string is :%@", __globalString); //string is :(null)
    };
    __globalString = nil;
    TestBlock();
}


- (void)testStaticObj
{
    static NSString *__staticString = nil;
    __staticString = @"1";
    printf("static address: %p\n", &__staticString);    //static address: A
    
    void (^TestBlock)(void) = ^{
        printf("static address: %p\n", &__staticString); //static address: A
        
        NSLog(@"string is : %@", __staticString);   //string is : (null)
    };
    __staticString = nil;
    
    TestBlock();
}

//只有在使用local变量时，block会复制指针，且强引用指针指向的对象一次
//复制A得到B;
//A和B都指向本地变量
//A释放后，B还在
- (void)testLocalObj
{
    NSString *__localString = nil;
    __localString = @"1";
    printf("local address: %p\n", &__localString); //local address: A
    printf("localstring address: %p\n", __localString); //address: C
    
    void (^TestBlock)(void) = ^{
        printf("local address: %p\n", &__localString); //local address: B
        printf("localstring address: %p\n", __localString); //address: C
        NSLog(@"string is : %@", __localString); //string is : 1
        
    };
    __localString = nil;
    TestBlock();
}


- (void)testBlockObj
{
    
    __block NSString *_blockString = @"1";
    void (^TestBlock)(void) = ^{
        NSLog(@"string is : %@", _blockString); //string is : (null)
    };
    
    _blockString = nil;
    
    TestBlock();
}



- (void)testWeakObj
{
    NSString *__localString = @"1";
    __weak NSString *weakString = __localString;
     
    printf("weak address: %p\n", &weakString);  //weak address: A
    
    printf("weak str address: %p\n", weakString); //weak str address: B
    
    void (^TestBlock)(void) = ^{
        printf("weak address: %p\n", &weakString); //weak address: C
        printf("weak str address: %p\n", weakString); //weak str address: B
        
        NSLog(@"string is : %@", weakString); //string is :1
    };
    
    __localString = nil;
    TestBlock();
    
}
    
    


-(void)printLog
{
//    __block int shared;
//    BLOCKOFNSLOG block1 = ^{
//        shared = 1;
//        NSLog(@"%@",self);
//        NSLog(@"%d",shared);
//    };
//    block1();
    
    

}


-(NSString *)description{
    return [NSString stringWithFormat:@"name=%@",self.name];
}

-(void)dealloc{
    NSLog(@"no cycle retain");
}




@end
