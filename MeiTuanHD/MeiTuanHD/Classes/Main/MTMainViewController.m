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
#import "MTCategoryChooseView.h"
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

// 服务分类选择
- (void)categoryChoose:(MTCategoryView *)view {
    NSLog(@"点击搜索按钮 %s -- %zd", __FUNCTION__, view.tag);
   
    if (view.tag == 100) {
    // 1. 分类选择按钮
        MTCategoryChooseView *vc = [MTCategoryChooseView new];
        
        vc.modalPresentationStyle = UIModalPresentationPopover;
        UIPopoverPresentationController *poperVC = vc.popoverPresentationController;
        
        poperVC.sourceView = view;
        poperVC.sourceRect = view.bounds;
        
        [self presentViewController:vc animated:YES completion:nil];
        return;
    } else if (view.tag == 101) {
    // 2. 城市选择按钮
        
        return;
    } else {
    // 3. 搜索按钮
        
        
    }
}

#pragma mark - 设置左侧导航栏
- (void)setupLeftNav {
    
    NSMutableArray <UIBarButtonItem *>*arrayM = [NSMutableArray array];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"icon_meituan_logo"] forState:UIControlStateSelected];
    btn.selected = YES;
    btn.userInteractionEnabled = NO;
    [btn sizeToFit];
    UIBarButtonItem *logoItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    [arrayM addObject:logoItem];
    
    for (NSInteger i = 0; i < 3; i++) {
        MTCategoryView *view = [MTCategoryView mtCategoryView];
        UIBarButtonItem *cateItem = [[UIBarButtonItem alloc] initWithCustomView:view];
         [view addTarget:self action:@selector(categoryChoose:) forControlEvents:UIControlEventValueChanged];
        [arrayM addObject:cateItem];
        view.tag = 100 + i;
    }
    self.navigationItem.leftBarButtonItems = arrayM;
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
