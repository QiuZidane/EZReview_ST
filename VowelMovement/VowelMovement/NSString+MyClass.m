//
//  NSString+MyClass.m
//  VowelMovement
//
//  Created by QiuZidane on 15/11/5.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "NSString+MyClass.h"

@implementation NSString (MyClass)

-(id)appendIngNewString:(NSString *)newString{
    NSMutableString *result = [NSMutableString stringWithString:self];
    [result appendString:newString];
    
    return result;
}

@end
