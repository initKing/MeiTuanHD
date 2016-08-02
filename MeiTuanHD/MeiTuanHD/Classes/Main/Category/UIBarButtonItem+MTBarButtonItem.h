//
//  UIBarButtonItem+MTBarButtonItem.h
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/3.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import <UIKit/UIKit.h>
/** 导航条的分类方法 */
@interface UIBarButtonItem (MTBarButtonItem)
+ (instancetype)ch_BarButtonItemWithImage:(NSString *)image selectedImage:(NSString *)imageHL target:(id)target action:(SEL)action;
@end
