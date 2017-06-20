//
//	Account.m
//
//	Create by wdwk on 16/6/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "Account.h"

NSString *const kAccountAccount = @"Account";
NSString *const kAccountAccountSource = @"AccountSource";
NSString *const kAccountActiveStatus = @"ActiveStatus";
NSString *const kAccountConfigJson = @"ConfigJson";
NSString *const kAccountDays = @"Days";
NSString *const kAccountDescriptionField = @"Description";
NSString *const kAccountEmail = @"Email";
NSString *const kAccountIdField = @"Id";
NSString *const kAccountIsAuthen = @"IsAuthen";
NSString *const kAccountIsChangePassWord = @"IsChangePassWord";
NSString *const kAccountIsNewNotice = @"IsNewNotice";
NSString *const kAccountLogoName = @"LogoName";
NSString *const kAccountNEAccId = @"NEAccId";
NSString *const kAccountNEToken = @"NEToken";
NSString *const kAccountNickName = @"NickName";
NSString *const kAccountPhone = @"Phone";
NSString *const kAccountToken = @"Token";
NSString *const kAccountUserType = @"UserType";

@interface Account ()
@end
@implementation Account




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kAccountAccount] isKindOfClass:[NSNull class]]){
		self.account = dictionary[kAccountAccount];
	}	
	if(![dictionary[kAccountAccountSource] isKindOfClass:[NSNull class]]){
		self.accountSource = [dictionary[kAccountAccountSource] integerValue];
	}

	if(![dictionary[kAccountActiveStatus] isKindOfClass:[NSNull class]]){
		self.activeStatus = [dictionary[kAccountActiveStatus] boolValue];
	}

	if(![dictionary[kAccountConfigJson] isKindOfClass:[NSNull class]]){
		self.configJson = [dictionary[kAccountConfigJson] integerValue];
	}

	if(![dictionary[kAccountDays] isKindOfClass:[NSNull class]]){
		self.days = [dictionary[kAccountDays] integerValue];
	}

	if(![dictionary[kAccountDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kAccountDescriptionField];
	}	
	if(![dictionary[kAccountEmail] isKindOfClass:[NSNull class]]){
		self.email = dictionary[kAccountEmail];
	}	
	if(![dictionary[kAccountIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kAccountIdField] integerValue];
	}

	if(![dictionary[kAccountIsAuthen] isKindOfClass:[NSNull class]]){
		self.isAuthen = [dictionary[kAccountIsAuthen] integerValue];
	}

	if(![dictionary[kAccountIsChangePassWord] isKindOfClass:[NSNull class]]){
		self.isChangePassWord = [dictionary[kAccountIsChangePassWord] boolValue];
	}

	if(![dictionary[kAccountIsNewNotice] isKindOfClass:[NSNull class]]){
		self.isNewNotice = [dictionary[kAccountIsNewNotice] boolValue];
	}

	if(![dictionary[kAccountLogoName] isKindOfClass:[NSNull class]]){
		self.logoName = dictionary[kAccountLogoName];
	}	
	if(![dictionary[kAccountNEAccId] isKindOfClass:[NSNull class]]){
		self.nEAccId = dictionary[kAccountNEAccId];
	}	
	if(![dictionary[kAccountNEToken] isKindOfClass:[NSNull class]]){
		self.nEToken = dictionary[kAccountNEToken];
	}	
	if(![dictionary[kAccountNickName] isKindOfClass:[NSNull class]]){
		self.nickName = dictionary[kAccountNickName];
	}	
	if(![dictionary[kAccountPhone] isKindOfClass:[NSNull class]]){
		self.phone = dictionary[kAccountPhone];
	}	
	if(![dictionary[kAccountToken] isKindOfClass:[NSNull class]]){
		self.token = dictionary[kAccountToken];
	}	
	if(![dictionary[kAccountUserType] isKindOfClass:[NSNull class]]){
		self.userType = [dictionary[kAccountUserType] integerValue];
	}

	return self;
}
@end