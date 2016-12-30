//
//  MainPresenter.m
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MainPresenter.h"
#import "User.h"
#import "ItemData.h"
#import "ItemTableViewCell.h"

@interface MainPresenter ()
///
@property(nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation MainPresenter

- (void)requestData{
    for (int i = 0; i < 10; i++) {
        ItemData * item = [[ItemData alloc]init];
        item.user = self.user;
        item.itemName = [NSString stringWithFormat:@"SuperMan%d",i];
        item.itemDesc = [NSString stringWithFormat:@"这是MVP设计模式中Cell的第%d行",i];
        [self.dataArray addObject:item];
    }
    [self.delegate requestFinished];
}


#pragma mark --- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (cell == nil) {
        cell = [[ItemTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    ItemData *data = self.dataArray[indexPath.row];
    
    cell.data = data;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80.0;
}


#pragma mark --- 懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}



@end
