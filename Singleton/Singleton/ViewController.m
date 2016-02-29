//
//  ViewController.m
//  Singleton
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Singleton sharedManager].singletonData = @"hello";
    
    NSString *singleData = [Singleton sharedManager].singletonData;
    
    NSLog(@"singleData = %@", singleData);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
