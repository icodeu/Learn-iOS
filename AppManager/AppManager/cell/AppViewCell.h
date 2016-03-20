//
//  AppView.h
//  AppManager
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppInfo;

@protocol AppViewCellDelegate <NSObject>
@optional
- (void)downloadClickWithBtn:(UIButton *)btn;
@end

@interface AppViewCell : UIView

@property (strong, nonatomic) AppInfo* appInfo;
@property (strong, nonatomic) id<AppViewCellDelegate> delegate;

+ (instancetype)loadAppViewCell;

@end