//
//  MyCollectionViewCell.m
//  CollectionViewDemo
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"init...");
        [self prepareLayout];
    }
    return self;
}

-(void)prepareLayout {
    self.image = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 120, 60)];
    self.imgNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 75, 30, 60)];
    self.imgNameLabel.font = [UIFont fontWithName:@"Arial" size:8];
    [self.contentView addSubview:self.image];
    [self.contentView addSubview:self.imgNameLabel];
}

@end