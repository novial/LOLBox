//
//  DuoWanTabBarController.m
//  BaseProject
//
//  Created by jiyingxin on 15/11/5.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuoWanTabBarController.h"
#import "HeroViewController.h"
#import "BaiKeViewController.h"
#import "SearchViewController.h"

@interface DuoWanTabBarController ()

@end

@implementation DuoWanTabBarController

+ (DuoWanTabBarController *)standardInstance
{
    static DuoWanTabBarController *vc = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        vc = [DuoWanTabBarController new];
    });
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
// 取消工具栏的透明状态
    self.tabBar.translucent = NO;
    //self.tabBar.hidden = YES;
// 初始化三个子视图，放到tabBar中
    HeroViewController *heroVC = [HeroViewController new];
    SearchViewController *searchVC = [SearchViewController new];
    BaiKeViewController *baikeVC = [BaiKeViewController new];
    UINavigationController *heroNavi = [[UINavigationController alloc] initWithRootViewController:heroVC];
    UINavigationController *searchNavi = [[UINavigationController alloc] initWithRootViewController:searchVC];
    UINavigationController *baikeNavi = [[UINavigationController alloc] initWithRootViewController:baikeVC];
    self.viewControllers = @[heroNavi,baikeNavi,searchNavi];
    
}



@end
