//
//  main.m
//  StringZ
//
//  Created by QiuZidane on 15/11/1.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        //===============写入文件===============
        NSMutableString *str = [[NSMutableString alloc]init];
        for (int i = 0 ; i < 10;  i++) {
            [str appendString:@"Zidane is cool!(⊙o⊙)哦\n"];
        }
        NSError *error;
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error]; //如果不需要知道error详情，传入NULL即可，否则传入一个指向指针(NSError对象的指针)的指针  ---P199有详情
        
        if (success) {
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"failed localizedDescription: %@",[error localizedDescription]);
            NSLog(@"failed localizedFailureReason: %@",[error localizedFailureReason]);
            NSLog(@"failed localizedRecoverySuggestion: %@",[error localizedRecoverySuggestion]);
        }
        
        //===============读取文件===============
        NSError *error2;
        NSString *str2 = [[NSString alloc]initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error2];
        if (!str2) {
            NSLog(@"read failed : %@",[error2 localizedDescription]);
        } else {
            NSLog(@"resolv.comf looks like this %@", str2);
        }
        
        
        
    
    }
    return 0;
}
