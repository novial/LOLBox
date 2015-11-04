//
//  GameBaikeListModel.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class BaikeListDetailModel;
@interface GameBaikeListModel : BaseModel

@property (nonatomic, strong) NSArray<BaikeListDetailModel *> *BaikeListModel;

@end
@interface BaikeListDetailModel : NSObject

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *tag;

@end

