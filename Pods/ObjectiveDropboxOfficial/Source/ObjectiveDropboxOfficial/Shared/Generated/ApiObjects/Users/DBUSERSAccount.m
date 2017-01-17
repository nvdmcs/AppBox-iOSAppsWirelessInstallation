///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSAccount.h"
#import "DBUSERSName.h"

#pragma mark - API Object

@implementation DBUSERSAccount

#pragma mark - Constructors

- (instancetype)initWithAccountId:(NSString *)accountId
                             name:(DBUSERSName *)name
                            email:(NSString *)email
                    emailVerified:(NSNumber *)emailVerified
                         disabled:(NSNumber *)disabled
                  profilePhotoUrl:(NSString *)profilePhotoUrl {
  [DBStoneValidators stringValidator:@(40) maxLength:@(40) pattern:nil](accountId);

  self = [super init];
  if (self) {
    _accountId = accountId;
    _name = name;
    _email = email;
    _emailVerified = emailVerified;
    _profilePhotoUrl = profilePhotoUrl;
    _disabled = disabled;
  }
  return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId
                             name:(DBUSERSName *)name
                            email:(NSString *)email
                    emailVerified:(NSNumber *)emailVerified
                         disabled:(NSNumber *)disabled {
  return [self initWithAccountId:accountId
                            name:name
                           email:email
                   emailVerified:emailVerified
                        disabled:disabled
                 profilePhotoUrl:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBUSERSAccountSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBUSERSAccountSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBUSERSAccountSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBUSERSAccountSerializer

+ (NSDictionary *)serialize:(DBUSERSAccount *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"account_id"] = valueObj.accountId;
  jsonDict[@"name"] = [DBUSERSNameSerializer serialize:valueObj.name];
  jsonDict[@"email"] = valueObj.email;
  jsonDict[@"email_verified"] = valueObj.emailVerified;
  jsonDict[@"disabled"] = valueObj.disabled;
  if (valueObj.profilePhotoUrl) {
    jsonDict[@"profile_photo_url"] = valueObj.profilePhotoUrl;
  }

  return jsonDict;
}

+ (DBUSERSAccount *)deserialize:(NSDictionary *)valueDict {
  NSString *accountId = valueDict[@"account_id"];
  DBUSERSName *name = [DBUSERSNameSerializer deserialize:valueDict[@"name"]];
  NSString *email = valueDict[@"email"];
  NSNumber *emailVerified = valueDict[@"email_verified"];
  NSNumber *disabled = valueDict[@"disabled"];
  NSString *profilePhotoUrl = valueDict[@"profile_photo_url"] ?: nil;

  return [[DBUSERSAccount alloc] initWithAccountId:accountId
                                              name:name
                                             email:email
                                     emailVerified:emailVerified
                                          disabled:disabled
                                   profilePhotoUrl:profilePhotoUrl];
}

@end
