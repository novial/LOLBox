//
//  HeroViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroViewController.h"

@implementation HeroViewController

- (instancetype)init
{
    if (self = [super init]) {
        self.title = @"英雄";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [Factory addMenuItemToVC:self];
}

@end
