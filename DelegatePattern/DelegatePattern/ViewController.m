//
//  ViewController.m
//  DelegatePattern
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "PhilosopherDelegate.h"
#import "Philosopher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Philosopher *philosopher = [[Philosopher alloc] init];
    philosopher.delegate = self;
    [philosopher start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - PhilosopherDelegate
- (void)eat {
    NSLog(@"ViewController eat");
}

- (void)sleep {
    NSLog(@"ViewController sleep");
}

- (void)work {
    NSLog(@"ViewController work");
}

@end
