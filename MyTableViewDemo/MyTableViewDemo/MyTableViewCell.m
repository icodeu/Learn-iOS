//
//  MyTableViewCell.m
//  MyTableViewDemo
//
//  Created by wanghuan on 16/3/19.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setupCell {
    self.lbTitle.text = @"title";
    self.lbDesc.text = @"desc";
}

@end
