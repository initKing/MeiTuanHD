//
//  MTCategoryView.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/1.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTCategoryView.h"

@implementation MTCategoryView
// 方法1
+ (instancetype)mtCategoryView {
    return [[NSBundle mainBundle] loadNibNamed:@"MTCategoryView" owner:nil options:nil].lastObject;
}

// 方法2
//+ (UIView *)mtCategoryView {
//    UINib *nib = [UINib nibWithNibName:@"MTCategoryView" bundle:nil];
//    return [nib instantiateWithOwner:nil options:nil].lastObject;
//}

// 自定义控件, 发送监听事件
- (IBAction)buttonClick:(UIButton *)sender {
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
