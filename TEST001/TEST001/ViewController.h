//
//  ViewController.h
//  TEST001
//
//  Created by QiuZidane on 15/11/8.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController <UITableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@end

