//
//  main.m
//  ImageFetch
//
//  Created by QiuZidane on 15/11/1.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        #pragma mark ======通过NSData读取网上图片数据======
        NSURL *url = [NSURL URLWithString:@"http://yes1.feng.com/images/%E8%AE%BA%E5%9D%9B%E6%96%B0logo.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        //NSURLConnection的sendSynchronousRequest方法在OS10.11不推荐了，推荐使用NSURLSession，http://objccn.io/issue-5-4/有详细说明
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/weiphone.png" options:NSDataWritingAtomic error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [ error localizedDescription]);
            return 2;
        }
        
        NSLog(@"Success! on reading image via HTTP");
        
        #pragma mark ======从文件读取数据并存入NSData对象======
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/weipho1ne.png" options:0 error:&error];
        if (!readData) {
            NSLog(@"read fail : %@" , [error localizedDescription]);
        }
        NSLog(@"the file read from the disk has %lu bytes",(unsigned long)[readData length]);
        
        #pragma mark ======寻找指定目录======
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        NSString *desktopPath = desktops[0];
        
        NSLog(@"desktop path = %@",desktopPath);
        
        
        
    }
    return 0;
}
