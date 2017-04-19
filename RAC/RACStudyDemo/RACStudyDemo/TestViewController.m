//
//  TestViewController.m
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "TestViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)buttonClick:(id)sender {
    
    if (self.delegateSubject) {
        
        [self.delegateSubject sendNext:@1];
    }
}


@end
