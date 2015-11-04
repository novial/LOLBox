//
//  HeroDetailModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroDetailModel.h"

@implementation HeroDetailModel


+ (NSDictionary *)objectClassInArray{
    return @{@"like" : [HeroInterstModel class], @"hate" : [HeroInterstModel class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id",@"desc":@"description"};
}
@end


@implementation HeroSkillModel

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id",@"desc":@"description"};
}

@end





@implementation HeroInterstModel

@end





