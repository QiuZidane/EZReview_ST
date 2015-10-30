//
//  main.m
//  BMITime
//
//  Created by QiuZidane on 15/10/26.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        BNREmployee *mikey = [[BNREmployee alloc] init];
//        
//        
//        mikey.weightInKilos = 96;   //[mikey setWeightInKilos:96];
//        mikey.heightInMeters = 1.8; //[mikey setHeightInMeters:1.8];
//        mikey.employeeID = 12;
//        mikey.hireDate = [NSDate dateWithTimeIntervalSinceNow:-3*31557600.0];
//        
//        BNRPerson *mary = [[BNRPerson alloc]init];
//        mikey.spouse = mary;//或者[mikey setSpouse:mary];
//        
//        mikey.spouse.weightInKilos = 70;
//        mikey.spouse.heightInMeters = 1.7;
//        NSLog(@"spouse.weightInKilos=%i",mary.weightInKilos);
//        float spouseBMI = mikey.spouse.bodyMassIndex;
//        NSLog(@"spouseBMI = %.2f",spouseBMI);
//        NSLog(@"mary weight = %i , tall = %f, bmi = %f",mikey.spouse.weightInKilos,mary.heightInMeters,mary.bodyMassIndex);
//        
//        float height = mikey.heightInMeters;
//        int weight = mikey.weightInKilos;
//                
//        NSLog(@"mikey is %.2f 米高 and %d kilograms重",height,weight);
//        NSLog(@"Employee %u hired on %@",mikey.employeeID,mikey.hireDate);
//        
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f",bmi);
//        double years = [mikey yearOfEmployment];
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years,",bmi,years);
//        
//        NSLog(@"mikey description:%@",[mikey description]);
        
        
        
        //创建一个数组，用来包含多个BNREmployee对象
        NSMutableArray *employees = [NSMutableArray array];
        
        //用于存放头衔
        NSMutableDictionary * excutives = [[NSMutableDictionary alloc]init];
        
        for (int i =0; i<5; i++) {
            //创建BNREmployee实例
            BNREmployee *mikey = [[BNREmployee alloc]init];

            
            //为实例变量赋值
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            
            //将创建的BNREmployee实例加入数组
            [employees addObject:mikey];
//            NSLog(@"employee = %@",mikey);
//            NSLog(@"employee = %@",employees[i]);
            
            if (i == 0) {
                [excutives setObject:mikey forKey:@"CEO"];
            }
            if (i == 1) {
                [excutives setObject:mikey forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        //创建多个BNRAsset对象
        for (int i = 0; i<5; i++) {
            BNRAsset *asset = [[BNRAsset alloc]init];
            
            //设置标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            //生成0至3之间的随机整数(包含0和3)
            NSUInteger randomIndex = random() % [employees count];
            NSLog(@"抽到%lu",randomIndex);
            
            //取出相应的BNREmployee对象
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //将BNRAsset对象赋给该BNREmployee对象
            [randomEmployee addAssets:asset];
            
            //NSLog(@"准备释放");
            
            //[randomEmployee removeAssets:asset];
            
            [allAssets addObject:asset];
            
        }
        
        NSLog(@"executives :%@",excutives);
        
        NSLog(@"CEO = %@ ,CTO = %@",[excutives objectForKey:@"CEO"],excutives[@"CTO"]);
        
        //输出employees前排序
        //valueOfAssets和employeeID是employees的两个属性(或者含返回值的方法)
        //通过sortDescriptorWithKey创建NSSortDescriptor排序描述对象，实参是属性和排序方向（上升/下降）
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        //通过sortUsingDescriptors方法，排序数组，可以有多个排序条件。
        //:@[voa,eid]是一个NSArray
        [employees sortUsingDescriptors:@[voa,eid]];
        
        //输出employees
        NSLog(@"Employees: %@", employees);
        
        
        //过滤掉没有assets的Employee
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 700"];
//        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSMutableArray *toBeReclaimed = allAssets;
        [toBeReclaimed filterUsingPredicate:predicate];
        
        
        NSLog(@"assets toBeReclaimed = %@",toBeReclaimed);
        
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:2];
        
        NSLog(@"Giving up ownership of arrays");
        
        employees[0] = @"123";
        
        NSLog(@"222");
        
        
//        [employees removeAllObjects];   //removeabject后立刻调用dealloc，
        employees = nil;              //而指针指向nil貌似要等autoreleasepool来释放
        
        NSLog(@"111");
             
        
        
    }
    
    sleep(2);
    return 0;
}
