//
//  TuWanPicViewController.h
//  BaseProject
//
//  Created by tarena on 15/11/9.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TuWanPicViewController : UIViewController
/** 此界面内容要根据aid来展示。所以aid是必须的 */
- (id _Nonnull)initWithAid:(NSString * _Nonnull )aid;
@property (nonatomic, strong) NSString * _Nonnull aid;

@end
