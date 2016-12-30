//
//  MainViewController.m
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "MainViewController.h"
#import "MainPresenter.h"
#import "User.h"

@interface MainViewController ()<MainPresenterDelegate>
///
@property(nonatomic, strong) MainPresenter *presenter;
///
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupBasic];
    
    [self setupData];

}

- (void)setupData{
    [self.presenter requestData];
}

- (void)setupBasic{
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.tableView];
}

- (void)setUser:(User *)user{
    _user = user;
    self.presenter.user = user;
}

#pragma mark --- MainPresenterDelegate
- (void)requestFinished{
    [self.tableView reloadData];
}


#pragma mark --- 懒加载
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.delegate = self.presenter;
        _tableView.dataSource = self.presenter;
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
        _tableView.frame = self.view.bounds;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}

- (MainPresenter *)presenter{
    if (!_presenter) {
        _presenter = [[MainPresenter alloc]init];
        _presenter.delegate = self;
    }
    return _presenter;
}



@end
