//
//  BNRLogger.h
//  Callbacks
//
//  Created by QiuZidane on 15/11/3.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString* String;

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
@property (nonatomic) String a;

-(void)zoneChange:(NSNotification *)note;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;

@end
