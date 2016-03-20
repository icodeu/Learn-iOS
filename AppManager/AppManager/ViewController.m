//
//  ViewController.m
//  AppManager
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "AppInfo.h"
#import "AppViewCell.h"

// 常量定义
#define kScreenH [UIScreen mainScreen].bounds.size.height
#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kAppViewH [AppViewCell loadAppViewCell].bounds.size.height
#define kAppViewW [AppViewCell loadAppViewCell].bounds.size.width
#define kTotalCol 3

@interface ViewController () <AppViewCellDelegate>

@property(strong, nonatomic) NSArray* appViews;

@end

@implementation ViewController

- (NSArray *)appViews {
    if (!_appViews) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"app" ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:array.count];
        
        for (NSDictionary *dict in array) {
            AppInfo *appInfo = [AppInfo appInfoWithDict:dict];
            AppViewCell *appView = [AppViewCell loadAppViewCell];
            appView.appInfo = appInfo;
            appView.delegate = self;
            
            [arrayM addObject:appView];
        }
        
        _appViews = [arrayM copy];
    }
    return _appViews;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat margin = (kScreenW - kTotalCol * kAppViewW)/(kTotalCol + 1);
    
    for (int i = 0; i < self.appViews.count; i++) {
        AppViewCell *appView = self.appViews[i];
        
        int col = i % kTotalCol;
        int row = i / kTotalCol;
        
        CGFloat centerX = (margin + kAppViewW * 0.5) + (margin + kAppViewW) * col;
        CGFloat centerY = (margin + kAppViewH * 0.5) + (margin + kAppViewH) * row;
        
        appView.center = CGPointMake(centerX, centerY);
        [self.view addSubview:appView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

# pragma mark - AppViewCellDelegate
- (void)downloadClickWithBtn:(UIButton *)btn {
    //1. 获取应用名称
    AppViewCell *cell = (AppViewCell *)btn.superview;
    NSString *name = cell.appInfo.name;
    
    //2. 创建菊花
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicatorView.frame = self.view.bounds;
    [indicatorView startAnimating];
    [self.view addSubview:indicatorView];
    
    //3. 将信息添加到菊花上
    UILabel *downloadLabel = [[UILabel alloc] init];
    downloadLabel.frame = CGRectMake(0, kScreenH*0.5 + 10, kScreenW, 20);
    downloadLabel.textColor = [UIColor whiteColor];
    downloadLabel.backgroundColor = [UIColor blackColor];
    downloadLabel.alpha = 0.5;
    downloadLabel.textAlignment = NSTextAlignmentCenter;
    downloadLabel.text = [NSString stringWithFormat:@"%@正在下载", name];
    downloadLabel.font = [UIFont systemFontOfSize:15.0];
    [indicatorView addSubview:downloadLabel];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [indicatorView stopAnimating];
        
        [UIView animateWithDuration:2.0 animations:^{
            // 执行动画
        } completion:^(BOOL finished) {
            // 动画完成后需要做的事情
            btn.enabled = NO;
            [btn setTitle:@"已下载" forState:UIControlStateDisabled];
        }];

    });
}

@end
