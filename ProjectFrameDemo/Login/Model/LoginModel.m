//
//  LoginModel.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "LoginModel.h"

@implementation LoginModel

-(void)login:(NSString *)username token:(NSString *)token completion:(void (^)(void))completion {
    [[NetworkingEngine shareEngine] login:username token:token completion:^(id response, NSError *error) {
        self.entity = [[BaseEntity alloc]initWithDictionary:response];
        self.account = [[Account alloc]initWithDictionary:self.entity.result];
        if (completion) {
            completion();
        }
    }];
}

@end
