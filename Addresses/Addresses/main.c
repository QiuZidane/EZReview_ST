//
//  main.c
//  Addresses
//
//  Created by QiuZidane on 15/10/21.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p \n",addressOfI);
    printf("this func starts at %p \n",main);
    printf("the int stored at addressOfI is %d\n",*addressOfI); //通过*可以访问保存在某个地址中得数据
    
    *addressOfI = 89;
    printf("now i = %d\n",i);
    printf("An int is %zu bytes\n",sizeof(int));
    printf("sizeof(i) is %zu bytes\n",sizeof(i));
    printf("An addressOfI is %zu bytes\n",sizeof(addressOfI));
    
    float *myPointer = NULL;
    printf("myPointer = %p\n",myPointer);
    
    if (myPointer) {
        printf("111\n");
    }else{
        printf("222\n");
    }
    
    double floatValue1 =1.0;
    double *pointerOfFloatValue1 = &floatValue1;
    printf("sizeof doublepointer = %zu \n",sizeof(pointerOfFloatValue1));
    printf("sizeof double = %zu \n",sizeof(double));
    printf("max of short = %zu\n",sizeof(short));
    
    //两种指针用法：
    //第一种用法-声明指针，即指向某个变量的内存地址
    //第二种用法-通过指针访问某个地址的数据，可以用来赋值。即去引用
    double fv1;
    double fv2 = 18;
    double *ptr1 = &fv1;    //第一种用法
    double *ptr2;
    printf("fv2 address = %p, ptr1 address = %p\n",&fv2,ptr1);
    printf("size of *ptr2 = %zu\n",sizeof(ptr2)); //即使没有赋初值，但也分配了内存空间给指针了，是8byte
    printf("ptr2 address = %p\n",ptr2); //这里表明指针如果没有初始化，指向的地址是NULL的0X0
    ptr2 = &fv2; //第一种用法
    printf("ptr1 address = %p\n",ptr1);
    *ptr2 = 20;  //第二种用法，将fv2的值变成20了
    printf("fv2 = %.3f\n",fv2);
    
    float *ptr3 = malloc(1000*sizeof(float));
    printf("size of *ptr3 = %zu\n",sizeof(ptr3));
    
    return 0;
}
