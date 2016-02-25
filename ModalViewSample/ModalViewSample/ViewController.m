//
//  ViewController.m
//  ModalViewSample
//
//  Created by wanghuan on 16/2/25.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerCompletion:) name:@"RegisterCompletionNotification" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)registerCompletion:(NSNotification *) notification {
    NSDictionary *dictData = [notification userInfo];
    NSString *username = [dictData objectForKey:@"username"];
    NSLog(@"username = %@", username);
}

@end
