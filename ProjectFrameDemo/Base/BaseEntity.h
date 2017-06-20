//
//  BaseEntity.h
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/16.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseEntity : NSObject

@property (nonatomic, strong) NSString * message;
@property (nonatomic, strong) id result;
@property (nonatomic, assign) BOOL success;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
