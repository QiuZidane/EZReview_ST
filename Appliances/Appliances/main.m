//
//  main.m
//  Appliances
//
//  Created by QiuZidane on 15/11/9.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc]initWithProductName:@"Zidane"];
        NSLog(@"a is %@",a);
        
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
        
        BNROwnedAppliance *oa = [[BNROwnedAppliance alloc]initWithProductName:@"Toaster"];
        NSLog(@"oa is %@",oa);
        
        BNRAppliance *c = [a copy];
        NSLog(@"c is %@",c);
        NSLog(@"address of a :%p",&a);
        NSLog(@"address of c :%p",&c);
        
        
        NSMutableString *mstr = [NSMutableString stringWithString:@"origin"];
        NSString *strCopy = [mstr copy];
        NSString *aaa = [strCopy copy];
        
        NSLog(@"address of mstr=%p",&mstr);         //addressA
        NSLog(@"address of strCopy=%p",&strCopy);   //addressB
        NSLog(@"address of aaa=%p",&aaa);           //addressC
        
   
        
    }
    return 0;
}
