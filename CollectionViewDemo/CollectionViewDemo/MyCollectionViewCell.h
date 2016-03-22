//
//  MyCollectionViewCell.h
//  CollectionViewDemo
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *imgNameLabel;
@property (strong, nonatomic) UIImageView *image;

- (void)prepareLayout;

@end
