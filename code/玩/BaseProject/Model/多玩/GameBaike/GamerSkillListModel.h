//
//  GamerSkillListModel.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class GamerSkillDetailModel;
@interface GamerSkillListModel : BaseModel

@property (nonatomic, strong) NSArray<GamerSkillDetailModel *> *gameSkills;

@end
@interface GamerSkillDetailModel : NSObject

@property (nonatomic, copy) NSString *strong;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *cooldown;

@property (nonatomic, copy) NSString *level;

@property (nonatomic, copy) NSString *tips;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *des;

@end

