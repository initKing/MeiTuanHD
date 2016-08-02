//
//  MTFunctionCategoryModel.h
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import <Foundation/Foundation.h>
/** 导航栏分类下拉列表模型 */
@interface MTFunctionCategoryModel : NSObject
/** 高亮图标 */
@property (nonatomic, copy) NSString *highlighted_icon;
/** 图标 */
@property (nonatomic, copy) NSString *icon;
/** 标题 */
@property (nonatomic, copy) NSString *name;
/** 小图标高亮图标 */
@property (nonatomic, copy) NSString *small_highlighted_icon;
/** 普通状态小图标 */
@property (nonatomic, copy) NSString *small_icon;
/** 地图图标 */
@property (nonatomic, copy) NSString *map_icon;
/** 分类数组 */
@property (nonatomic, strong) NSArray *subcategories;
@end
