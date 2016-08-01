//
//  MTNavigationController.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTNavigationController.h"

@interface MTNavigationController ()

@end

@implementation MTNavigationController
+ (void)initialize {
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage imageNamed:@"bg_navigationBar_normal"] forBarMetrics:UIBarMetricsDefault];
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
}

@end
