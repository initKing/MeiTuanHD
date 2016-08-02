
//
//  MTFuncCategoryLeftCell.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTFuncCategoryLeftCell.h"

@implementation MTFuncCategoryLeftCell

+ (instancetype)categoryLeftCellWithTableView:(UITableView *)tableView cellId:(NSString *)cellId {
    
    MTFuncCategoryLeftCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[MTFuncCategoryLeftCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_leftpart"]];
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_dropdown_left_selected"]];
    return cell;
}
@end
