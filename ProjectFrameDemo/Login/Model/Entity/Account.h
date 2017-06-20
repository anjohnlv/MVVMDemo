//
//	Account.h
//
//	Create by wdwk on 16/6/2017
//	Copyright © 2017. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface Account : NSObject

@property (nonatomic, strong) NSString * account;
@property (nonatomic, assign) NSInteger accountSource;
@property (nonatomic, assign) BOOL activeStatus;
@property (nonatomic, assign) NSInteger configJson;
@property (nonatomic, assign) NSInteger days;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, strong) NSObject * email;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, assign) NSInteger isAuthen;
@property (nonatomic, assign) BOOL isChangePassWord;
@property (nonatomic, assign) BOOL isNewNotice;
@property (nonatomic, strong) NSObject * logoName;
@property (nonatomic, strong) NSString * nEAccId;
@property (nonatomic, strong) NSString * nEToken;
@property (nonatomic, strong) NSString * nickName;
@property (nonatomic, strong) NSObject * phone;
@property (nonatomic, strong) NSString * token;
@property (nonatomic, assign) NSInteger userType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end