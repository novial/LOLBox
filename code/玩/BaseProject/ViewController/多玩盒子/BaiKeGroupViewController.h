//
//  BaiKeGroupViewController.h
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 1. 创建BestGroupViewModel
 只需要实现getData就可以了， 没有分页问题
 model只提供了英雄英文名，需要拼入英雄头像链接地址才可以
 
 2. 创建BestGroupCell，继承UItableViewCell
 头像大小固定，间距使用（window宽-5*图片宽）/6获得
 cell中题目最多一行，详情简介 最多两行
 选择以后显示浅黄色
 
 3.BestGroupViewController制作
 对于cell高度：只需要实现estimatedHeightForRow协议即可自动适应
 4.在BaiKeViewController的cell点击事件中判断viewmodel的tag值是 best_group，则跳转
 
 
 
 */
@interface BaiKeGroupViewController : UIViewController

@end
