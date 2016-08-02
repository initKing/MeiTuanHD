//
//  MTCategoryChooseView.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTCategoryChooseView.h"
#import "MTFunctionCategoryModel.h"
#import "MTFuncCategoryLeftCell.h"
#import "MTFuncCategoryRightCell.h"

static NSString *categoryId = @"categoryId";
static NSString *detailId = @"detailId";
@interface MTCategoryChooseView ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *CategoryTableView;
@property (weak, nonatomic) IBOutlet UITableView *DetailTableView;

@end

@implementation MTCategoryChooseView {
    // 功能分类数据数组
    NSArray <MTFunctionCategoryModel *> *_functionCategoryList;
    // 选中行对应的模型
    MTFunctionCategoryModel *_selectedModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self setupUI];
    // 设置展现视图的size
    self.preferredContentSize = CGSizeMake(350, 350);
}

#pragma mark - 加载数据
- (void)loadData {
    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"categories.plist" ofType:nil];
    NSArray *array = [NSArray arrayWithContentsOfFile:dataPath];
    
    _functionCategoryList = [NSArray yy_modelArrayWithClass:NSClassFromString(@"MTFunctionCategoryModel") json:array];
    
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.CategoryTableView) {
        _selectedModel = _functionCategoryList[indexPath.row];
        [self.DetailTableView reloadData];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.CategoryTableView) {
        return _functionCategoryList.count;
    }
    
    return _selectedModel.subcategories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView == self.CategoryTableView) {
        MTFuncCategoryLeftCell *cell = [MTFuncCategoryLeftCell categoryLeftCellWithTableView:tableView cellId:categoryId];
        cell.textLabel.text = _functionCategoryList[indexPath.row].name;
        cell.imageView.image = [UIImage imageNamed:_functionCategoryList[indexPath.row].icon];
        cell.imageView.highlightedImage = [UIImage imageNamed:_functionCategoryList[indexPath.row].highlighted_icon];
        return cell;
    } else {
        MTFuncCategoryRightCell *cell = [MTFuncCategoryRightCell detailTableViewCellWithTableView:tableView cellId:detailId];
       
        cell.textLabel.text = _selectedModel.subcategories[indexPath.row];
        return cell;
    }
}
#pragma mark - 搭建界面
- (void)setupUI {
    // 左侧分类表格注册原型cell -- categoryId
    [self.CategoryTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:categoryId];

    [self.DetailTableView registerClass:NSClassFromString(@"UITableViewCell") forCellReuseIdentifier:detailId];
}

@end
