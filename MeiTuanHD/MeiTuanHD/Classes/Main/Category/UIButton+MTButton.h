//
//  UIButton+MTButton.h
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (MTButton)
+ (instancetype)ch_buttonWithIamge:(NSString *)imageStr andHightImageStr:(NSString *)HLImageStr target:(id)target action:(SEL)action;
@end
