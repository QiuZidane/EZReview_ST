//
//  main.m
//  Callbacks
//
//  Created by QiuZidane on 15/11/3.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BNRLogger *logger = [[BNRLogger alloc]init];
        
        //object--指的是observer只对这个对象的notification做反应，nil则不区分，只要收到name的notification都响应
//        [[NSNotificationCenter defaultCenter] addObserver:logger
//                                                 selector:@selector(zoneChange:)
//                                                     name:NSSystemTimeZoneDidChangeNotification
//                                                   object:nil];
        
        
        //练习2:
        [[NSNotificationCenter defaultCenter]addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                         object:nil
                                                          queue:nil
                                                     usingBlock:^(NSNotification *note){
                                                         NSLog(@"The system time zone has changed!");
                                                     }];
        
//        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]initWithRequest:request delegate:logger startImmediately:YES];


        
        //设置定时器
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                          target:logger
//                                                        selector:@selector(updateLastTime:)
//                                                        userInfo:nil
//                                                         repeats:YES];
        
        //NSRunLoop类是运行循环，会持续等待，特定的事件发生，然后触发回调
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}
