///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSHARINGLinkMetadata.h"
#import "DBSerializableProtocol.h"

@class DBSHARINGCollectionLinkMetadata;
@class DBSHARINGVisibility;

#pragma mark - API Object

///
/// The `CollectionLinkMetadata` struct.
///
/// Metadata for a collection-based shared link.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBSHARINGCollectionLinkMetadata : DBSHARINGLinkMetadata <DBSerializable>

#pragma mark - Instance fields

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param url URL of the shared link.
/// @param visibility Who can access the link.
/// @param expires Expiration time, if set. By default the link won't expire.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url
                         visibility:(DBSHARINGVisibility * _Nonnull)visibility
                            expires:(NSDate * _Nullable)expires;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param url URL of the shared link.
/// @param visibility Who can access the link.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUrl:(NSString * _Nonnull)url visibility:(DBSHARINGVisibility * _Nonnull)visibility;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `CollectionLinkMetadata` struct.
///
@interface DBSHARINGCollectionLinkMetadataSerializer : NSObject

///
/// Serializes `DBSHARINGCollectionLinkMetadata` instances.
///
/// @param instance An instance of the `DBSHARINGCollectionLinkMetadata` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGCollectionLinkMetadata` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGCollectionLinkMetadata * _Nonnull)instance;

///
/// Deserializes `DBSHARINGCollectionLinkMetadata` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGCollectionLinkMetadata` API object.
///
/// @return An instantiation of the `DBSHARINGCollectionLinkMetadata` object.
///
+ (DBSHARINGCollectionLinkMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
