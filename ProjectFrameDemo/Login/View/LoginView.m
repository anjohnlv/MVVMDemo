//
//  LoginView.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/13.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

-(instancetype)init {
    self = [super init];
    if (self) {
        [self makeUI];
    }
    return self;
}

-(void)makeUI {
    UIView *contentView = [UIView new];
    [contentView setBackgroundColor:WKT_WHITE_COLOR];
    [contentView rounded:YES];
    [contentView addBorderWithColor:WKT_GRAY_COLOR];
    [contentView addShadowWithColor:[UIColor blackColor]];
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(contentView.superview).offset(kStatusBarHeight);
        make.centerX.equalTo(contentView.superview);
        make.height.equalTo(contentView.superview).multipliedBy(1.0/3);
        make.width.equalTo(contentView.superview).offset(-2*kSpacing);
    }];
    _usernameTextField = [self makeTextField];
    [_usernameTextField setPlaceholder:@"Account"];
    [contentView addSubview:_usernameTextField];
    [_usernameTextField mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_usernameTextField.superview).offset(kSpacing);
        make.left.equalTo(_usernameTextField.superview).offset(kSpacing);
        make.right.equalTo(_usernameTextField.superview).offset(-kSpacing);
        make.height.equalTo(_usernameTextField.superview).multipliedBy(1.0/3).offset(-kSpacing);
    }];
    _passwordTextField = [self makeTextField];
    [_passwordTextField setPlaceholder:@"Token"];
    [contentView addSubview:_passwordTextField];
    [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerY.equalTo(_passwordTextField.superview);
        make.left.equalTo(_passwordTextField.superview).offset(kSpacing);
        make.right.equalTo(_passwordTextField.superview).offset(-kSpacing);
        make.height.equalTo(_passwordTextField.superview).multipliedBy(1.0/3).offset(-kSpacing);
    }];
    _loginButton = [UIButton new];
    [_loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [[_loginButton titleLabel] setFont:[UIFont systemFontOfSize:kFontSizeLarge]];
    [_loginButton setBackgroundColor:WKT_GRAY_COLOR];
    [contentView addSubview:_loginButton];
    [_loginButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(_loginButton.superview).offset(-kSpacing);
        make.left.equalTo(_loginButton.superview).offset(kSpacing);
        make.width.equalTo(_loginButton.superview).multipliedBy(1.0/2).offset(-kSpacing);
        make.height.equalTo(_loginButton.superview).multipliedBy(1.0/3).offset(-kSpacing);
    }];
    _verifyButton = [UIButton new];
    [_verifyButton setTitle:@"Verify" forState:UIControlStateNormal];
    [[_verifyButton titleLabel] setFont:[UIFont systemFontOfSize:kFontSizeLarge]];
    [_verifyButton setBackgroundColor:WKT_GRAY_COLOR];
    [contentView addSubview:_verifyButton];
    [_verifyButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(_loginButton.superview).offset(-kSpacing);
        make.right.equalTo(_loginButton.superview).offset(-kSpacing);
        make.width.equalTo(_loginButton.superview).multipliedBy(1.0/2).offset(-kSpacing);;
        make.height.equalTo(_loginButton.superview).multipliedBy(1.0/3).offset(-kSpacing);
    }];
}

-(UITextField *)makeTextField {
    UITextField *textField = [UITextField new];
    [textField setBackgroundColor:WKT_GRAY_COLOR];
    [textField setBorderStyle:UITextBorderStyleNone];
    [textField setFont:[UIFont systemFontOfSize:kFontSizeLarge]];
    return textField;
}

@end
