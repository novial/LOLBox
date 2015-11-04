//
//  MusicDetailModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicDetailModel.h"

@implementation MusicDetailModel

@end
@implementation MusicDetailAlbumModel

@end


@implementation MusicTracksModel

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [MusicDetailListModel class]};
}

@end


@implementation MusicDetailListModel

@end


