//
//  ItemData.h
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@interface ItemData : NSObject
@property (nonatomic, strong) NSString * itemName;
@property (nonatomic, strong) NSString * itemDesc;
@property (nonatomic, strong) User * user;
@end
