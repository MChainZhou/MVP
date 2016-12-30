//
//  ItemTableViewCell.h
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ItemData;

@interface ItemTableViewCell : UITableViewCell
/// 数据模型
@property(nonatomic, strong) ItemData *data;
@end
