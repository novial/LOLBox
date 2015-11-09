//
//  XiMaCategoryCell.h
//  BaseProject
//
//  Created by tarena on 15/11/9.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRImageView.h"

@interface XiMaCategoryCell : UITableViewCell

/** 序号标签 */
@property (nonatomic, strong) UILabel *orderLb;
/** 类型图片 */
@property (nonatomic, strong) TRImageView *iconIV;
/** 类型名称 */
@property (strong, nonatomic) UILabel *titleLb;
/** 类型描述 */
@property (strong, nonatomic) UILabel *descLb;
/** 集数 */
@property (strong, nonatomic) UILabel *numberLb;
/** 集数图标 */
@property (strong, nonatomic) TRImageView *numberIV;

@end
