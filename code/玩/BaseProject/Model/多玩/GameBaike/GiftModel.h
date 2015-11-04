//
//  GiftModel.h
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@interface GiftModel : BaseModel
@property (strong, nonatomic) NSArray *giftCategory;

@end


@interface GiftDetailModel : BaseModel
@property (strong, nonatomic) NSString *ID;
@property (strong, nonatomic) NSArray *level;
@property (strong, nonatomic) NSString *name;
@end