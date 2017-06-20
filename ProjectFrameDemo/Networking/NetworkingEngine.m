//
//  NetworkingEngine.m
//  ProjectFrameDemo
//
//  Created by wdwk on 2017/6/15.
//  Copyright © 2017年 eastedu. All rights reserved.
//

#import "NetworkingEngine.h"
#import "MBProgressHUD+Extension.h"
#import "Config.h"

typedef NS_ENUM(NSInteger, HTTPMethod) {
    HTTPMethodGet,
    HTTPMethodPost,
};

@interface NetworkingEngine()

@property(nonatomic, strong)AFURLSessionManager *manager;

@end

@implementation NetworkingEngine

const NSTimeInterval timeoutInterval = 20.f;

+(instancetype)shareEngine {
    static NetworkingEngine *engine=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        engine = [[self alloc] init];
    });
    return engine;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        self.manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
        [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    }
    return self;
}

-(void)login:(NSString *)username token:(NSString *)token completion:(void (^)(id, NSError *))completion {
    NSString *deviceType = IS_PHONE?@"4":@"3";
    NSString *deviceToken = [Config shareConfig].deviceToken;
    NSString *URLString = [NSString stringWithFormat:@"Account/LoginBySoft2?account=%@&password=%@&softtype=%@&devicetoken=%@", username, token, deviceType, deviceToken];
    [self sendURLString:URLString method:HTTPMethodGet needToken:NO completion:completion];
}

-(void)sendURLString:(NSString *)URLString method:(HTTPMethod)method needToken:(BOOL)need completion:(void (^)(id, NSError *))completion {
    URLString = [[Config shareConfig].rootURL stringByAppendingString:URLString];
    NSURL *URL = [NSURL URLWithString:URLString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:timeoutInterval];
    NSString *methodString = (method==HTTPMethodGet)?@"Get":@"Post";
    [request setHTTPMethod:methodString];
    if (need) {
        [request addValue:[Config shareConfig].account.token forHTTPHeaderField:@"token"];
    }
    NSURLSessionDataTask *dataTask = [_manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@",error);
            [MBProgressHUD showToast:[NSString stringWithFormat:@"Error: %@",error]];
        }
        if (completion) {
            completion(responseObject, error);
        }
    }];
    [dataTask resume];
}

@end
