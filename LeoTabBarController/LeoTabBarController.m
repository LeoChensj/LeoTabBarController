//
//  LeoTabBarController.m
//  LeoTabBarViewControllerDemo
//
//  Created by MAC on 2017/9/28.
//  Copyright © 2017年 Leo.Chen. All rights reserved.
//

#import "LeoTabBarController.h"
#import "LeoTabBarConfig.h"

@implementation LeoTabBarController

@synthesize tabBarItems = _tabBarItems;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    [self hideRealTabBar];
    [self setupCount];
    [self customTabBar];
    [self setupViewControllers];
}

- (void)hideRealTabBar
{
    self.tabBar.hidden = YES;
}

- (void)setupCount
{
    _count = 4;
}

- (void)customTabBar
{
    _leoTabBar = [[UIView alloc] init];
    [self.view addSubview:_leoTabBar];
    [_leoTabBar mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(Leo_Main_Screen_Width);
        make.height.mas_equalTo(Leo_TabBar_Height);
        make.left.bottom.mas_equalTo(0);
        
    }];
    
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] init];
    effectView.effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    [_leoTabBar addSubview:effectView];
    [effectView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.width.mas_equalTo(Leo_Main_Screen_Width);
        make.height.mas_equalTo(Leo_TabBar_Height);
        make.left.top.mas_equalTo(0);

    }];

    
    
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = Leo_Seg_Line_Color;
    [_leoTabBar addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(Leo_Main_Screen_Width);
        make.height.mas_equalTo(Leo_Line_Width);
        make.left.top.mas_equalTo(0);
        
    }];
}

- (void)setupViewControllers
{
    
}







- (void)setIndex:(NSInteger)index
{
    _index = index;
    
    self.selectedIndex = index;
    
    for (NSInteger i=0;i<_count;i++)
    {
        if(i==(NSInteger)index)
        {
            _tabBarItems[i].isSelect = YES;
        }
        else
        {
            _tabBarItems[i].isSelect = NO;
        }
    }
}


#pragma mark - Get
- (NSMutableArray<LeoTabBarItem *> *)tabBarItems
{
    if(_tabBarItems==nil)
    {
        _tabBarItems = [NSMutableArray array];
    }
    
    return _tabBarItems;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
