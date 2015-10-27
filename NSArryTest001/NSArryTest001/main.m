//
//  main.m
//  NSArryTest001
//
//  Created by QiuZidane on 15/10/25.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24*60*60];
        NSDate * yesterday = [now dateByAddingTimeInterval:-24*60*60];
        
        NSArray *dateList = @[now,tomorrow,yesterday];
        
        NSLog(@"the first date is %@",dateList[0]);
        NSLog(@"the last date is %@",dateList[2]);
        NSLog(@"there are %lu dates",[dateList count]);
        
        for (NSDate *d in dateList) {
            NSLog(@"here is a date :%@",d);
        }
    }
    return 0;
}
