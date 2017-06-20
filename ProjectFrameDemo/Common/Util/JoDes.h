//
//  JoDes.h
//  FlipCourse
//
//  Created by webseat2 on 15/3/5.
//  Copyright (c) 2015年 WebSeat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

static NSString* const kJoDesKey = @"kinkikis";

@interface JoDes : NSObject

+ (NSString *) encode:(NSString *)str key:(NSString *)key;
+ (NSString *) decode:(NSString *)str key:(NSString *)key;

@end
