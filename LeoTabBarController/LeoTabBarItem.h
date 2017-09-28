//
//  LeoTabBarItem.h
//  LeoTabBarViewControllerDemo
//
//  Created by MAC on 2017/9/28.
//  Copyright © 2017年 Leo.Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface LeoTabBarItem : UIButton

@property (nonatomic, strong, readonly)UIImageView *imgvIcon;
@property (nonatomic, strong, readonly)UILabel *lbTitle;
@property (nonatomic, strong, readonly)UIView *vBadge;
@property (nonatomic, strong, readonly)UILabel *lbBadge;



@property (nonatomic, strong)UIImage *imgNormal;
@property (nonatomic, strong)UIImage *imgSelect;
@property (nonatomic, strong)UIColor *normalColor;
@property (nonatomic, strong)UIColor *selectColor;
@property (nonatomic, strong)NSString *title;
@property (nonatomic, assign)BOOL isSelect;

@property (nonatomic, assign)BOOL isNotice;//是否有通知
@property (nonatomic, assign)NSInteger badgeNumber;//角标

@end
