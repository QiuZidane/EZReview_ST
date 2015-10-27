//
//  main.m
//  NSStringTest001
//
//  Created by QiuZidane on 15/10/25.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>  //-->要使用这个函数，需要加入libreadline库类


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *listOfNames = @"....zidane";
        NSString *name = @"Zidane";
//        NSRange match1 = [listOfNames rangeOfString:name];  //rangeOfString是区分大小写的
        NSRange match2 = [listOfNames rangeOfString:name options:NSCaseInsensitiveSearch];
        
        if (match2.location == NSNotFound) {
            NSLog(@"找不到");
        } else {
            NSLog(@"location = %li",match2.location);
        }
        
        NSLog(@"请输入.....");
        const char *who = readline(NULL);
        NSString *theName = [NSString stringWithUTF8String:who];
        NSLog(@"%@ is cool",theName);
        
    }
    return 0;
}
