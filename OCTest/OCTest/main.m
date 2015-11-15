//
//  main.m
//  OCTest
//
//  Created by QiuZidane on 15/10/30.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCTestClass.h"
#define MYMAX(a,b) (a>b)?a:b

int MYSPEED = 100;
typedef double(^block1)(double,double);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"\u03c0 is %f",M_PI);
        NSLog(@"A_A = %f",A_A);
        NSLog(@"%d is larger ",MYMAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:@"currency"];
        NSString * currency1 = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"money is %@",currency);
        NSLog(@"money1 is %@",currency1);
        
        OCTestClass *test1 = [[OCTestClass alloc]init];
        [test1 setSpeed:3];
        NSLog(@"speed = %d",[test1 speed]);
        test1.speedOnPro = BlenderSpeedLiquify;
        NSLog(@"speedOnPro = %d",test1.speedOnPro);
        test1.me = bb;
        NSLog(@"me = %u",test1.me);
        NSLog(@"PP= %@",QSD);
        
        NSLog(@"MYSPEED = %d",[test1 mySpeed]);
        NSLog(@"%@ 写于 %@",@"丘士丹",
              @"2015/11/1");
        
        block1 divBlock = ^(double dividend, double divisor) {
            double quotient = dividend / divisor ;
            return quotient;
        };
        
        double myQuotient = divBlock(20,10);
        NSLog(@"quotient = %f", myQuotient);
        
        
        void (^myBlock)();
        myBlock = ^{
            NSLog(@"123");
        };
        myBlock();//block调用要(参数)，无参数则()
        
        if (![test1 respondsToSelector:@selector(notExistMethod:)]) {
            printf("method does not exist \n");
        }
        
        //Property List: PLIST
        //新建plist文件，写入本地--使用NSArray的writeToFile方法
        NSMutableArray *plistArray = [NSMutableArray array];
        NSMutableDictionary *plist = [[NSMutableDictionary alloc]init];
        
        [plist setObject:@[@"1",@"2",@"3"] forKey:@"NSArray"];
        [plist setObject:[NSNumber numberWithInt:100] forKey:@"NSNumber"];
        [plist setObject:[[NSDictionary alloc]initWithObjects:@[@"dict",@"123"] forKeys:@[@"NSString1",@"NSString2"]] forKey:@"NSDictionary"];
        
        [plistArray addObject:plist];
        
        plist = [[NSMutableDictionary alloc]init];
        [plist setObject:[NSDate date] forKey:@"NSDate"];
        [plist setObject:@YES forKey:@"BOOL"];
        [plistArray addObject:plist];
        
        NSLog(@"plistArray bool = %@",[plistArray[1] objectForKey:@"BOOL"]);
        
        [plistArray writeToFile:@"/tmp/plistArray.plist" atomically:YES];
        
        
        //新建NSArray，读取plist文件--使用arrayWithContentsOfFile方法
        NSArray *plistArray2 = [NSArray arrayWithContentsOfFile:@"/tmp/plistArray.plist"];
        if (plistArray2.count != 0) {
            for (NSDictionary *d in plistArray2) {
                NSLog(@"id in dictionary : %@", [[d objectEnumerator] allObjects]); //枚举dict内每个元素
                NSLog(@"====================");
            }
        } else {
            NSLog(@"load error");
        }
        
        
        
        
    }
    return 0;
}

@protocol MyProtocol <NSObject>

-(void)print;

@end
