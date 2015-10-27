//
//  main.c
//  StructTest001
//
//  Created by QiuZidane on 15/10/22.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long secondSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970 \n",secondSince1970);
    
    struct tm now;
    localtime_r(&secondSince1970, &now);
    printf("The time is %d-%d-%d %d:%d:%d\n",now.tm_mon+1,now.tm_mday,now.tm_year+1900,now.tm_hour,now.tm_min,now.tm_sec);
    
    return 0;
}
