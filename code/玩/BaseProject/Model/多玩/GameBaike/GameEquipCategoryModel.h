//
//  GameEquipCategoryModel.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class GameEquipCategoryDetailModel;
@interface GameEquipCategoryModel : BaseModel

@property (nonatomic, strong) NSArray<GameEquipCategoryDetailModel *> *esArray;

@end
@interface GameEquipCategoryDetailModel : NSObject

@property (nonatomic, copy) NSString *tag;

@property (nonatomic, copy) NSString *text;

@end

