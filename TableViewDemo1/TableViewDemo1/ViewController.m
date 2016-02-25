//
//  ViewController.m
//  TableViewDemo1
//
//  Created by wanghuan on 16/2/24.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSArray *listTeams;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"team" ofType:@"plist"];
    self.listTeams = [NSArray arrayWithContentsOfFile:path];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _listTeams.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"CellIdentifier";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    NSInteger row = [indexPath row];
    NSDictionary *rowDict = [self.listTeams objectAtIndex:row];
    NSString *name = [rowDict objectForKey:@"name"];
    NSString *image = [rowDict objectForKey:@"image"];
    NSString *imagePath = [image stringByAppendingString:@".png"];
    
    cell.mLabel.text = name;
    cell.mImageView.image = [UIImage imageNamed:imagePath];
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"select %d", [indexPath row]);
}


@end
