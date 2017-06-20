//
//  LoginViewModel.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

-(LoginModel *)loginModel {
    if (!_loginModel) {
        _loginModel = [LoginModel new];
    }
    return _loginModel;
}

#pragma mark - loginModel action
-(void)login:(NSString *)username password:(NSString *)password completion:(void (^)(void))completion {
    password = [self encodeToken:password];
    [self.loginModel login:username token:password completion:^{
        if (self.loginModel.entity.success == YES) {
            [self saveAccount:self.loginModel.account];
        }
        if (completion) {
            completion();
        }
    }];
}

-(BOOL)saveAccount:(Account *)account {
    [Config shareConfig].account = account;
    return YES;
}

-(NSString *)encodeToken:(NSString *)password {
    password = [JoDes encode:password key:kJoDesKey];
    password = [password URLEncodedString];
    return password;
}

-(BOOL)verify {
    return [Config shareConfig].account;
}

@end
