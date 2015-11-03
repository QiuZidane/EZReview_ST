//
//  BNRLogger.m
//  Callbacks
//
//  Created by QiuZidane on 15/11/3.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return  [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//收到一定字节数的数据后会调用
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc]init];
    }
    [_incomingData appendData:data];
}

//最后一部分数据处理完毕后会调用
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters",[string length]);
    
//    NSLog(@"the whole string is %@", string);
}

//获取数据失败时会调用
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
}

-(void)diyFunc:(NSTimer *)t Seconds:(NSTimeInterval *)a{
    
}

@end
