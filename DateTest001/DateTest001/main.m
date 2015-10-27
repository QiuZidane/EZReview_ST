//
//  main.m
//  DateTest001
//
//  Created by QiuZidane on 10/23/15.
//  Copyright © 2015 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@",now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970",seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth forDate:now];
        unsigned long month = [cal ordinalityOfUnit:NSCalendarUnitMonth
                                             inUnit:NSCalendarUnitYear
                                            forDate:now];
        NSLog(@"This is day %lu of the month",day);
        NSLog(@"This is month %lu of the year",month);
        
        NSDate *nowagain = [[NSDate alloc] init];
        NSDate *ptr = nil;
        NSLog(@"ptr = %@",ptr);
        [ptr dateByAddingTimeInterval:100000];  //OC里面，向nil发送消息，不会出错
        id ptr1;
        
        
        //Challenge 14.7 is below
        NSDate *now1 = [[NSDate alloc]init];
        double seconds1 = 12*365*24*3600 + 9*31*24*3600 -3*24*3600;
        NSDate *birthday = [[NSDate alloc] initWithTimeIntervalSince1970:seconds1];
        NSLog(@"birthday = %@",birthday);
        double secondSinceNow = [now timeIntervalSinceDate:birthday];
        NSLog(@"secondSinceNow=%f",secondSinceNow);
        
       
        NSDateComponents *coms = [[NSDateComponents alloc]init];
        [coms setYear:1982];
        [coms setMonth:10];
        [coms setDay:1];
        [coms setHour:11];
        [coms setMinute:1];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:coms];
        NSLog(@"dateOfBirth=%@",dateOfBirth);
        
        
        
        
    }
    return 0;
}
