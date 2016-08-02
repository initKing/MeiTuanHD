//
//  MTFunctionCategoryModel.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTFunctionCategoryModel.h"

@implementation MTFunctionCategoryModel
- (NSString *)description {
    return [NSString stringWithFormat:@"name = %@, subcategories = %@, icon = %@, highlighted_icon = %@, small_icon = %@, small_highlighted_icon = %@, map_icon = %@",
            self.name,
            self.subcategories,
            self.icon,
            self.highlighted_icon,
            self.small_icon,
            self.small_highlighted_icon,
            self.map_icon];
}
@end
