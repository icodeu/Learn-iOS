//
//  ViewController.m
//  MasterNavigation
//
//  Created by wanghuan on 16/2/26.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "ViewController.h"
#import "CitiesViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) NSDictionary *dictData;
@property(nonatomic, strong) NSArray *listData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"provinces_cities" ofType:@"plist"];
    self.dictData = [NSDictionary dictionaryWithContentsOfFile:path];
    self.listData = [self.dictData allKeys];
    self.title = @"省份信息";
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

# pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    
    cell.textLabel.text = [self.listData objectAtIndex:indexPath.row];
    
    return cell;
}


#pragma mark - segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowSelectedProvince"]) {
        CitiesViewController *cityViewController = [segue destinationViewController];
        NSInteger selectedRow = [self.tableView.indexPathForSelectedRow row];
        NSString *title = [self.listData objectAtIndex:selectedRow];
        NSArray *array = [self.dictData objectForKey:title];
        
        cityViewController.listData = array;
        cityViewController.title = title;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
