//
//  CategoryEquipList.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class CategoryEquipDetailModel;
@interface CategoryEquipList : BaseModel

@property (nonatomic, strong) NSArray<CategoryEquipDetailModel *> *esArray;

@end
@interface CategoryEquipDetailModel : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *text;

@end

