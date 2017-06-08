//
//  CustomTranstionsViewController.m
//  WWDCDemo
//
//  Created by zyh on 2017/5/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "CustomTranstionsViewController.h"

@interface CustomTranstionsViewController ()

@end

@implementation CustomTranstionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self customViewAnimate];
    
    
}

#pragma mark - iOS7 自定义动画
- (void)customViewAnimate
{
    [UIView animateKeyframesWithDuration:0.35 delay:0 options:0 animations:^{
       
        //[UIView addKeyframeWithRelativeStartTime:<#(double)#> relativeDuration:<#(double)#> animations:<#^(void)animations#>]
    } completion:^(BOOL finished) {
       
    }];
    
}
@end
