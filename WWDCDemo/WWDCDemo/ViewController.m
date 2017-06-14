//
//  ViewController.m
//  WWDCDemo
//
//  Created by zyh on 2017/5/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIView performWithoutAnimation:^{
        
    }];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    
    NSString *dateStr = [[NSUserDefaults standardUserDefaults] objectForKey:@"dateStr"];

    label.text = dateStr;
    label.textColor = [UIColor blackColor];
    
    self.label = label;
    [self.view addSubview:label];
    

}

- (void)viewWillAppear:(BOOL)animated
{
    self.label.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"dateStr"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
