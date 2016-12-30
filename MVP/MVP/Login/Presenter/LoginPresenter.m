//
//  LoginPresenter.m
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "LoginPresenter.h"
#import "User.h"

@implementation LoginPresenter
- (void)loginClick{
    NSString *name = [self.delegate userName];
    NSString *password = [self.delegate password];
    
    User *user = [[User alloc]init];
    user.name = name;
    user.password = password;
    
    BOOL loginStart = random()%2;
    if (loginStart) {
        [self.delegate updateUI:LoginSuccess with:user];
    }else{
        [self.delegate updateUI:LoginFaild with:user];
    }
    
}
@end
