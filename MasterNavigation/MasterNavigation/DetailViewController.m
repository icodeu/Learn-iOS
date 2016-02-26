//
//  DetailViewController.m
//  MasterNavigation
//
//  Created by wanghuan on 16/2/26.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *mWebView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.url]];
    [self.mWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
