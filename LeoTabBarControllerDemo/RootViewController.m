//
//  RootViewController.m
//  LeoTabBarControllerDemo
//
//  Created by MAC on 2017/9/28.
//  Copyright © 2017年 Leo.Chen. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)setupCount
{
    self.count = 4;
}

- (void)customTabBar
{
    [super customTabBar];
    
    NSArray *normalImages = @[[UIImage imageNamed:@"tabbar12"],
                              [UIImage imageNamed:@"tabbar22"],
                              [UIImage imageNamed:@"tabbar32"],
                              [UIImage imageNamed:@"tabbar42"]];
    NSArray *selectImages = @[[UIImage imageNamed:@"tabbar11"],
                              [UIImage imageNamed:@"tabbar21"],
                              [UIImage imageNamed:@"tabbar31"],
                              [UIImage imageNamed:@"tabbar41"]];
    NSArray *titles = @[@"微信", @"通讯录", @"发现", @"我的"];
    
    
    
    [self.tabBarItems removeAllObjects];
    for (NSInteger i=0;i<self.count;i++)
    {
        CGFloat itemWidth = [[UIScreen mainScreen] bounds].size.width/self.count;
        
        LeoTabBarItem *item = [[LeoTabBarItem alloc] init];
        item.tag = 100+i;
        item.imgNormal = normalImages[i];
        item.imgSelect = selectImages[i];
        item.normalColor = [UIColor colorWithRed:0.482 green:0.482 blue:0.482 alpha:1];
        item.selectColor = [UIColor colorWithRed:0.204 green:0.514 blue:0.933 alpha:1];
        item.title = titles[i];
        item.isNotice = NO;
        item.isSelect = NO;
        item.badgeNumber = 0;
        [self.leoTabBar addSubview:item];
        [item mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(itemWidth);
            make.height.mas_equalTo(48);
            make.left.mas_equalTo(i*itemWidth);
            make.top.mas_equalTo(0);
            
        }];
        
        if(i==0)
        {
            item.isNotice = YES;
        }
        else if(i==1)
        {
            item.badgeNumber = 2;
        }
        else if(i==2)
        {
            item.badgeNumber = 20;
        }
            
        
        [self.tabBarItems addObject:item];
        
        [item addTarget:self action:@selector(touchItemFunc:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    self.index = TabBarIndex1;
}

- (void)setupViewControllers
{
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    
    ViewController4 *vc4 = [[ViewController4 alloc] init];
    
    
    self.viewControllers = @[vc1, vc2, vc3, vc4];
}




- (void)touchItemFunc:(LeoTabBarItem *)item
{
    NSInteger index = item.tag-100;
    
    self.index = index;
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
