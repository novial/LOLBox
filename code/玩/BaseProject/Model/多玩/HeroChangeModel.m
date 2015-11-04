//
//  HeroChangeModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroChangeModel.h"

@implementation HeroChangeModel


+ (NSDictionary *)objectClassInArray{
    return @{@"changeLog" : [HeroChangeDetailModel class]};
}
@end
@implementation HeroChangeDetailModel

@end


