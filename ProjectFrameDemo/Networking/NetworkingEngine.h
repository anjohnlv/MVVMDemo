//
//  NetworkingEngine.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/15.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NetworkingEngine : NSObject

+(instancetype)shareEngine;

/**
 登录

 @param username 用户名
 @param token 加密后密码
 @param completion 接口返回和接口异常
 */
-(void)login:(NSString *)username token:(NSString *)token completion:(void (^)(id, NSError *))completion;

@end
