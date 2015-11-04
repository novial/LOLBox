//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "TuWanModel.h"
// 只要共有一个解析类的请求就可以合起来写，只需要使用枚举变量来决定不同的请求地址即可
// 参考汽车之家接口

typedef NS_ENUM(NSUInteger, InfoType){
    InfoTypeTouTiao,  // 头条
    InfoTypeDuJia,    // 独家
    InfoTypeAnHei3,   // 暗黑3
    InfoTypeMoShou,   // 魔兽
    InfoTypeFengBao,  // 风暴
    InfoTypeLuShi,    // 炉石
    InfoTypeXingJi2,  // 星际2
    InfoTypeShouWang, // 守望
    InfoTypeTuPian,   // 图片
    InfoTypeShiPin,   // 视频
    InfoTypeGongLue,  // 攻略
    InfoTypeHuanHua,  // 幻化
    InfoTypeQuWen,    // 趣闻
    InfoTypeCos,      // COS
    InfoTypeMeiNv,    // 美女
};


@interface TuWanNetManager : BaseNetManager

+ (id)getTuWanInfoWithType:(InfoType)type start:(NSInteger)start kCompletionHandle;

@end
