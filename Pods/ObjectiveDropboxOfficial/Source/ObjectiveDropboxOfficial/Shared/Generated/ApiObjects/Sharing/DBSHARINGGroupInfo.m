///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGroupInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMCOMMONGroupManagementType.h"
#import "DBTEAMCOMMONGroupSummary.h"
#import "DBTEAMCOMMONGroupType.h"

#pragma mark - API Object

@implementation DBSHARINGGroupInfo

#pragma mark - Constructors

- (instancetype)initWithGroupName:(NSString *)groupName
                          groupId:(NSString *)groupId
              groupManagementType:(DBTEAMCOMMONGroupManagementType *)groupManagementType
                        groupType:(DBTEAMCOMMONGroupType *)groupType
                         isMember:(NSNumber *)isMember
                          isOwner:(NSNumber *)isOwner
                         sameTeam:(NSNumber *)sameTeam
                  groupExternalId:(NSString *)groupExternalId
                      memberCount:(NSNumber *)memberCount {

  self = [super initWithGroupName:groupName
                          groupId:groupId
              groupManagementType:groupManagementType
                  groupExternalId:groupExternalId
                      memberCount:memberCount];
  if (self) {
    _groupType = groupType;
    _isMember = isMember;
    _isOwner = isOwner;
    _sameTeam = sameTeam;
  }
  return self;
}

- (instancetype)initWithGroupName:(NSString *)groupName
                          groupId:(NSString *)groupId
              groupManagementType:(DBTEAMCOMMONGroupManagementType *)groupManagementType
                        groupType:(DBTEAMCOMMONGroupType *)groupType
                         isMember:(NSNumber *)isMember
                          isOwner:(NSNumber *)isOwner
                         sameTeam:(NSNumber *)sameTeam {
  return [self initWithGroupName:groupName
                         groupId:groupId
             groupManagementType:groupManagementType
                       groupType:groupType
                        isMember:isMember
                         isOwner:isOwner
                        sameTeam:sameTeam
                 groupExternalId:nil
                     memberCount:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGGroupInfoSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGGroupInfoSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGGroupInfoSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGGroupInfoSerializer

+ (NSDictionary *)serialize:(DBSHARINGGroupInfo *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"group_name"] = valueObj.groupName;
  jsonDict[@"group_id"] = valueObj.groupId;
  jsonDict[@"group_management_type"] =
      [DBTEAMCOMMONGroupManagementTypeSerializer serialize:valueObj.groupManagementType];
  jsonDict[@"group_type"] = [DBTEAMCOMMONGroupTypeSerializer serialize:valueObj.groupType];
  jsonDict[@"is_member"] = valueObj.isMember;
  jsonDict[@"is_owner"] = valueObj.isOwner;
  jsonDict[@"same_team"] = valueObj.sameTeam;
  if (valueObj.groupExternalId) {
    jsonDict[@"group_external_id"] = valueObj.groupExternalId;
  }
  if (valueObj.memberCount) {
    jsonDict[@"member_count"] = valueObj.memberCount;
  }

  return jsonDict;
}

+ (DBSHARINGGroupInfo *)deserialize:(NSDictionary *)valueDict {
  NSString *groupName = valueDict[@"group_name"];
  NSString *groupId = valueDict[@"group_id"];
  DBTEAMCOMMONGroupManagementType *groupManagementType =
      [DBTEAMCOMMONGroupManagementTypeSerializer deserialize:valueDict[@"group_management_type"]];
  DBTEAMCOMMONGroupType *groupType = [DBTEAMCOMMONGroupTypeSerializer deserialize:valueDict[@"group_type"]];
  NSNumber *isMember = valueDict[@"is_member"];
  NSNumber *isOwner = valueDict[@"is_owner"];
  NSNumber *sameTeam = valueDict[@"same_team"];
  NSString *groupExternalId = valueDict[@"group_external_id"] ?: nil;
  NSNumber *memberCount = valueDict[@"member_count"] ?: nil;

  return [[DBSHARINGGroupInfo alloc] initWithGroupName:groupName
                                               groupId:groupId
                                   groupManagementType:groupManagementType
                                             groupType:groupType
                                              isMember:isMember
                                               isOwner:isOwner
                                              sameTeam:sameTeam
                                       groupExternalId:groupExternalId
                                           memberCount:memberCount];
}

@end
