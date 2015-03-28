//
//  TableViewController.m
//  AutoLayoutExample
//
//  Created by Yu Sugawara on 2015/03/10.
//  Copyright (c) 2015年 Yu Sugawara. All rights reserved.
//

#import "ViewControllerInTableView.h"

@interface ViewControllerInTableView () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewControllerInTableView

- (void)viewDidLoad
{
    [super viewDidLoad];
}
/*
- (void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super willTransitionToTraitCollection:newCollection
                 withTransitionCoordinator:coordinator];
    [self.tableView invalidateIntrinsicContentSize];
}
*/
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    
    return cell;
}

@end
