//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"

#define kTuWanPath    @"http://cache.tuwan.com/app/"
#define kAppId        @"appid":@1
#define kAppVer       @"appver":@2.1
#define kClassMore    @"classmore":@"indexpic"

// 定义成宏，防止哪天服务器人员犯病，突然改动所有dtid键位tuwanID。我们只需要改变宏中的字符串即可
#define kRemoveClassMore(dic)       [dic removeObjectForKey:@"classmore"];
#define kSetDtId(string, dic)       [dic setObject:string forKey:@"dtid"];
#define kSetClass(string, dic)      [dic setObject:string forKey:@"class"];
#define kSetMod(string, dic)        [dic setObject:string forKey:@"mod"];


@implementation TuWanNetManager


+ (id)getTuWanInfoWithType:(InfoType)type start:(NSInteger)start kCompletionHandle
{
// 把所有接口共有的参数放到switch外面
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:@{kAppId, kAppVer, @"start":@(start),kClassMore}];
    
    switch (type) {
        case InfoTypeTouTiao: {
            break;
        }
        case InfoTypeDuJia: {
            kRemoveClassMore(params)
            kSetMod(@"八卦", params)
            kSetClass(@"heronews", params)
            break;
        }
        case InfoTypeAnHei3: {
            kSetDtId(@"83623", params)
            break;
        }
        case InfoTypeMoShou: {
            kSetDtId(@"31537", params)
            break;
        }
        case InfoTypeFengBao: {
            kSetDtId(@"31538", params)
            break;
        }
        case InfoTypeLuShi: {
            kSetDtId(@"31528", params)
            break;
        }
        case InfoTypeXingJi2: {
            kRemoveClassMore(params)
            kSetDtId(@"91821", params)
            break;
        }
        case InfoTypeShouWang: {
            kRemoveClassMore(params)
            kSetDtId(@"57067", params)
            break;
        }
        case InfoTypeTuPian:
        case InfoTypeShiPin:
        case InfoTypeGongLue: {
            kRemoveClassMore(params)
            kSetDtId(@"83623,31528,31537,31538,57067,91821", params)
            if (type == InfoTypeTuPian) {
                [params setObject:@"pic" forKey:@"type"];
            }else if (type == InfoTypeShiPin){
                [params setObject:@"video" forKey:@"type"];
            }else{
                [params setObject:@"guide" forKey:@"type"];
            }
            break;
        }
        case InfoTypeHuanHua: {
            kRemoveClassMore(params)
            kSetMod(@"幻化", params)
            kSetClass(@"heronews", params)
            break;
        }
        case InfoTypeQuWen: {
            kSetMod(@"趣闻", params)
            kSetClass(@"heronews", params)
            break;
        }
        case InfoTypeCos: {
            kSetClass(@"cos", params)
            kSetMod(@"cos", params)
            kSetDtId(@"0", params)
            break;
        }
        case InfoTypeMeiNv: {
            kSetClass(@"heronews", params)
            kSetMod(@"美女", params)
            [params setObject:@"cos1" forKey:@"typechild"];
            break;
        }
        default: {
            NSAssert1(NO, @"%s:type类型不正确", __func__);
            break;
        }
    }
    
// 兔玩服务器要求，传入参数不能为中文，需要转化为%号形式
    NSString *path = [self percentPathWithPath:kTuWanPath params:params];
    
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel objectWithKeyValues:responseObj],error);
    }];
    
}




@end
