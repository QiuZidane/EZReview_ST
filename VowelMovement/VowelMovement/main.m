//
//  main.m
//  VowelMovement
//
//  Created by QiuZidane on 15/11/4.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
#define STR(x) # x
typedef int myint;
#define _X(A, B) (A#B) 


//声明Block变量
typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL*);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *oldStrings = @[@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi"];
        
        NSLog(@"old strings : %@", oldStrings);
        
        //新数组，用于保存除去元音后的单词
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSArray *vowels = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        
        ArrayEnumerationBlock devowelizer;
        
        //BOOL *stop---指向BOOL变量的指针，默认值NO，如果是YES，name数组对象会在执行完当前block对象后终止枚举过程
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                NSLog(@"找到y,退出枚举");
                *stop = YES;    //执行完当前的block对象后终止枚举过程
                return;         //结束当前正在执行的block对象,继续执行下一个对象
            }
            
            NSMutableString *strings = [NSMutableString stringWithString:string];
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [strings length]);   //这里得到每个string的长度
                [strings replaceOccurrencesOfString:s
                                         withString:@""
                                            options:NSCaseInsensitiveSearch
                                              range:fullRange];
            }
            [newStrings addObject:strings];
        };
        
        //NSArray的enumerateObjectsUsingBlock方法会讲数组里面每个object都用后面的block处理一次
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings : %@" , newStrings);

        MyClass *myclass = [[MyClass alloc]init];
        NSLog(@"name = %@",[myclass name]);
        [myclass initName];
        NSLog(@"name = %@",[myclass name]);
        NSLog(@STR(Programming in Objective-c./n));
        myint i = 0;

    }
    return 0;
}
