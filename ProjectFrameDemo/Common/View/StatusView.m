//
//  StatusView.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/19.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "StatusView.h"

@implementation StatusView

const CGFloat kStatusImageViewHeight = 200.f;

-(instancetype)initWithMessage:(NSString *)message icon:(UIImage *)icon canReload:(BOOL)can {
    self = [super init];
    if (self) {
        [self makeUI];
        [_label setText:message];
        [_imageView setImage:icon];
        [_reloadButton setHidden:!can];
    }
    return self;
}

-(void)makeUI {
    [self setBackgroundColor:[UIColor clearColor]];
    
    UIView *contentView = [UIView new];
    [contentView setBackgroundColor:[UIColor clearColor]];
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make){
        make.center.equalTo(self);
        make.width.equalTo(self);
        make.height.mas_equalTo(kStatusImageViewHeight);
    }];
    
    _imageView = [UIImageView new];
    [_imageView setContentMode:UIViewContentModeScaleAspectFit];
    [contentView addSubview:_imageView];
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(contentView);
        make.top.equalTo(contentView);
        make.width.equalTo(contentView);
        make.height.equalTo(contentView).multipliedBy(1.0/2);
    }];
    _label = [UILabel new];
    [_label setTextAlignment:NSTextAlignmentCenter];
    [_label setTextColor:WKT_GRAY_COLOR];
    [contentView addSubview:_label];
    [_label mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(contentView);
        make.width.equalTo(contentView);
        make.top.equalTo(_imageView.mas_bottom);
        make.height.equalTo(contentView).multipliedBy(1.0/4);
    }];
    _reloadButton = [UIButton new];
    [_reloadButton setTitle:@"点击刷新" forState:UIControlStateNormal];
    [_reloadButton addBorderWithColor:WKT_GRAY_COLOR];
    [_reloadButton rounded:YES];
    [_reloadButton setBackgroundColor:[UIColor clearColor]];
    [_reloadButton setTitleColor:WKT_GRAY_COLOR forState:UIControlStateNormal];
    [[_reloadButton titleLabel] setFont:[UIFont systemFontOfSize:kFontSizeMedium]];
    [contentView addSubview:_reloadButton];
    [_reloadButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.equalTo(contentView);
        make.centerY.equalTo(contentView).multipliedBy(7.0/4);
        make.height.mas_equalTo(25);
        make.width.mas_equalTo(80);
    }];
}

@end
