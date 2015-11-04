//
//  HeroWeeklyDataModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroWeeklyDataModel.h"

@implementation HeroWeeklyDataModel

@end
@implementation HeroAverageDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"charts" : [HeroChartsDataModel class]};
}

@end


@implementation HeroChartsDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"ratio_data" : [HeroDetaiRatioData class]};
}

@end


@implementation HeroDetaiRatioData

@end


