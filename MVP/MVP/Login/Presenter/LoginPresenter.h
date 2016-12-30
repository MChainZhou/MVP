//
//  LoginPresenter.h
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

typedef NS_ENUM(NSUInteger,LoginType){
    LoginSuccess,
    LoginFaild
};

@protocol LoginPresenterAction <NSObject>

- (void)loginClick;

@end

@protocol LoginPresenterDelegate <NSObject>
- (NSString *)userName;

- (NSString *)password;

- (void)updateUI:(LoginType)type with:(User *)user;

@end

@interface LoginPresenter : NSObject<LoginPresenterAction>
///
@property(nonatomic, weak) id<LoginPresenterDelegate>delegate;

@end
