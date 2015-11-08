//
//  main.m
//  Collection
//
//  Created by QiuZidane on 15/10/30.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyCollections.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSSet *set1 = [NSSet setWithObjects:@1,@2,@3, nil];
        NSLog(@"set1 = %@",set1);
        
        if ([set1 containsObject:@1]) {
            NSLog(@"yes");
        }
        
        NSMutableSet *mset1 = [[NSMutableSet alloc]init];
        [mset1 addObject:@1];
        
        if ([mset1 containsObject:@1]) {
            NSLog(@"true");
        } else {
            NSLog(@"false");
        }
        
//字典可以嵌套
NSDictionary *numberOfMoons = @{
                                @"Mercury"  :@0,
                                @"Venus"    :@0,
                                @"Earth"    :@[@"A",@"B"],
                                @"Mars"     :@"2",
                                @"Jupiter"  :@[],
                                @"Saturn"   :@[@"Luna"],
                                };
        
        NSString *marsMoonCount = numberOfMoons[@"Mars"];   //自动将NSNumber转换成NSString了
        NSLog(@"marsMoonCount=%@",marsMoonCount);
        
        MyCollections *mc = [[MyCollections alloc]init];
        
        NSLog(@"mc = %@",mc.odds);

        
        
        
    }
    
    
    
    
    return 0;
}
