//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "BaseNetManager.h"
#import "TuWanModel.h"
#import "DuoWanNetManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];
    
    
    /*
    [DuoWanNetManager getHeroWithType:HeroTypeAll completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"..");
    }];
    */
//    [DuoWanNetManager getHeroVideosWithPage:1 tag:@"Jax" completionHandle:^(id model, NSError *error) {
//        DDLogVerbose(@"...");
//    }];
//    [DuoWanNetManager getHeroSkinsWithHeroName:@"Braum" completionHandle:^(id model, NSError *error) {
//        DDLogVerbose(@"");
//    }];
    return YES;
}

@end
