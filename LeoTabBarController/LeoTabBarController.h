//
//  LeoTabBarController.h
//  LeoTabBarViewControllerDemo
//
//  Created by MAC on 2017/9/28.
//  Copyright © 2017年 Leo.Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeoTabBarItem.h"

@interface LeoTabBarController : UITabBarController

@property (nonatomic, strong, readonly)UIView *leoTabBar;
@property (nonatomic, strong, readonly)NSMutableArray <LeoTabBarItem *>*tabBarItems;
@property (nonatomic, assign)NSInteger count;

@property (nonatomic, assign)NSInteger index;

- (void)setupCount;
- (void)customTabBar;
- (void)setupViewControllers;

@end
