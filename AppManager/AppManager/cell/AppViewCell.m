//
//  AppView.m
//  AppManager
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "AppViewCell.h"
#import "AppInfo.h"

@interface AppViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AppViewCell
- (IBAction)downloadBtnOnClick:(id)sender {
    if ([self.delegate respondsToSelector:@selector(downloadClickWithBtn:)]) {
        [self.delegate downloadClickWithBtn:sender];
    }
}

+ (instancetype)loadAppViewCell {
    return [[[NSBundle mainBundle] loadNibNamed:@"AppViewCell" owner:nil options:nil] lastObject];
}

- (void)setAppInfo:(AppInfo *)appInfo {
    _appInfo = appInfo;
    self.iconView.image = appInfo.image;
    self.nameLabel.text = appInfo.name;
}

@end