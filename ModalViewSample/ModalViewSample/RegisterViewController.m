//
//  RegisterViewController.m
//  ModalViewSample
//
//  Created by wanghuan on 16/2/25.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *tfName;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^ {
        NSLog(@"cancel click");
    }];
}

- (IBAction)save:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^ {
        NSLog(@"save click");
        NSDictionary *dataDict = [NSDictionary dictionaryWithObject:self.tfName.text forKey:@"username"];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompletionNotification" object:nil userInfo:dataDict];
    }];
}
@end
