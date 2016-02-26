//
//  CitiesViewController.m
//  MasterNavigation
//
//  Created by wanghuan on 16/2/26.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "CitiesViewController.h"
#import "DetailViewController.h"

@interface CitiesViewController ()

@end

@implementation CitiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *dictData = [self.listData objectAtIndex:indexPath.row];
    NSString *name = [dictData objectForKey:@"name"];
    NSString *url = [dictData objectForKey:@"url"];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    
    cell.textLabel.text = name;
    
    return cell;
}


#pragma mark - segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowSelectedCity"]) {
        DetailViewController *detailController = [segue destinationViewController];
        NSInteger selectedIndex = [self.tableView.indexPathForSelectedRow row];
        NSDictionary *dict = [self.listData objectAtIndex:selectedIndex];
        detailController.url = [dict objectForKey:@"url"];
        detailController.title = [dict objectForKey:@"name"];
    }
}

@end
