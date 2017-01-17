///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMTeamFolderIdListArg;

#pragma mark - API Object

///
/// The `TeamFolderIdListArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMTeamFolderIdListArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The list of team folder IDs.
@property (nonatomic, readonly) NSArray<NSString *> * _Nonnull teamFolderIds;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param teamFolderIds The list of team folder IDs.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamFolderIds:(NSArray<NSString *> * _Nonnull)teamFolderIds;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `TeamFolderIdListArg` struct.
///
@interface DBTEAMTeamFolderIdListArgSerializer : NSObject

///
/// Serializes `DBTEAMTeamFolderIdListArg` instances.
///
/// @param instance An instance of the `DBTEAMTeamFolderIdListArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMTeamFolderIdListArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMTeamFolderIdListArg * _Nonnull)instance;

///
/// Deserializes `DBTEAMTeamFolderIdListArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMTeamFolderIdListArg` API object.
///
/// @return An instantiation of the `DBTEAMTeamFolderIdListArg` object.
///
+ (DBTEAMTeamFolderIdListArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
