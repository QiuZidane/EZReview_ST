//
//  BNRLogger.h
//  Callbacks
//
//  Created by QiuZidane on 15/11/3.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;
-(void)diyFunc:(NSTimer *)t Seconds:(NSTimeInterval *)a;

@end
