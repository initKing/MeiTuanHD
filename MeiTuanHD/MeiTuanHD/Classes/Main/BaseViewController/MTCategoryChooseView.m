//
//  MTCategoryChooseView.m
//  MeiTuanHD
//
//  Created by CrazyHacker on 16/8/2.
//  Copyright © 2016年 CrazyHacker. All rights reserved.
//

#import "MTCategoryChooseView.h"

static NSString *cellId = @"cellId";
@interface MTCategoryChooseView ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *CategoryTableView;
@property (weak, nonatomic) IBOutlet UITableView *DetailTableView;

@end

@implementation MTCategoryChooseView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self setupUI];
}

#pragma mark - 加载数据
- (void)loadData {
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    return cell;
}
#pragma mark - 搭建界面
- (void)setupUI {
    [self.CategoryTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    [self.DetailTableView registerClass:NSClassFromString(@"UITableViewCell") forCellReuseIdentifier:cellId];
    
    
}

@end
