//
//  TableView.m
//  AutoLayoutExample
//
//  Created by Yu Sugawara on 2015/03/10.
//  Copyright (c) 2015年 Yu Sugawara. All rights reserved.
//

#import "TableView.h"

/* http://stackoverflow.com/questions/17334478/uitableview-within-uiscrollview-using-autolayout#comment30755051_17335818 */

@implementation TableView

- (CGSize)intrinsicContentSize
{
    [self layoutIfNeeded];
    NSLog(@"%@", NSStringFromUIEdgeInsets(self.contentInset));
    return CGSizeMake(UIViewNoIntrinsicMetric,
                      self.contentSize.height + self.contentInset.top + self.contentInset.bottom);
}

@end
