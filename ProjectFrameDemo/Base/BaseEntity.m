//
//  BaseEntity.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/16.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "BaseEntity.h"

NSString *const kMessage = @"Message";
NSString *const kResult = @"Result";
NSString *const kSuccess = @"Success";

@implementation BaseEntity

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kMessage] isKindOfClass:[NSNull class]]){
        self.message = dictionary[kMessage];
    }
    if(![dictionary[kResult] isKindOfClass:[NSNull class]]){
        self.result = dictionary[kResult];
    }
    
    if(![dictionary[kSuccess] isKindOfClass:[NSNull class]]){
        self.success = [dictionary[kSuccess] boolValue];
    }
    
    return self;
}

@end
