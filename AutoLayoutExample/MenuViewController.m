//
//  MenuViewController.m
//  AutoLayoutExample
//
//  Created by Yu Sugawara on 2015/03/10.
//  Copyright (c) 2015年 Yu Sugawara. All rights reserved.
//

#import "MenuViewController.h"

/**
 *  参照:
 *  [iOS] Auto Layout を使いこなす。UITableViewCell と UIScrollView 編
 *  http://hamasyou.com/blog/2014/10/09/ios-autolayout-scrollview-tablecell/
 *
 *  What's New in Cocoa Touchをまとめた　〜Size Class大事〜
 *  http://qiita.com/mo_to_44/items/286680c5a5ad1509f0cf
 *
 *  実践 Auto Layout
 *  http://blog.jarinosuke.com/entry/auto-layout-best-practice
 */

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell*)sender
{
    UIViewController *vc = [segue destinationViewController];
    vc.title = sender.textLabel.text;
}

@end
