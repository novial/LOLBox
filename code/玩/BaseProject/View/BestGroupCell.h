//
//  BestGroupCell.h
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRImageView.h"

@interface BestGroupCell : UITableViewCell
@property (strong, nonatomic) TRImageView *iconView1;
@property (strong, nonatomic) TRImageView *iconView2;
@property (strong, nonatomic) TRImageView *iconView3;
@property (strong, nonatomic) TRImageView *iconView4;
@property (strong, nonatomic) TRImageView *iconView5;

@property (strong, nonatomic) UILabel *titleLb;
@property (strong, nonatomic) UILabel *descLb;
@end
