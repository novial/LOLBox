//
//  BaiKeGroupViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaiKeGroupViewController.h"
#import "BestGroupViewModel.h"
#import "BestGroupCell.h"


@interface BaiKeGroupViewController() <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) BestGroupViewModel *bestGroupVM;
@end

@implementation BaiKeGroupViewController

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        _tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            [self.bestGroupVM getDataFromNetCompleteHandle:^(NSError *error) {
                if (error) {
                    [self showErrorMsg:error.localizedDescription];
                }else{
                    [_tableView reloadData];
                }
                [_tableView.header endRefreshing];
            }];
        }];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        [_tableView registerClass:[BestGroupCell class] forCellReuseIdentifier:@"Cell"];
    }
    return _tableView;
}

- (BestGroupViewModel *)bestGroupVM
{
    if (!_bestGroupVM) {
        _bestGroupVM = [[BestGroupViewModel alloc] init];
    }
    return _bestGroupVM;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView.header beginRefreshing];
    self.title = @"最佳阵容";
    [Factory addBackItemToVC:self];
}

#pragma mark - UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.bestGroupVM.rowNumber;
}
kRemoveCellSeparator

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 180;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BestGroupCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.titleLb.text = [self.bestGroupVM titleForRow:indexPath.row];
    cell.descLb.text = [self.bestGroupVM descForRow:indexPath.row];
    NSArray *arr = @[cell.iconView1,cell.iconView2,cell.iconView3,cell.iconView4,cell.iconView5];
    [arr enumerateObjectsUsingBlock:^(TRImageView *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj.imageView setImageWithURL:[self.bestGroupVM iconsURLForRow:indexPath.row][idx] placeholderImage:[UIImage imageNamed:@"cell_bg_noData_1"]];
    }];
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
