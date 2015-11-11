//
//  BestGroupViewModel.h
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "DuoWanNetManager.h"

#define kIconPathWithEnName(enName)  [NSString stringWithFormat:@"http://img.lolbox.duowan.com/champions/%@_120x120.jpg", enName]
@interface BestGroupViewModel : BaseViewModel

@property (nonatomic, assign) NSInteger rowNumber;

/** 英雄头像URL数组 */
- (NSArray *)iconsURLForRow:(NSInteger)row;

- (NSString *)titleForRow:(NSInteger)row;

- (NSString *)descForRow:(NSInteger)row;

/** 英雄描述数组 */
- (NSArray *)descsForRow:(NSInteger)row;

@end
