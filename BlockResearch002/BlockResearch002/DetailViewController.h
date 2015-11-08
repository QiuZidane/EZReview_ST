//
//  DetailViewController.h
//  BlockResearch002
//
//  Created by QiuZidane on 15/11/7.
//  Copyright © 2015年 QiuZidane. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

