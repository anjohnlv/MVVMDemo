//
//  LoginViewModel.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "BaseViewModel.h"
#import "LoginModel.h"

@interface LoginViewModel : BaseViewModel

@property(nonatomic, strong)LoginModel *loginModel;

-(void)login:(NSString *)username password:(NSString *)password completion:(void (^)(void))completion;
-(BOOL)verify;

@end
