///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBSHARINGGetSharedLinkFileError;

#pragma mark - API Object

///
/// The `GetSharedLinkFileError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGGetSharedLinkFileError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBSHARINGGetSharedLinkFileErrorTag` enum type represents the possible
/// tag states with which the `DBSHARINGGetSharedLinkFileError` union can exist.
typedef NS_ENUM(NSInteger, DBSHARINGGetSharedLinkFileErrorTag) {
  /// The shared link wasn't found.
  DBSHARINGGetSharedLinkFileErrorSharedLinkNotFound,

  /// The caller is not allowed to access this shared link.
  DBSHARINGGetSharedLinkFileErrorSharedLinkAccessDenied,

  /// This type of link is not supported.
  DBSHARINGGetSharedLinkFileErrorUnsupportedLinkType,

  /// (no description).
  DBSHARINGGetSharedLinkFileErrorOther,

  /// Directories cannot be retrieved by this endpoint.
  DBSHARINGGetSharedLinkFileErrorSharedLinkIsDirectory,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBSHARINGGetSharedLinkFileErrorTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "shared_link_not_found".
///
/// Description of the "shared_link_not_found" tag state: The shared link wasn't
/// found.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSharedLinkNotFound;

///
/// Initializes union class with tag state of "shared_link_access_denied".
///
/// Description of the "shared_link_access_denied" tag state: The caller is not
/// allowed to access this shared link.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSharedLinkAccessDenied;

///
/// Initializes union class with tag state of "unsupported_link_type".
///
/// Description of the "unsupported_link_type" tag state: This type of link is
/// not supported.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUnsupportedLinkType;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

///
/// Initializes union class with tag state of "shared_link_is_directory".
///
/// Description of the "shared_link_is_directory" tag state: Directories cannot
/// be retrieved by this endpoint.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSharedLinkIsDirectory;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value
/// "shared_link_not_found".
///
/// @return Whether the union's current tag state has value
/// "shared_link_not_found".
///
- (BOOL)isSharedLinkNotFound;

///
/// Retrieves whether the union's current tag state has value
/// "shared_link_access_denied".
///
/// @return Whether the union's current tag state has value
/// "shared_link_access_denied".
///
- (BOOL)isSharedLinkAccessDenied;

///
/// Retrieves whether the union's current tag state has value
/// "unsupported_link_type".
///
/// @return Whether the union's current tag state has value
/// "unsupported_link_type".
///
- (BOOL)isUnsupportedLinkType;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves whether the union's current tag state has value
/// "shared_link_is_directory".
///
/// @return Whether the union's current tag state has value
/// "shared_link_is_directory".
///
- (BOOL)isSharedLinkIsDirectory;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBSHARINGGetSharedLinkFileError` union.
///
@interface DBSHARINGGetSharedLinkFileErrorSerializer : NSObject

///
/// Serializes `DBSHARINGGetSharedLinkFileError` instances.
///
/// @param instance An instance of the `DBSHARINGGetSharedLinkFileError` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGGetSharedLinkFileError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGGetSharedLinkFileError * _Nonnull)instance;

///
/// Deserializes `DBSHARINGGetSharedLinkFileError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGGetSharedLinkFileError` API object.
///
/// @return An instantiation of the `DBSHARINGGetSharedLinkFileError` object.
///
+ (DBSHARINGGetSharedLinkFileError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
