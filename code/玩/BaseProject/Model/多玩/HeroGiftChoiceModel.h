//
//  HeroGiftChoiceModel.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class HeroGiftChoiceDetialModel;
@interface HeroGiftChoiceModel : BaseModel

@property (nonatomic, strong) NSArray<HeroGiftChoiceDetialModel *> *HeroGiftChoiceModel;

@end


@interface HeroGiftChoiceDetialModel : NSObject

@property (nonatomic, copy) NSString *tianDes;

@property (nonatomic, copy) NSString *des;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *fuDes;

@property (nonatomic, copy) NSString *fuPic;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *tianPic;

@end

