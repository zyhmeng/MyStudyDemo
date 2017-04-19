//
//  TwoViewController.m
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "TwoViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface TwoViewController ()


@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}
- (IBAction)buttonClick:(id)sender {
    
    if (self.delegateSubject) {
        
        [self.delegateSubject sendNext:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
