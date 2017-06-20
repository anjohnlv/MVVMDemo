//
//  NSString+URL.m
//  FlipCourse
//
//  Created by webseat2 on 15/3/26.
//  Copyright (c) 2015年 WebSeat. All rights reserved.
//

#import "NSString+URL.h"

@implementation NSString (URL)

- (NSString *)URLEncodedString
{
    NSString *encodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                              (CFStringRef)self,
                                                              NULL,
                                            (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]",
                                            kCFStringEncodingUTF8));
    return encodedString;
}

@end
