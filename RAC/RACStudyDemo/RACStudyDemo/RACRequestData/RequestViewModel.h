//
//  ReauesViewModel.h
//  RACStudyDemo
//
//  Created by zyh on 2017/4/15.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class RACCommand;
@interface RequestViewModel : NSObject<UITableViewDataSource>

@property (nonatomic, strong, readonly) RACCommand *requesCommand;
@property (nonatomic, strong, readonly) NSArray *dataList;
@end
