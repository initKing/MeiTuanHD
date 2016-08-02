//
//  UIBarButtonItem+MTBarButtonItem.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/3.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "UIBarButtonItem+MTBarButtonItem.h"

@implementation UIBarButtonItem (MTBarButtonItem)
+ (instancetype)ch_BarButtonItemWithImage:(NSString *)image selectedImage:(NSString *)imageHL target:(id)target action:(SEL)action {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 设置图像
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imageHL] forState:UIControlStateHighlighted];
    
    // 设置初始尺寸
    btn.frame = CGRectMake(0, 0, 30, 30);
   
    // 添加监听方法
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
