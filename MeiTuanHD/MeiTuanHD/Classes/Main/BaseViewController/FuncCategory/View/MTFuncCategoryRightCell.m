//
//  MTFuncCategoryRightCell.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTFuncCategoryRightCell.h"

@implementation MTFuncCategoryRightCell

+ (instancetype)detailTableViewCellWithTableView:(UITableView *)tableView cellId:(NSString *)cellId {
    MTFuncCategoryRightCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[MTFuncCategoryRightCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_rightpart"]];
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_right_selected"]];
    return cell;
}

@end
