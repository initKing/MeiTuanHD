//
//  MTCityChooseController.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTCityChooseController.h"
#import "UIBarButtonItem+MTBarButtonItem.h"
#import "MTDistructModel.h"
static NSString *cellId = @"cellId";
@interface MTCityChooseController ()<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchView;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation MTCityChooseController {
    NSArray <MTDistructModel *> *_cityList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self setupUI];
    [self setupNav];
    // 使用宏替换设置颜色
    self.tableView.tintColor = CHColor(21, 188, 173);
}

#pragma mark - 加载数据
- (void)loadData {
    NSArray *cityArr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cityGroups.plist" ofType:nil]];
    
    // 记录城市数据数组
    _cityList = [NSArray yy_modelArrayWithClass:NSClassFromString(@"MTDistructModel") json:cityArr];
}

#pragma mark - 导航栏取消按钮监听方法
- (void)cancleClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDelegate
// 返回组头标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _cityList[section].title;
}

//显示右侧导航索引
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    // 使用KVC模式 -- _cityList中有多个title对应的值, 所以是个数组
    return [_cityList valueForKey:@"title"];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _cityList.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    MTDistructModel *model = _cityList[section];
    return model.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    MTDistructModel *model = _cityList[indexPath.section];
    cell.textLabel.text = model.cities[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - 搭建界面
- (void)setupUI {
    // 注册原型cell
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    // 设置导航栏呢标题
    self.title = @"切换城市";
    
}

#pragma mark - 使用自定义的分类方法设置导航栏
- (void)setupNav {
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem ch_BarButtonItemWithImage:@"btn_navigation_close" selectedImage:@"btn_navigation_close_hl" target:self action:@selector(cancleClicked)];
}
@end
