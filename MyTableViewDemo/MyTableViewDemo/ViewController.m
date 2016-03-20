//
//  ViewController.m
//  MyTableViewDemo
//
//  Created by wanghuan on 16/3/19.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *reUseId = @"mycell";
    static BOOL isReg = NO;
    if (!isReg) {
        [tableView registerNib:[UINib nibWithNibName:@"MyTableViewCell" bundle:nil] forCellReuseIdentifier:reUseId];
        isReg = YES;
    }
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reUseId];
    [cell setupCell];
    return cell;
}


@end
