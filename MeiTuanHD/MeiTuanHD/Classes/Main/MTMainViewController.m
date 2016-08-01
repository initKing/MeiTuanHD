//
//  MTMainViewController.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTMainViewController.h"
#import "UIButton+MTButton.h"
#import "MTCategoryView.h"

@interface MTMainViewController ()

@end

@implementation MTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self setupLeftNav];
    [self setupRightNav];
    [self setupUI];
}

#pragma mark - 地图按钮监听方法
- (void)mapClick {
    NSLog(@"点击地图按钮 %s", __FUNCTION__);
}

#pragma mark - 搜索按钮监听方法
- (void)searchClick {
      NSLog(@"点击搜索按钮 %s", __FUNCTION__);
}
#pragma mark - 设置左侧导航栏
- (void)setupLeftNav {
    // 1. logo
    UIButton *btn = [UIButton ch_buttonWithIamge:@"icon_meituan_logo" andHightImageStr:@"icon_meituan_logo" target:nil action:nil];
    UIBarButtonItem *leftNavItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    // 2. 添加分类按钮
    MTCategoryView *view = [MTCategoryView mtCategoryView];
    UIBarButtonItem *cateItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    
    // 2. 添加分类按钮
    MTCategoryView *v1 = [MTCategoryView mtCategoryView];
     UIBarButtonItem *portritItem = [[UIBarButtonItem alloc] initWithCustomView:v1];
    
    // 2. 添加分类按钮
    MTCategoryView *v2 = [MTCategoryView mtCategoryView];
    UIBarButtonItem *regionItem = [[UIBarButtonItem alloc] initWithCustomView:v2];

    self.navigationItem.leftBarButtonItems = @[leftNavItem, cateItem, portritItem, regionItem];
}

#pragma mark - 设置右侧导航栏
- (void)setupRightNav {
    UIButton *mapBtn = [UIButton ch_buttonWithIamge:@"icon_map" andHightImageStr:@"icon_map_highlighted" target:self action:@selector(mapClick)];
    UIBarButtonItem *mapItem = [[UIBarButtonItem alloc] initWithCustomView:mapBtn];
    CGRect rect = mapItem.customView.frame;
    rect.size.width = 60;
    mapItem.customView.frame = rect;
    
    
    UIButton *searchBtn = [UIButton ch_buttonWithIamge:@"icon_search" andHightImageStr:@"icon_search_highlighted" target:self action:@selector(searchClick)];
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithCustomView:searchBtn];
   
    CGRect rect1 = searchItem.customView.frame;
    rect1.size.width = 60;
    searchItem.customView.frame = rect1;
    
    self.navigationItem.rightBarButtonItems = @[mapItem, searchItem];
}

#pragma mark - 设置界面
- (void)setupUI {
    
}


@end
