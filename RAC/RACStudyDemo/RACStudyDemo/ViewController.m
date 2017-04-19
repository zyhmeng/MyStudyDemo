//
//  ViewController.m
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "TestViewController.h"
#import "LoginViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) RACCommand *command;

@property (nonatomic, strong) LoginViewModel *loginViewModel;
@end

@implementation ViewController

- (LoginViewModel *)loginViewModel
{
    if (_loginViewModel == nil) {
        
        _loginViewModel = [[LoginViewModel alloc] init];
    }
    
    return _loginViewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // RACSubject类的基本使用
    //[self RACSubjectBasicUse];

    // 用RACSubject 代替delegate

    //  RACCommand 用于处理事件的类，可以把事件如何处理，事件中的数据如何传递，包装到这个类中
    [self RACCommand];
    
    [self mvvmLogin];
}

- (void)mvvmLogin
{
    
}

- (void)RACCommand
{
    RACCommand *command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        
        return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
            
            [subscriber sendNext:@"请求数据"];
            
            [subscriber sendCompleted];
            
            return nil;
        }];
    }];
    
    _command = command;
    
    [command.executionSignals subscribeNext:^(id x) {
       
        [x subscribeNext:^(id x) {
           
            NSLog(@"%@",x);
        }];
    }];
}

- (IBAction)buttonClick:(id)sender {
    

    TestViewController *twoVC = [[TestViewController alloc] init];
    
    twoVC.delegateSubject = [RACSubject subject];
    
    [twoVC.delegateSubject subscribeNext:^(id x) {
       
        NSLog(@"点击了button");
    }];
    
    [self presentViewController:twoVC animated:YES completion:nil];
}

- (void)RACSubjectBasicUse
{
    // 1. 创建信号
    RACSignal *siganl = [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        
        // 2.发送信号
        [subscriber sendNext:@1];
        
        [subscriber sendCompleted];
        
        return [RACDisposable disposableWithBlock:^{
            
            NSLog(@"信号被销毁");
        }];
    }];
    
    // 3.订阅信号，才会激活信号
    [siganl subscribeNext:^(id x) {
        
        NSLog(@"%@",x);
    }];
    
    //RACSubject: 自己可以充当信号，又能发送信号
    /*
     RACSubject 和 RACReplaySubject的区别
     RACReplaySubject 可以先发送信号，在订阅信号，RACSubject不可以
     */
    RACSubject *subject = [RACSubject subject];
    
    [subject sendNext:@12];
    [subject subscribeNext:^(id x) {
        
        NSLog(@"第一个订阅者%@",x);
    }];
    
    [subject subscribeNext:^(id x) {
        
        NSLog(@"第二个订阅者%@",x);
    }];
    
    RACReplaySubject *replaySubject = [RACReplaySubject subject];
    
    [replaySubject sendNext:@100];
    [replaySubject sendNext:@120];
    
    [replaySubject subscribeNext:^(id x) {
        
        NSLog(@"第一个订阅者%@",x);
    }];
    
    [replaySubject subscribeNext:^(id x) {
        
        NSLog(@"第二个订阅者%@",x);
    }];

}


@end
