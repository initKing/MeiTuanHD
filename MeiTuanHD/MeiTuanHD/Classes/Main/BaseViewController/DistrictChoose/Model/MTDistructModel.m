//
//  MTDistructModel.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/3.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTDistructModel.h"

@implementation MTDistructModel
- (NSString *)description {
    return [NSString stringWithFormat:@"cities = %@\n,title = %@\n",self.cities, self.title];
}
@end
