//
//  UIButton+MTButton.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "UIButton+MTButton.h"

@implementation UIButton (MTButton)
+ (instancetype)ch_buttonWithIamge:(NSString *)imageStr andHightImageStr:(NSString *)HLImageStr target:(id)target action:(SEL)action {
    UIButton *btn = [[UIButton alloc] init];
    [btn setImage:[[UIImage imageNamed:imageStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    
    [btn setImage:[[UIImage imageNamed:HLImageStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    
    return btn;
}
@end
