///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class AuthorizationStatus extends $pb.ProtobufEnum {
  static const AuthorizationStatus AUTHORIZATION_STATUS_INVALID = AuthorizationStatus._(0, 'AUTHORIZATION_STATUS_INVALID');
  static const AuthorizationStatus AUTHORIZATION_STATUS_NOT_DETERMINED = AuthorizationStatus._(1, 'AUTHORIZATION_STATUS_NOT_DETERMINED');
  static const AuthorizationStatus AUTHORIZATION_STATUS_RESTRICTED = AuthorizationStatus._(2, 'AUTHORIZATION_STATUS_RESTRICTED');
  static const AuthorizationStatus AUTHORIZATION_STATUS_DENIED = AuthorizationStatus._(3, 'AUTHORIZATION_STATUS_DENIED');
  static const AuthorizationStatus AUTHORIZATION_STATUS_AUTHORIZED = AuthorizationStatus._(4, 'AUTHORIZATION_STATUS_AUTHORIZED');

  static const $core.List<AuthorizationStatus> values = <AuthorizationStatus> [
    AUTHORIZATION_STATUS_INVALID,
    AUTHORIZATION_STATUS_NOT_DETERMINED,
    AUTHORIZATION_STATUS_RESTRICTED,
    AUTHORIZATION_STATUS_DENIED,
    AUTHORIZATION_STATUS_AUTHORIZED,
  ];

  static final $core.Map<$core.int, AuthorizationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthorizationStatus valueOf($core.int value) => _byValue[value];

  const AuthorizationStatus._($core.int v, $core.String n) : super(v, n);
}

class PHCollectionListType extends $pb.ProtobufEnum {
  static const PHCollectionListType PH_COLLECTION_LIST_TYPE_INVALID = PHCollectionListType._(0, 'PH_COLLECTION_LIST_TYPE_INVALID');
  static const PHCollectionListType PH_COLLECTION_LIST_TYPE_MOMENT_LIST = PHCollectionListType._(1, 'PH_COLLECTION_LIST_TYPE_MOMENT_LIST');
  static const PHCollectionListType PH_COLLECTION_LIST_TYPE_FOLDER = PHCollectionListType._(2, 'PH_COLLECTION_LIST_TYPE_FOLDER');
  static const PHCollectionListType PH_COLLECTION_LIST_TYPE_SMART_FOLDER = PHCollectionListType._(3, 'PH_COLLECTION_LIST_TYPE_SMART_FOLDER');

  static const $core.List<PHCollectionListType> values = <PHCollectionListType> [
    PH_COLLECTION_LIST_TYPE_INVALID,
    PH_COLLECTION_LIST_TYPE_MOMENT_LIST,
    PH_COLLECTION_LIST_TYPE_FOLDER,
    PH_COLLECTION_LIST_TYPE_SMART_FOLDER,
  ];

  static final $core.Map<$core.int, PHCollectionListType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHCollectionListType valueOf($core.int value) => _byValue[value];

  const PHCollectionListType._($core.int v, $core.String n) : super(v, n);
}

class PHCollectionListSubtype extends $pb.ProtobufEnum {
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_INVALID = PHCollectionListSubtype._(0, 'PH_COLLECTION_LIST_SUBTYPE_INVALID');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_CLUSTER = PHCollectionListSubtype._(1, 'PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_CLUSTER');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_YEAR = PHCollectionListSubtype._(2, 'PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_YEAR');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_REGULAR_FOLDER = PHCollectionListSubtype._(3, 'PH_COLLECTION_LIST_SUBTYPE_REGULAR_FOLDER');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_EVENTS = PHCollectionListSubtype._(4, 'PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_EVENTS');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_FACES = PHCollectionListSubtype._(5, 'PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_FACES');
  static const PHCollectionListSubtype PH_COLLECTION_LIST_SUBTYPE_ANY = PHCollectionListSubtype._(6, 'PH_COLLECTION_LIST_SUBTYPE_ANY');

  static const $core.List<PHCollectionListSubtype> values = <PHCollectionListSubtype> [
    PH_COLLECTION_LIST_SUBTYPE_INVALID,
    PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_CLUSTER,
    PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_YEAR,
    PH_COLLECTION_LIST_SUBTYPE_REGULAR_FOLDER,
    PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_EVENTS,
    PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_FACES,
    PH_COLLECTION_LIST_SUBTYPE_ANY,
  ];

  static final $core.Map<$core.int, PHCollectionListSubtype> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHCollectionListSubtype valueOf($core.int value) => _byValue[value];

  const PHCollectionListSubtype._($core.int v, $core.String n) : super(v, n);
}

class PHAssetCollectionType extends $pb.ProtobufEnum {
  static const PHAssetCollectionType PH_ASSET_COLLECTION_TYPE_INVALID = PHAssetCollectionType._(0, 'PH_ASSET_COLLECTION_TYPE_INVALID');
  static const PHAssetCollectionType PH_ASSET_COLLECTION_TYPE_ALBUM = PHAssetCollectionType._(1, 'PH_ASSET_COLLECTION_TYPE_ALBUM');
  static const PHAssetCollectionType PH_ASSET_COLLECTION_TYPE_SMART_ALBUM = PHAssetCollectionType._(2, 'PH_ASSET_COLLECTION_TYPE_SMART_ALBUM');
  static const PHAssetCollectionType PH_ASSET_COLLECTION_TYPE_MOMENT = PHAssetCollectionType._(3, 'PH_ASSET_COLLECTION_TYPE_MOMENT');

  static const $core.List<PHAssetCollectionType> values = <PHAssetCollectionType> [
    PH_ASSET_COLLECTION_TYPE_INVALID,
    PH_ASSET_COLLECTION_TYPE_ALBUM,
    PH_ASSET_COLLECTION_TYPE_SMART_ALBUM,
    PH_ASSET_COLLECTION_TYPE_MOMENT,
  ];

  static final $core.Map<$core.int, PHAssetCollectionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHAssetCollectionType valueOf($core.int value) => _byValue[value];

  const PHAssetCollectionType._($core.int v, $core.String n) : super(v, n);
}

class PHAssetCollectionSubtype extends $pb.ProtobufEnum {
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_INVALID = PHAssetCollectionSubtype._(0, 'PH_ASSET_COLLECTION_SUBTYPE_INVALID');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_REGULAR = PHAssetCollectionSubtype._(1, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_REGULAR');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_EVENT = PHAssetCollectionSubtype._(2, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_EVENT');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_FACES = PHAssetCollectionSubtype._(3, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_FACES');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_ALBUM = PHAssetCollectionSubtype._(4, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_ALBUM');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_IMPORTED = PHAssetCollectionSubtype._(5, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_IMPORTED');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_MY_PHOTO_STREAM = PHAssetCollectionSubtype._(6, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_MY_PHOTO_STREAM');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ALBUM_CLOUD_SHARED = PHAssetCollectionSubtype._(7, 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_CLOUD_SHARED');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_GENERIC = PHAssetCollectionSubtype._(8, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_GENERIC');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_PANORAMAS = PHAssetCollectionSubtype._(9, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_PANORAMAS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_VIDEOS = PHAssetCollectionSubtype._(10, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_VIDEOS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_FAVORITES = PHAssetCollectionSubtype._(11, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_FAVORITES');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_TIMELAPSES = PHAssetCollectionSubtype._(12, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_TIMELAPSES');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ALL_HIDDEN = PHAssetCollectionSubtype._(13, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ALL_HIDDEN');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_RECENTLY_ADDED = PHAssetCollectionSubtype._(14, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_RECENTLY_ADDED');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_BURSTS = PHAssetCollectionSubtype._(15, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_BURSTS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SLOMO_VIDEOS = PHAssetCollectionSubtype._(16, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SLOMO_VIDEOS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_USER_LIBRARY = PHAssetCollectionSubtype._(17, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_USER_LIBRARY');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SELF_PORTRAITS = PHAssetCollectionSubtype._(18, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SELF_PORTRAITS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SCREENSHOTS = PHAssetCollectionSubtype._(19, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SCREENSHOTS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_DEPTH_EFFECT = PHAssetCollectionSubtype._(20, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_DEPTH_EFFECT');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LIVE_PHOTOS = PHAssetCollectionSubtype._(21, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LIVE_PHOTOS');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ANIMATED = PHAssetCollectionSubtype._(22, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ANIMATED');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LONG_EXPOSURES = PHAssetCollectionSubtype._(23, 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LONG_EXPOSURES');
  static const PHAssetCollectionSubtype PH_ASSET_COLLECTION_SUBTYPE_ANY = PHAssetCollectionSubtype._(24, 'PH_ASSET_COLLECTION_SUBTYPE_ANY');

  static const $core.List<PHAssetCollectionSubtype> values = <PHAssetCollectionSubtype> [
    PH_ASSET_COLLECTION_SUBTYPE_INVALID,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_REGULAR,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_EVENT,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_FACES,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_ALBUM,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_IMPORTED,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_MY_PHOTO_STREAM,
    PH_ASSET_COLLECTION_SUBTYPE_ALBUM_CLOUD_SHARED,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_GENERIC,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_PANORAMAS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_VIDEOS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_FAVORITES,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_TIMELAPSES,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ALL_HIDDEN,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_RECENTLY_ADDED,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_BURSTS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SLOMO_VIDEOS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_USER_LIBRARY,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SELF_PORTRAITS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SCREENSHOTS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_DEPTH_EFFECT,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LIVE_PHOTOS,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ANIMATED,
    PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LONG_EXPOSURES,
    PH_ASSET_COLLECTION_SUBTYPE_ANY,
  ];

  static final $core.Map<$core.int, PHAssetCollectionSubtype> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHAssetCollectionSubtype valueOf($core.int value) => _byValue[value];

  const PHAssetCollectionSubtype._($core.int v, $core.String n) : super(v, n);
}

class PHAssetMediaType extends $pb.ProtobufEnum {
  static const PHAssetMediaType PH_ASSET_MEDIA_TYPE_INVALID = PHAssetMediaType._(0, 'PH_ASSET_MEDIA_TYPE_INVALID');
  static const PHAssetMediaType PH_ASSET_MEDIA_TYPE_UNKNOWN = PHAssetMediaType._(1, 'PH_ASSET_MEDIA_TYPE_UNKNOWN');
  static const PHAssetMediaType PH_ASSET_MEDIA_TYPE_IMAGE = PHAssetMediaType._(2, 'PH_ASSET_MEDIA_TYPE_IMAGE');
  static const PHAssetMediaType PH_ASSET_MEDIA_TYPE_VIDEO = PHAssetMediaType._(3, 'PH_ASSET_MEDIA_TYPE_VIDEO');
  static const PHAssetMediaType PH_ASSET_MEDIA_TYPE_AUDIO = PHAssetMediaType._(4, 'PH_ASSET_MEDIA_TYPE_AUDIO');

  static const $core.List<PHAssetMediaType> values = <PHAssetMediaType> [
    PH_ASSET_MEDIA_TYPE_INVALID,
    PH_ASSET_MEDIA_TYPE_UNKNOWN,
    PH_ASSET_MEDIA_TYPE_IMAGE,
    PH_ASSET_MEDIA_TYPE_VIDEO,
    PH_ASSET_MEDIA_TYPE_AUDIO,
  ];

  static final $core.Map<$core.int, PHAssetMediaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHAssetMediaType valueOf($core.int value) => _byValue[value];

  const PHAssetMediaType._($core.int v, $core.String n) : super(v, n);
}

class PHAssetPlaybackStyle extends $pb.ProtobufEnum {
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_INVALID = PHAssetPlaybackStyle._(0, 'PH_ASSET_PLAYBACK_STYLE_INVALID');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_UNSUPPORTED = PHAssetPlaybackStyle._(1, 'PH_ASSET_PLAYBACK_STYLE_UNSUPPORTED');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_IMAGE = PHAssetPlaybackStyle._(2, 'PH_ASSET_PLAYBACK_STYLE_IMAGE');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_IMAGE_ANIMATED = PHAssetPlaybackStyle._(3, 'PH_ASSET_PLAYBACK_STYLE_IMAGE_ANIMATED');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_LIVE_PHOTO = PHAssetPlaybackStyle._(4, 'PH_ASSET_PLAYBACK_STYLE_LIVE_PHOTO');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_VIDEO = PHAssetPlaybackStyle._(5, 'PH_ASSET_PLAYBACK_STYLE_VIDEO');
  static const PHAssetPlaybackStyle PH_ASSET_PLAYBACK_STYLE_VIDEO_LOOPING = PHAssetPlaybackStyle._(6, 'PH_ASSET_PLAYBACK_STYLE_VIDEO_LOOPING');

  static const $core.List<PHAssetPlaybackStyle> values = <PHAssetPlaybackStyle> [
    PH_ASSET_PLAYBACK_STYLE_INVALID,
    PH_ASSET_PLAYBACK_STYLE_UNSUPPORTED,
    PH_ASSET_PLAYBACK_STYLE_IMAGE,
    PH_ASSET_PLAYBACK_STYLE_IMAGE_ANIMATED,
    PH_ASSET_PLAYBACK_STYLE_LIVE_PHOTO,
    PH_ASSET_PLAYBACK_STYLE_VIDEO,
    PH_ASSET_PLAYBACK_STYLE_VIDEO_LOOPING,
  ];

  static final $core.Map<$core.int, PHAssetPlaybackStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHAssetPlaybackStyle valueOf($core.int value) => _byValue[value];

  const PHAssetPlaybackStyle._($core.int v, $core.String n) : super(v, n);
}

class PHAssetResourceType extends $pb.ProtobufEnum {
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_INVALID = PHAssetResourceType._(0, 'PH_ASSET_RESOURCE_TYPE_INVALID');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_PHOTO = PHAssetResourceType._(1, 'PH_ASSET_RESOURCE_TYPE_PHOTO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_VIDEO = PHAssetResourceType._(2, 'PH_ASSET_RESOURCE_TYPE_VIDEO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_AUDIO = PHAssetResourceType._(3, 'PH_ASSET_RESOURCE_TYPE_AUDIO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_ALTERNATE_PHOTO = PHAssetResourceType._(4, 'PH_ASSET_RESOURCE_TYPE_ALTERNATE_PHOTO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PHOTO = PHAssetResourceType._(5, 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PHOTO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_FULL_SIZE_VIDEO = PHAssetResourceType._(6, 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_VIDEO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_DATA = PHAssetResourceType._(7, 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_DATA');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PHOTO = PHAssetResourceType._(8, 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PHOTO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_PAIRED_VIDEO = PHAssetResourceType._(9, 'PH_ASSET_RESOURCE_TYPE_PAIRED_VIDEO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PAIRED_VIDEO = PHAssetResourceType._(10, 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PAIRED_VIDEO');
  static const PHAssetResourceType PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PAIRED_VIDEO = PHAssetResourceType._(11, 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PAIRED_VIDEO');

  static const $core.List<PHAssetResourceType> values = <PHAssetResourceType> [
    PH_ASSET_RESOURCE_TYPE_INVALID,
    PH_ASSET_RESOURCE_TYPE_PHOTO,
    PH_ASSET_RESOURCE_TYPE_VIDEO,
    PH_ASSET_RESOURCE_TYPE_AUDIO,
    PH_ASSET_RESOURCE_TYPE_ALTERNATE_PHOTO,
    PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PHOTO,
    PH_ASSET_RESOURCE_TYPE_FULL_SIZE_VIDEO,
    PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_DATA,
    PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PHOTO,
    PH_ASSET_RESOURCE_TYPE_PAIRED_VIDEO,
    PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PAIRED_VIDEO,
    PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PAIRED_VIDEO,
  ];

  static final $core.Map<$core.int, PHAssetResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PHAssetResourceType valueOf($core.int value) => _byValue[value];

  const PHAssetResourceType._($core.int v, $core.String n) : super(v, n);
}

