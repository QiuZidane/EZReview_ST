//
//  main.m
//  BlockResearch001
//
//  Created by QiuZidane on 15/11/6.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockClass.h"

typedef double(^BLOCKOFDOUBLE)(double,double);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BlockClass *b1 = [[BlockClass alloc]initWithName:@"Zidane"];
//        NSLog(@"%@",b1);
//        [b1 printLog];
        
        __block int shared;
        BLOCKOFNSLOG block1 = ^{
            shared = 1;
            NSLog(@"%@",b1);
            NSLog(@"%d",shared);
        };
        block1();
        
        BLOCKOFNSLOG block2;
        NSLog(@"block2 is %@",^{
            shared = 1;
            NSLog(@"%@",b1);
            NSLog(@"%d",shared);
        });
        block2 = [block1 copy]; //arc中这里已经是NSMallocBlock，NSMallocBlock支持retain、release，虽然retainCount始终是1，但内存管理器中仍然会增加、减少计数。copy之后不会生成新的对象，只是增加了一次引用，类似retain
        block2();
        NSLog(@"block2 is %@",block2);
        
        
        /**
         *  详细说明：
         *
        **/
        //NSGlobalBlock：类似函数，位于text段
        float (^sum)(float, float) = ^(float a, float b){
            return a + b;
        };
        NSLog(@"block is %@", sum); //block is <__NSGlobalBlock__: xxxx>
        
        
        //NSStackBlock：位于栈内存，函数返回后Block将无效
        NSArray *testArr = @[@"1", @"2"];
        void (^TestBlock)(void) = ^{
            NSLog(@"testArr :%@", testArr);
        };
        NSLog(@"block is %@", ^{
            NSLog(@"test Arr :%@", testArr);
        });     //block is <__NSStackBlock__: xxxx>
        
        
        //下面这句在非arc中打印是 NSStackBlock, 但是在arc中就是NSMallocBlock
        //即在arc中默认会将block从栈复制到堆上，而在非arc中，则需要手动copy.
        NSLog(@"block is %@", TestBlock);    //block is <__NSMallocBlock__: xxxx>
       
        


        printf("testGlobalObj: \n");
        [b1 testGlobalObj];
        printf("testStaticObj: \n");
        [b1 testStaticObj];
        printf("testLocalObj: \n");
        [b1 testLocalObj];
        printf("testBlockObj: \n");
        [b1 testBlockObj];
        printf("testWeakObj: \n");
        [b1 testWeakObj];
        
        b1.string1 = @"111";
        b1.string2 = b1.string1;
        b1.string1 = nil;
        NSLog(@"b1.string2 = %@",b1.string2);
        
        
        NSLog(@"======Done=======");
        
        
        
    }
    
    sleep(1000);
    
    return 0;
}
