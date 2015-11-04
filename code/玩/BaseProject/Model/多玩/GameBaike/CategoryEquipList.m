//
//  CategoryEquipList.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "CategoryEquipList.h"

@implementation CategoryEquipList


+ (NSDictionary *)objectClassInArray{
    return @{@"esArray" : [CategoryEquipDetailModel class]};
}
@end


@implementation CategoryEquipDetailModel
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id"};
}
@end


