//
//  LoginViewModel.h
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RACCommand;
@class RACSignal;
@interface LoginViewModel : NSObject

@property (nonatomic, strong) NSString *account;
@property (nonatomic, strong) NSString *password;

@property (nonatomic, strong, readonly) RACSignal *enableLoginSignal;
@property (nonatomic, strong, readonly) RACCommand *loginCommand;

@end
