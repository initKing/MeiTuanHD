//
//  MTDistructModel.h
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/3.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTDistructModel : NSObject
/** 城市列表 */
@property (nonatomic, strong) NSArray *cities;
/** 分类字符串 */
@property (nonatomic, copy) NSString *title;
@end
