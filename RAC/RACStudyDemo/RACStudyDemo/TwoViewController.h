//
//  TwoViewController.h
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RACSubject;
@interface TwoViewController : UIViewController

@property (nonatomic, strong) RACSubject *delegateSubject;
@end
