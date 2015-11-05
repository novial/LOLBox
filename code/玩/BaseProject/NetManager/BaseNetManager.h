//
//  BaseNetManager.h
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseNetManager : NSObject

#define kCompletionHandle completionHandle:(void(^)(id model, NSError *error))completionHandle

+ (id)GET:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;

+ (id)POST:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;


// 把字符串转化为%号格式
+ (NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params;

@end
