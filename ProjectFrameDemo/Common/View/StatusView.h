//
//  StatusView.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/19.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "BaseView.h"

@interface StatusView : BaseView

@property(nonatomic, strong)UIImageView *imageView;
@property(nonatomic, strong)UILabel *label;
@property(nonatomic, strong)UIButton *reloadButton;

+(instancetype)new __attribute__((unavailable("Use -initWithMessage: icon: canReload: instead")));
-(instancetype)init __attribute__((unavailable("Use -initWithMessage: icon: canReload: instead")));
-(instancetype)initWithMessage:(NSString *)message icon:(UIImage *)icon canReload:(BOOL)can;

@end
