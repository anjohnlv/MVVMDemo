//
//  LoginView.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "BaseView.h"

/**
 可以是基于UIView的类，也可以是xib或者storyborad文件。
 */
@interface LoginView : BaseView

@property(nonatomic, strong)UITextField *usernameTextField, *passwordTextField;
@property(nonatomic, strong)UIButton *loginButton,*verifyButton;

@end
