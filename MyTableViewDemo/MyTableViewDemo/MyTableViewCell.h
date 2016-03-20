//
//  MyTableViewCell.h
//  MyTableViewDemo
//
//  Created by wanghuan on 16/3/19.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (weak, nonatomic) IBOutlet UILabel *lbDesc;

- (void)setupCell;

@end
