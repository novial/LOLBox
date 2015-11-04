//
//  EquipDetailModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "EquipDetailModel.h"

@implementation EquipDetailModel

+(NSDictionary *)objectClassInArray
{
    return @{@"extAttrs":[EquipDetailExtAttrsModel class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end
@implementation EquipDetailExtAttrsModel

@end


