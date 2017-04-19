//
//  LoginViewModel.m
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "LoginViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>


@implementation LoginViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self initBind];
    }
    return self;
}

- (void)initBind
{
    _enableLoginSignal = [RACSignal combineLatest:@[RACObserve(self, account)] reduce:^id{
       
        return @(_account.length);
    }];
}
@end
