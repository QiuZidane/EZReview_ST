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
        
    }
    return 0;
}
