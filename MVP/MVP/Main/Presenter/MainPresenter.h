//
//  MainPresenter.h
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class User;

@protocol MainPresenterAction <NSObject>

- (void)requestData;

@end

@protocol MainPresenterDelegate <NSObject>

- (void)requestFinished;

@end

@interface MainPresenter : NSObject<MainPresenterAction,UITableViewDelegate,UITableViewDataSource>
///
@property(nonatomic, weak) id<MainPresenterDelegate>delegate;
///
@property(nonatomic, strong) User *user;
@end
