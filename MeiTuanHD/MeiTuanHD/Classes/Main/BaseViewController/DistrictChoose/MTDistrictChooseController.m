//
//  MTDistrictChooseController.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTDistrictChooseController.h"
#import "MTCityChooseController.h"
#import "MTNavigationController.h"

@interface MTDistrictChooseController ()

@end

@implementation MTDistrictChooseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)chooseCity {
    // 先dismiss当前控制器
    [self dismissViewControllerAnimated:YES completion:nil];
    
    MTCityChooseController *vc = [MTCityChooseController new];
    MTNavigationController *nvc = [[MTNavigationController alloc] initWithRootViewController:vc];
    
    nvc.modalPresentationStyle = UIModalPresentationFormSheet;
    nvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    UIPopoverPresentationController *popoer = nvc.popoverPresentationController;
    
    popoer.sourceRect = CGRectMake(100, 100, 260, 300);
    popoer.sourceView = self.view;
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:nvc animated:YES completion:nil];
    
}

#pragma mark - 搭建界面
- (void)setupUI {
    
    
    
}

@end
