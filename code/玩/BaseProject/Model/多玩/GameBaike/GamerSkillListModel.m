//
//  GamerSkillListModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "GamerSkillListModel.h"

@implementation GamerSkillListModel


+ (NSDictionary *)objectClassInArray{
    return @{@"gameSkills" : [GamerSkillDetailModel class]};
}
@end
@implementation GamerSkillDetailModel

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id"};
}

@end


