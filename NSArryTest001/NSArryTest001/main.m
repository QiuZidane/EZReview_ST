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
        
        NSMutableArray *list = [[NSMutableArray alloc]init];
        NSNumber *n1 = @4.1;
        [list addObject:n1];
        [list addObject:@5.6];
        
        NSLog(@"list = %@",list);
        NSLog(@"list[0]=%@",list[0]);
        NSNumber *number1 = list[0];
        NSNumber *number2 = list[1];
        NSLog(@"number1=%@,  number2=%@",number1,number2);
        
        NSPoint somePoint = NSMakePoint(100,100);
        NSValue *pointValue = [NSValue valueWithPoint:somePoint];
        [list addObject:pointValue];
        NSLog(@"list[2]=%@",list[2]);
        
        [list addObject:[NSNull null]];
        NSLog(@"list[3]=%@",list[3]);
        
    }
    return 0;
}
