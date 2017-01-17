///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMTeamFolderAccessError.h"
#import "DBTEAMTeamFolderRenameError.h"

#pragma mark - API Object

@implementation DBTEAMTeamFolderRenameError

@synthesize accessError = _accessError;

#pragma mark - Constructors

- (instancetype)initWithAccessError:(DBTEAMTeamFolderAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderRenameErrorAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithInvalidFolderName {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderRenameErrorInvalidFolderName;
  }
  return self;
}

- (instancetype)initWithFolderNameAlreadyUsed {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderRenameErrorFolderNameAlreadyUsed;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMTeamFolderRenameErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBTEAMTeamFolderAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMTeamFolderRenameErrorAccessError, but was %@.", [self tagName]];
  }
  return _accessError;
}

#pragma mark - Tag state methods

- (BOOL)isAccessError {
  return _tag == DBTEAMTeamFolderRenameErrorAccessError;
}

- (BOOL)isInvalidFolderName {
  return _tag == DBTEAMTeamFolderRenameErrorInvalidFolderName;
}

- (BOOL)isFolderNameAlreadyUsed {
  return _tag == DBTEAMTeamFolderRenameErrorFolderNameAlreadyUsed;
}

- (BOOL)isOther {
  return _tag == DBTEAMTeamFolderRenameErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMTeamFolderRenameErrorAccessError:
    return @"DBTEAMTeamFolderRenameErrorAccessError";
  case DBTEAMTeamFolderRenameErrorInvalidFolderName:
    return @"DBTEAMTeamFolderRenameErrorInvalidFolderName";
  case DBTEAMTeamFolderRenameErrorFolderNameAlreadyUsed:
    return @"DBTEAMTeamFolderRenameErrorFolderNameAlreadyUsed";
  case DBTEAMTeamFolderRenameErrorOther:
    return @"DBTEAMTeamFolderRenameErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMTeamFolderRenameErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMTeamFolderRenameErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMTeamFolderRenameErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMTeamFolderRenameErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMTeamFolderRenameError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] = [[DBTEAMTeamFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isInvalidFolderName]) {
    jsonDict[@".tag"] = @"invalid_folder_name";
  } else if ([valueObj isFolderNameAlreadyUsed]) {
    jsonDict[@".tag"] = @"folder_name_already_used";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMTeamFolderRenameError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"access_error"]) {
    DBTEAMTeamFolderAccessError *accessError =
        [DBTEAMTeamFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBTEAMTeamFolderRenameError alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"invalid_folder_name"]) {
    return [[DBTEAMTeamFolderRenameError alloc] initWithInvalidFolderName];
  } else if ([tag isEqualToString:@"folder_name_already_used"]) {
    return [[DBTEAMTeamFolderRenameError alloc] initWithFolderNameAlreadyUsed];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMTeamFolderRenameError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
