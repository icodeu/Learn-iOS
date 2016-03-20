//
//  ViewController.h
//  MyTableViewDemo
//
//  Created by wanghuan on 16/3/19.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

