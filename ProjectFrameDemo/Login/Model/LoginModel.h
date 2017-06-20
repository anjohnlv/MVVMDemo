//
//  LoginModel.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "BaseModel.h"

@interface LoginModel : BaseModel

@property(nonatomic, strong)Account *account;

-(void)login:(NSString *)username token:(NSString *)token completion:(void (^)(void))completion;

@end
