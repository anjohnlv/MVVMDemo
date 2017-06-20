//
//  Config.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/19.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface Config : NSObject

+(instancetype)shareConfig;

/**
 服务器根路径
 */
@property(nonatomic, strong)NSString *rootURL;
/**
 推送token
 */
@property(nonatomic, strong)NSString *deviceToken;

/**
 当前用户信息
 */
@property(nonatomic, strong)Account *account;

@end
