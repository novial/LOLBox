//
//  RankListViewController.m
//  BaseProject
//
//  Created by jiyingxin on 15/11/5.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "RankListViewController.h"
#import "XiMaCategoryCell.h"
#import "XiMaCategoryViewModel.h"

@interface RankListViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) XiMaCategoryViewModel *XiMaVM;
@end

@implementation RankListViewController

#pragma mark - 懒加载
- (XiMaCategoryViewModel *)XiMaVM
{
    if (!_XiMaVM) {
        _XiMaVM = [XiMaCategoryViewModel new];
    }
    return _XiMaVM;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[XiMaCategoryCell class] forCellReuseIdentifier:@"XiMaCell"];
        [self.view addSubview:_tableView];
        
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
            
        }];
    }
    return _tableView;
}

+ (UINavigationController *)defaultNavi
{
    static UINavigationController *navi = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        RankListViewController *vc = [RankListViewController new];
        navi = [[UINavigationController alloc] initWithRootViewController:vc];
    });
    return navi;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [Factory addMenuItemToVC:self];
    self.title = @"音乐TOP50";
    
    self.tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [self.XiMaVM refreshDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error];
            }else{
                [self.tableView reloadData];
            }
// 重置脚部 没有更过数据的状态
            [self.tableView.footer resetNoMoreData];
            [self.tableView.header endRefreshing];
        }];
    }];
    
    self.tableView.footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        [self.XiMaVM getMoreDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error.localizedDescription];
                if (error.code == 999) {
                    [self.tableView.footer endRefreshingWithNoMoreData];
                }else{
                    [self.tableView.footer endRefreshing];
                }
            }else{
                [self.tableView reloadData];
                [self.tableView.footer endRefreshing];
            }
        }];
    }];
    
    [self.tableView.header beginRefreshing];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.XiMaVM.rowNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XiMaCategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XiMaCell" forIndexPath:indexPath];
    cell.titleLb.text = [self.XiMaVM titleForRow:indexPath.row];
    cell.descLb.text = [self.XiMaVM descForRow:indexPath.row];
    cell.numberLb.text = [self.XiMaVM numberForRow:indexPath.row];
    [cell.iconIV.imageView setImageWithURL:[self.XiMaVM iconURLForRow:indexPath.row] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_1"]];
    cell.orderLb.text = @(indexPath.row+1).stringValue;
    
    return cell;
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 170/2;
}
@end
