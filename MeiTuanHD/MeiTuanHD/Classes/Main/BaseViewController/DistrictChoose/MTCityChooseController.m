//
//  MTCityChooseController.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTCityChooseController.h"
#import "UIBarButtonItem+MTBarButtonItem.h"

static NSString *cellId = @"cellId";
@interface MTCityChooseController ()<UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchView;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation MTCityChooseController {
    NSArray *_cityList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self setupUI];
    [self setupNav];
}

- (void)loadData {
    
}

#pragma mark - 导航栏取消按钮监听方法
- (void)cancleClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = @(indexPath.row).description;
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
