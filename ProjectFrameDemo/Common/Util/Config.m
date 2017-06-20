//
//  Config.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/19.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "Config.h"

@implementation Config

+(instancetype)shareConfig {
    static Config *engine=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        engine = [[self alloc] init];
    });
    return engine;
}

@end
