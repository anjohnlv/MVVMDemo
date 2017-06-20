//
//  LoginViewController.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"
#import "LoginViewModel.h"

@interface LoginViewController ()

/**
 负责界面显示
 */
@property(nonatomic, strong)LoginView *loginView;
@property(nonatomic, strong)StatusView *statusView;
/**
 负责业务逻辑
 */
@property(nonatomic, strong)LoginViewModel *loginViewModel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - 创建View
- (void)makeUI {
    _loginView = [LoginView new];
    [self.view addSubview:_loginView];
    [_loginView mas_makeConstraints:^(MASConstraintMaker *make){
        make.size.equalTo(_loginView.superview);
        make.center.equalTo(_loginView.superview);
    }];
    _statusView = [[StatusView alloc]initWithMessage:@"哈哈哈" icon:[UIImage imageNamed:@"ic_null"] canReload:YES];
    [_statusView setHidden:YES];
    [self.view addSubview:_statusView];
    [_statusView mas_makeConstraints:^(MASConstraintMaker *make){
        make.width.equalTo(self.view);
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.height.equalTo(self.view).multipliedBy(1.0/2);
    }];
}

#pragma mark - 监听View的事件
- (void)listening {
    [_loginView.loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [_loginView.verifyButton addTarget:self action:@selector(verify) forControlEvents:UIControlEventTouchUpInside];
    [_statusView.reloadButton addTarget:self action:@selector(verify) forControlEvents:UIControlEventTouchUpInside];
}


#pragma mark - 处理View的事件
-(void)login {
    NSString *username = _loginView.usernameTextField.text;
    NSString *password = _loginView.passwordTextField.text;
    BOOL canLogin = [self checkLoginInfo];
    if (canLogin) {
        [self.loginViewModel login:username password:password completion:^{
            BaseEntity *entity = self.loginViewModel.loginModel.entity;
            if (entity.success == YES) {
                NSString *nickname = [Config shareConfig].account.nickName;
                [MBProgressHUD showToast:[NSString stringWithFormat:@"Your name is:%@",nickname]];
                NSLog(@"Your name is:%@",nickname);
            }
        }];
    }
}

-(void)verify {
    BOOL isLogin = [self.loginViewModel verify];
    [_statusView setHidden:isLogin];
}

#pragma mark - 检查View的信息
-(BOOL)checkLoginInfo {
    NSString *username = _loginView.usernameTextField.text;
    NSString *password = _loginView.passwordTextField.text;
    
    if ([username length]<=0) {
        [MBProgressHUD showToast:@"account illegal"];
        return NO;
    }
    if ([password length]<=0) {
        [MBProgressHUD showToast:@"token illegal"];
        return NO;
    }
    return YES;
}

#pragma mark - ViewModel负责业务逻辑
- (LoginViewModel *)loginViewModel {
    if (!_loginViewModel) {
        _loginViewModel = [LoginViewModel new];
    }
    return _loginViewModel;
}
@end
