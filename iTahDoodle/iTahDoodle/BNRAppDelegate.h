//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by QiuZidane on 15/11/8.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window; //UIWindow对应iOS应用的屏幕

@property (nonatomic,strong) UIViewController *myViewController;


@property (nonatomic,strong) UITableView *taskTable;
@property (nonatomic,strong) UITextField *taskField;
@property (nonatomic,strong) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;

@end
