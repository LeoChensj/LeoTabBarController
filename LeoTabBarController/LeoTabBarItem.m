//
//  LeoTabBarItem.m
//  LeoTabBarViewControllerDemo
//
//  Created by MAC on 2017/9/28.
//  Copyright © 2017年 Leo.Chen. All rights reserved.
//

#import "LeoTabBarItem.h"
#import "LeoTabBarConfig.h"

@implementation LeoTabBarItem

- (instancetype)init
{
    if(self = [super init])
    {
        self.backgroundColor = [UIColor clearColor];
        
        _imgvIcon = [[UIImageView alloc] init];
        [self addSubview:_imgvIcon];
        [_imgvIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(25);
            make.height.mas_equalTo(25);
            make.centerX.mas_equalTo(0);
            make.top.mas_equalTo(4);
            
        }];
        
        _lbTitle = [[UILabel alloc] init];
        _lbTitle.textAlignment = NSTextAlignmentCenter;
        _lbTitle.font = Leo_Font(10);
        [self addSubview:_lbTitle];
        [_lbTitle mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(10);
            make.centerX.mas_equalTo(self.mas_centerX).offset(0);
            make.bottom.mas_equalTo(-2);
            
        }];
        
        _vBadge = [[UIView alloc] init];
        _vBadge.layer.masksToBounds = YES;
        _vBadge.layer.cornerRadius = 4;
        _vBadge.backgroundColor = Leo_Red_Color;
        [self addSubview:_vBadge];
        [_vBadge mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.height.mas_equalTo(8);
            make.left.mas_equalTo(_imgvIcon.mas_right).offset(0);
            make.bottom.mas_equalTo(_imgvIcon.mas_top).offset(7);
            
        }];
        
        
        _lbBadge = [[UILabel alloc] init];
        _lbBadge.backgroundColor = Leo_Red_Color;
        _lbBadge.layer.masksToBounds = YES;
        _lbBadge.layer.cornerRadius = 8;
        _lbBadge.textColor = [UIColor whiteColor];
        _lbBadge.textAlignment = NSTextAlignmentCenter;
        _lbBadge.font = Leo_Font(10);
        [self addSubview:_lbBadge];
        [_lbBadge mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.height.mas_equalTo(16);
            make.top.mas_equalTo(3);
            make.left.mas_equalTo(self.mas_centerX).offset(10);
            
        }];
        
        
        self.isNotice = NO;
        self.badgeNumber = 0;
    }
    
    return self;
}

- (void)setImgNormal:(UIImage *)imgNormal
{
    _imgNormal = imgNormal;
    
    if(_isSelect==NO)
    {
        _imgvIcon.image = imgNormal;
    }
    
    
    
    CGSize size = imgNormal.size;
    [_imgvIcon mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(size.width);
        make.height.mas_equalTo(size.height);
        
    }];
}
- (void)setImgSelect:(UIImage *)imgSelect
{
    _imgSelect = imgSelect;
    
    if(_isSelect)
    {
        _imgvIcon.image = imgSelect;
    }
}
- (void)setTitle:(NSString *)title
{
    _title = title;
    
    _lbTitle.text = title;
}
- (void)setIsSelect:(BOOL)isSelect
{
    _isSelect = isSelect;
    
    if(isSelect)
    {
        _imgvIcon.image = _imgSelect;
        _lbTitle.textColor = _selectColor;
    }
    else
    {
        _imgvIcon.image = _imgNormal;
        _lbTitle.textColor = _normalColor;
    }
}
- (void)setIsNotice:(BOOL)isNotice
{
    _isNotice = isNotice;
    
    _vBadge.hidden = !isNotice;
    
    if(self.badgeNumber!=0)
    {
        _vBadge.hidden = YES;
    }
}
- (void)setBadgeNumber:(NSInteger)badgeNumber
{
    _badgeNumber = badgeNumber;
    
    if(badgeNumber<=0)
    {
        _lbBadge.text = nil;
        _lbBadge.hidden = YES;
    }
    else if(badgeNumber<100)
    {
        _lbBadge.text = [NSString stringWithFormat:@"%zd", badgeNumber];
        _lbBadge.hidden = NO;
        _vBadge.hidden = YES;
    }
    else
    {
        _lbBadge.text = @"99+";
        _lbBadge.hidden = NO;
        _vBadge.hidden = YES;
    }
}

@end
