//
//  ItemTableViewCell.m
//  MVP
//
//  Created by apple on 2016/12/29.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "ItemData.h"

@interface ItemTableViewCell ()
@property (nonatomic, strong) UILabel * nameLabel;

@property (nonatomic, strong) UILabel * descLabel;
@end

@implementation ItemTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.nameLabel];
        [self addSubview:self.descLabel];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.nameLabel.frame = CGRectMake(20, 10, 300, 20);
    self.descLabel.frame = CGRectMake(20, 30, 300, 20);
}

- (void)setData:(ItemData *)data{
    _data = data;
    self.nameLabel.text = data.itemName;
    self.descLabel.text = data.itemDesc;
}

#pragma mark - Lzay
- (UILabel *)nameLabel
{
    if (! _nameLabel)
    {
        _nameLabel = [[UILabel alloc]init];
    }
    return _nameLabel;
}
- (UILabel *)descLabel
{
    if (! _descLabel)
    {
        _descLabel = [[UILabel alloc]init];
    }
    return _descLabel;
}


@end
