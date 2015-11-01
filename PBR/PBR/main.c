//
//  main.c
//  PBR
//
//  Created by QiuZidane on 15/10/21.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    double anotherPart;
    double *pointer; //= &anotherPart;
    
    //将integerPart的地址作为实参传入----即将计算结果存放到integerPart的地址中
    fractionPart = modf(pi, &integerPart);
    
//    fractionPart = modf(pi, pointer); //----送NULL作为参数，报 EXC_BAD_ACCESS (code=1, address=0x0)
    
    //获取integer地址上的值
    printf("integerPart=%0.0f,fractionPart=%0.2f\n",integerPart,fractionPart);
    //printf("integerPart=%0.0f\n",anotherPart);
    
    return 0;
}
