//
//  ViewController.m
//  TEST001
//
//  Created by QiuZidane on 15/11/8.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    
    
    [super viewDidLoad];

    
    
    CGRect tableFrame = CGRectMake(0, 80, self.view.bounds.size.width, self.view.bounds.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    self.taskTable = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    self.taskField = [[UITextField alloc]initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    //按钮设置
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    [self.insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.taskTable];
    [self.view addSubview:self.taskField];
    [self.view addSubview:self.insertButton];
    
    //    self.window.backgroundColor = [UIColor whiteColor];
    //    [self.window makeKeyAndVisible];
    
    self.tasks = [NSMutableArray array];
    
    self.taskTable.dataSource = self;
    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Actions
- (void)addTask:(id)sender
{
    NSString *text = [self.taskField text];
    if ([text length] == 0) {
        return;
    }
    NSLog(@"Task entered : %@",text);

    [self.tasks addObject:text];
    
    //刷新tableview
    [self.taskTable reloadData];
    
    [self.taskField setText:@""];
    [self.taskField resignFirstResponder];
}

#pragma mark - UITableViewDataSource---methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasks count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    return c;
}

@end
