//
//  FuWenListModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "FuWenListModel.h"

@implementation FuWenListModel


+ (NSDictionary *)objectClassInArray{
    return @{@"Purple" : [FuWenColorModel class], @"Yellow" : [FuWenColorModel class], @"Blue" : [FuWenColorModel class], @"Red" : [FuWenColorModel class]};
}
@end
@implementation FuWenColorModel

@end




