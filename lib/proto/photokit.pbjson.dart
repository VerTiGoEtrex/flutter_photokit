///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'google/protobuf/timestamp.pbjson.dart' as $0;
import 'google/protobuf/duration.pbjson.dart' as $1;

const AuthorizationStatus$json = const {
  '1': 'AuthorizationStatus',
  '2': const [
    const {'1': 'AUTHORIZATION_STATUS_INVALID', '2': 0},
    const {'1': 'AUTHORIZATION_STATUS_NOT_DETERMINED', '2': 1},
    const {'1': 'AUTHORIZATION_STATUS_RESTRICTED', '2': 2},
    const {'1': 'AUTHORIZATION_STATUS_DENIED', '2': 3},
    const {'1': 'AUTHORIZATION_STATUS_AUTHORIZED', '2': 4},
  ],
};

const PHCollectionListType$json = const {
  '1': 'PHCollectionListType',
  '2': const [
    const {'1': 'PH_COLLECTION_LIST_TYPE_INVALID', '2': 0},
    const {'1': 'PH_COLLECTION_LIST_TYPE_MOMENT_LIST', '2': 1},
    const {'1': 'PH_COLLECTION_LIST_TYPE_FOLDER', '2': 2},
    const {'1': 'PH_COLLECTION_LIST_TYPE_SMART_FOLDER', '2': 3},
  ],
};

const PHCollectionListSubtype$json = const {
  '1': 'PHCollectionListSubtype',
  '2': const [
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_INVALID', '2': 0},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_CLUSTER', '2': 1},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_MOMENT_LIST_YEAR', '2': 2},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_REGULAR_FOLDER', '2': 3},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_EVENTS', '2': 4},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_SMART_FOLDER_FACES', '2': 5},
    const {'1': 'PH_COLLECTION_LIST_SUBTYPE_ANY', '2': 6},
  ],
};

const PHAssetCollectionType$json = const {
  '1': 'PHAssetCollectionType',
  '2': const [
    const {'1': 'PH_ASSET_COLLECTION_TYPE_INVALID', '2': 0},
    const {'1': 'PH_ASSET_COLLECTION_TYPE_ALBUM', '2': 1},
    const {'1': 'PH_ASSET_COLLECTION_TYPE_SMART_ALBUM', '2': 2},
    const {'1': 'PH_ASSET_COLLECTION_TYPE_MOMENT', '2': 3},
  ],
};

const PHAssetCollectionSubtype$json = const {
  '1': 'PHAssetCollectionSubtype',
  '2': const [
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_INVALID', '2': 0},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_REGULAR', '2': 1},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_EVENT', '2': 2},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_FACES', '2': 3},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_SYNCED_ALBUM', '2': 4},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_IMPORTED', '2': 5},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_MY_PHOTO_STREAM', '2': 6},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ALBUM_CLOUD_SHARED', '2': 7},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_GENERIC', '2': 8},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_PANORAMAS', '2': 9},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_VIDEOS', '2': 10},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_FAVORITES', '2': 11},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_TIMELAPSES', '2': 12},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ALL_HIDDEN', '2': 13},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_RECENTLY_ADDED', '2': 14},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_BURSTS', '2': 15},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SLOMO_VIDEOS', '2': 16},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_USER_LIBRARY', '2': 17},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SELF_PORTRAITS', '2': 18},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_SCREENSHOTS', '2': 19},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_DEPTH_EFFECT', '2': 20},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LIVE_PHOTOS', '2': 21},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_ANIMATED', '2': 22},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_LONG_EXPOSURES', '2': 23},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_ANY', '2': 24},
    const {'1': 'PH_ASSET_COLLECTION_SUBTYPE_SMART_ALBUM_UNABLE_TO_UPLOAD', '2': 25},
  ],
};

const PHAssetMediaType$json = const {
  '1': 'PHAssetMediaType',
  '2': const [
    const {'1': 'PH_ASSET_MEDIA_TYPE_INVALID', '2': 0},
    const {'1': 'PH_ASSET_MEDIA_TYPE_UNKNOWN', '2': 1},
    const {'1': 'PH_ASSET_MEDIA_TYPE_IMAGE', '2': 2},
    const {'1': 'PH_ASSET_MEDIA_TYPE_VIDEO', '2': 3},
    const {'1': 'PH_ASSET_MEDIA_TYPE_AUDIO', '2': 4},
  ],
};

const PHAssetPlaybackStyle$json = const {
  '1': 'PHAssetPlaybackStyle',
  '2': const [
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_INVALID', '2': 0},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_UNSUPPORTED', '2': 1},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_IMAGE', '2': 2},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_IMAGE_ANIMATED', '2': 3},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_LIVE_PHOTO', '2': 4},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_VIDEO', '2': 5},
    const {'1': 'PH_ASSET_PLAYBACK_STYLE_VIDEO_LOOPING', '2': 6},
  ],
};

const PHAssetResourceType$json = const {
  '1': 'PHAssetResourceType',
  '2': const [
    const {'1': 'PH_ASSET_RESOURCE_TYPE_INVALID', '2': 0},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_PHOTO', '2': 1},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_VIDEO', '2': 2},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_AUDIO', '2': 3},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_ALTERNATE_PHOTO', '2': 4},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PHOTO', '2': 5},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_VIDEO', '2': 6},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_DATA', '2': 7},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PHOTO', '2': 8},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_PAIRED_VIDEO', '2': 9},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_FULL_SIZE_PAIRED_VIDEO', '2': 10},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_PAIRED_VIDEO', '2': 11},
    const {'1': 'PH_ASSET_RESOURCE_TYPE_ADJUSTMENT_BASE_VIDEO', '2': 12},
  ],
};

const TriggerRequest$json = const {
  '1': 'TriggerRequest',
};

const TriggerResponse$json = const {
  '1': 'TriggerResponse',
};

const GetAuthorizationStatusRequest$json = const {
  '1': 'GetAuthorizationStatusRequest',
};

const GetAuthorizationStatusResponse$json = const {
  '1': 'GetAuthorizationStatusResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.flutter_photokit.AuthorizationStatus', '10': 'status'},
  ],
};

const RequestAuthorizationRequest$json = const {
  '1': 'RequestAuthorizationRequest',
};

const RequestAuthorizationResponse$json = const {
  '1': 'RequestAuthorizationResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.flutter_photokit.AuthorizationStatus', '10': 'status'},
  ],
};

const OpenSettingsRequest$json = const {
  '1': 'OpenSettingsRequest',
};

const OpenSettingsResponse$json = const {
  '1': 'OpenSettingsResponse',
};

const FetchTopLevelUserCollectionsRequest$json = const {
  '1': 'FetchTopLevelUserCollectionsRequest',
  '2': const [
    const {'1': 'fetch_options', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchOptions', '10': 'fetchOptions'},
  ],
};

const FetchTopLevelUserCollectionsResponse$json = const {
  '1': 'FetchTopLevelUserCollectionsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchResultPHCollection', '10': 'result'},
  ],
};

const FetchCollectionsInCollectionListRequest$json = const {
  '1': 'FetchCollectionsInCollectionListRequest',
  '2': const [
    const {'1': 'collection_list_local_identifier', '3': 1, '4': 1, '5': 9, '10': 'collectionListLocalIdentifier'},
    const {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchOptions', '10': 'options'},
  ],
};

const FetchCollectionsInCollectionListResponse$json = const {
  '1': 'FetchCollectionsInCollectionListResponse',
  '2': const [
    const {'1': 'fetch_result', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchResultPHCollection', '10': 'fetchResult'},
  ],
};

const FetchAssetsInCollectionRequest$json = const {
  '1': 'FetchAssetsInCollectionRequest',
  '2': const [
    const {'1': 'collection_local_identifier', '3': 1, '4': 1, '5': 9, '10': 'collectionLocalIdentifier'},
    const {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchOptions', '10': 'options'},
  ],
};

const FetchAssetsInCollectionResponse$json = const {
  '1': 'FetchAssetsInCollectionResponse',
  '2': const [
    const {'1': 'fetch_result', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchResultPHAsset', '10': 'fetchResult'},
  ],
};

const FetchAssetsRequest$json = const {
  '1': 'FetchAssetsRequest',
  '2': const [
    const {'1': 'options', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchOptions', '10': 'options'},
  ],
};

const FetchAssetsResponse$json = const {
  '1': 'FetchAssetsResponse',
  '2': const [
    const {'1': 'fetch_result', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHFetchResultPHAsset', '10': 'fetchResult'},
  ],
};

const RequestImageForAssetRequest$json = const {
  '1': 'RequestImageForAssetRequest',
  '2': const [
    const {'1': 'asset_local_identifier', '3': 1, '4': 1, '5': 9, '10': 'assetLocalIdentifier'},
  ],
};

const RequestImageForAssetResponse$json = const {
  '1': 'RequestImageForAssetResponse',
  '2': const [
    const {'1': 'image_data', '3': 1, '4': 1, '5': 12, '10': 'imageData'},
  ],
};

const RequestMetadataForAssetRequest$json = const {
  '1': 'RequestMetadataForAssetRequest',
  '2': const [
    const {'1': 'asset_local_identifier', '3': 1, '4': 1, '5': 9, '10': 'assetLocalIdentifier'},
  ],
};

const RequestMetadataForAssetResponse$json = const {
  '1': 'RequestMetadataForAssetResponse',
  '2': const [
    const {'1': 'root', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.MetadataNode', '10': 'root'},
  ],
};

const AssetResourcesForAssetRequest$json = const {
  '1': 'AssetResourcesForAssetRequest',
  '2': const [
    const {'1': 'asset_local_identifier', '3': 1, '4': 1, '5': 9, '10': 'assetLocalIdentifier'},
  ],
};

const AssetResourcesForAssetResponse$json = const {
  '1': 'AssetResourcesForAssetResponse',
  '2': const [
    const {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.flutter_photokit.PHAssetResource', '10': 'resources'},
  ],
};

const MetadataNode$json = const {
  '1': 'MetadataNode',
  '2': const [
    const {'1': 'children', '3': 1, '4': 3, '5': 11, '6': '.flutter_photokit.MetadataNode.ChildrenEntry', '10': 'children'},
    const {'1': 'leafs', '3': 2, '4': 3, '5': 11, '6': '.flutter_photokit.MetadataNode.LeafsEntry', '10': 'leafs'},
  ],
  '3': const [MetadataNode_ChildrenEntry$json, MetadataNode_LeafsEntry$json],
};

const MetadataNode_ChildrenEntry$json = const {
  '1': 'ChildrenEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flutter_photokit.MetadataNode', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MetadataNode_LeafsEntry$json = const {
  '1': 'LeafsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.flutter_photokit.MetadataLeaf', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MetadataLeaf$json = const {
  '1': 'MetadataLeaf',
  '2': const [
    const {'1': 'unknown', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'unknown'},
    const {'1': 'string_value', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    const {'1': 'float_value', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    const {'1': 'double_value', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    const {'1': 'int32_value', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'int32Value'},
    const {'1': 'int64_value', '3': 6, '4': 1, '5': 3, '9': 0, '10': 'int64Value'},
  ],
  '8': const [
    const {'1': 'data'},
  ],
};

const PHObject$json = const {
  '1': 'PHObject',
  '2': const [
    const {'1': 'local_identifier', '3': 1, '4': 1, '5': 9, '10': 'localIdentifier'},
  ],
};

const PHCollection$json = const {
  '1': 'PHCollection',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHObject', '10': 'base'},
    const {'1': 'localized_title', '3': 2, '4': 1, '5': 9, '10': 'localizedTitle'},
    const {'1': 'can_contain_assets', '3': 3, '4': 1, '5': 8, '10': 'canContainAssets'},
    const {'1': 'can_contain_collections', '3': 4, '4': 1, '5': 8, '10': 'canContainCollections'},
  ],
};

const PHCollectionList$json = const {
  '1': 'PHCollectionList',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHCollection', '10': 'base'},
    const {'1': 'collection_list_type', '3': 2, '4': 1, '5': 14, '6': '.flutter_photokit.PHCollectionListType', '10': 'collectionListType'},
    const {'1': 'collection_list_subtype', '3': 3, '4': 1, '5': 14, '6': '.flutter_photokit.PHCollectionListSubtype', '10': 'collectionListSubtype'},
    const {'1': 'start_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'end_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'localized_location_names', '3': 6, '4': 3, '5': 9, '10': 'localizedLocationNames'},
  ],
};

const CLLocation$json = const {
  '1': 'CLLocation',
};

const PHAssetCollection$json = const {
  '1': 'PHAssetCollection',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHCollection', '10': 'base'},
    const {'1': 'asset_collection_type', '3': 2, '4': 1, '5': 14, '6': '.flutter_photokit.PHAssetCollectionType', '10': 'assetCollectionType'},
    const {'1': 'asset_collection_subtype', '3': 3, '4': 1, '5': 14, '6': '.flutter_photokit.PHAssetCollectionSubtype', '10': 'assetCollectionSubtype'},
    const {'1': 'estimated_asset_count', '3': 4, '4': 1, '5': 3, '10': 'estimatedAssetCount'},
    const {'1': 'start_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    const {'1': 'end_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    const {'1': 'approximate_location', '3': 7, '4': 1, '5': 11, '6': '.flutter_photokit.CLLocation', '10': 'approximateLocation'},
    const {'1': 'localized_location_names', '3': 8, '4': 3, '5': 9, '10': 'localizedLocationNames'},
  ],
};

const PHAsset$json = const {
  '1': 'PHAsset',
  '2': const [
    const {'1': 'base', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHObject', '10': 'base'},
    const {'1': 'media_type', '3': 2, '4': 1, '5': 14, '6': '.flutter_photokit.PHAssetMediaType', '10': 'mediaType'},
    const {'1': 'pixel_width', '3': 5, '4': 1, '5': 3, '10': 'pixelWidth'},
    const {'1': 'pixel_height', '3': 6, '4': 1, '5': 3, '10': 'pixelHeight'},
    const {'1': 'creation_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'creationDate'},
    const {'1': 'modification_date', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modificationDate'},
    const {'1': 'location', '3': 9, '4': 1, '5': 11, '6': '.flutter_photokit.CLLocation', '10': 'location'},
    const {'1': 'duration', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'duration'},
    const {'1': 'is_favorite', '3': 11, '4': 1, '5': 8, '10': 'isFavorite'},
    const {'1': 'is_hidden', '3': 12, '4': 1, '5': 8, '10': 'isHidden'},
    const {'1': 'playback_style', '3': 13, '4': 1, '5': 14, '6': '.flutter_photokit.PHAssetPlaybackStyle', '10': 'playbackStyle'},
    const {'1': 'burst_identifier', '3': 14, '4': 1, '5': 9, '10': 'burstIdentifier'},
    const {'1': 'represents_burst', '3': 16, '4': 1, '5': 8, '10': 'representsBurst'},
  ],
};

const AssetCollectionOrCollectionList$json = const {
  '1': 'AssetCollectionOrCollectionList',
  '2': const [
    const {'1': 'collection_list', '3': 1, '4': 1, '5': 11, '6': '.flutter_photokit.PHCollectionList', '9': 0, '10': 'collectionList'},
    const {'1': 'asset_collection', '3': 2, '4': 1, '5': 11, '6': '.flutter_photokit.PHAssetCollection', '9': 0, '10': 'assetCollection'},
  ],
  '8': const [
    const {'1': 'collection'},
  ],
};

const PHFetchResultPHCollection$json = const {
  '1': 'PHFetchResultPHCollection',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.flutter_photokit.AssetCollectionOrCollectionList', '10': 'results'},
  ],
};

const PHFetchOptions$json = const {
  '1': 'PHFetchOptions',
  '2': const [
    const {'1': 'include_all_burst_assets', '3': 1, '4': 1, '5': 8, '10': 'includeAllBurstAssets'},
    const {'1': 'include_hidden_assets', '3': 2, '4': 1, '5': 8, '10': 'includeHiddenAssets'},
  ],
};

const PHFetchResultPHAsset$json = const {
  '1': 'PHFetchResultPHAsset',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.flutter_photokit.PHAsset', '10': 'results'},
  ],
};

const PHAssetResource$json = const {
  '1': 'PHAssetResource',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.flutter_photokit.PHAssetResourceType', '10': 'type'},
    const {'1': 'assetLocalIdentifier', '3': 2, '4': 1, '5': 9, '10': 'assetLocalIdentifier'},
    const {'1': 'uniformTypeIdentifier', '3': 3, '4': 1, '5': 9, '10': 'uniformTypeIdentifier'},
    const {'1': 'originalFilename', '3': 4, '4': 1, '5': 9, '10': 'originalFilename'},
  ],
};

const PhotoKitServiceBase$json = const {
  '1': 'PhotoKit',
  '2': const [
    const {'1': 'Trigger', '2': '.flutter_photokit.TriggerRequest', '3': '.flutter_photokit.TriggerResponse', '4': const {}},
    const {'1': 'GetAuthorizationStatus', '2': '.flutter_photokit.GetAuthorizationStatusRequest', '3': '.flutter_photokit.GetAuthorizationStatusResponse', '4': const {}},
    const {'1': 'RequestAuthorization', '2': '.flutter_photokit.RequestAuthorizationRequest', '3': '.flutter_photokit.RequestAuthorizationResponse', '4': const {}},
    const {'1': 'OpenSettings', '2': '.flutter_photokit.OpenSettingsRequest', '3': '.flutter_photokit.OpenSettingsResponse', '4': const {}},
    const {'1': 'FetchTopLevelUserCollections', '2': '.flutter_photokit.FetchTopLevelUserCollectionsRequest', '3': '.flutter_photokit.FetchTopLevelUserCollectionsResponse', '4': const {}},
    const {'1': 'FetchCollectionsInCollectionList', '2': '.flutter_photokit.FetchCollectionsInCollectionListRequest', '3': '.flutter_photokit.FetchCollectionsInCollectionListResponse', '4': const {}},
    const {'1': 'FetchAssetsInCollection', '2': '.flutter_photokit.FetchAssetsInCollectionRequest', '3': '.flutter_photokit.FetchAssetsInCollectionResponse', '4': const {}},
    const {'1': 'FetchAssets', '2': '.flutter_photokit.FetchAssetsRequest', '3': '.flutter_photokit.FetchAssetsResponse', '4': const {}},
    const {'1': 'RequestImageForAsset', '2': '.flutter_photokit.RequestImageForAssetRequest', '3': '.flutter_photokit.RequestImageForAssetResponse', '4': const {}},
    const {'1': 'RequestMetadataForAsset', '2': '.flutter_photokit.RequestMetadataForAssetRequest', '3': '.flutter_photokit.RequestMetadataForAssetResponse', '4': const {}},
    const {'1': 'AssetResourcesForAsset', '2': '.flutter_photokit.AssetResourcesForAssetRequest', '3': '.flutter_photokit.AssetResourcesForAssetResponse', '4': const {}},
  ],
};

const PhotoKitServiceBase$messageJson = const {
  '.flutter_photokit.TriggerRequest': TriggerRequest$json,
  '.flutter_photokit.TriggerResponse': TriggerResponse$json,
  '.flutter_photokit.GetAuthorizationStatusRequest': GetAuthorizationStatusRequest$json,
  '.flutter_photokit.GetAuthorizationStatusResponse': GetAuthorizationStatusResponse$json,
  '.flutter_photokit.RequestAuthorizationRequest': RequestAuthorizationRequest$json,
  '.flutter_photokit.RequestAuthorizationResponse': RequestAuthorizationResponse$json,
  '.flutter_photokit.OpenSettingsRequest': OpenSettingsRequest$json,
  '.flutter_photokit.OpenSettingsResponse': OpenSettingsResponse$json,
  '.flutter_photokit.FetchTopLevelUserCollectionsRequest': FetchTopLevelUserCollectionsRequest$json,
  '.flutter_photokit.PHFetchOptions': PHFetchOptions$json,
  '.flutter_photokit.FetchTopLevelUserCollectionsResponse': FetchTopLevelUserCollectionsResponse$json,
  '.flutter_photokit.PHFetchResultPHCollection': PHFetchResultPHCollection$json,
  '.flutter_photokit.AssetCollectionOrCollectionList': AssetCollectionOrCollectionList$json,
  '.flutter_photokit.PHCollectionList': PHCollectionList$json,
  '.flutter_photokit.PHCollection': PHCollection$json,
  '.flutter_photokit.PHObject': PHObject$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.flutter_photokit.PHAssetCollection': PHAssetCollection$json,
  '.flutter_photokit.CLLocation': CLLocation$json,
  '.flutter_photokit.FetchCollectionsInCollectionListRequest': FetchCollectionsInCollectionListRequest$json,
  '.flutter_photokit.FetchCollectionsInCollectionListResponse': FetchCollectionsInCollectionListResponse$json,
  '.flutter_photokit.FetchAssetsInCollectionRequest': FetchAssetsInCollectionRequest$json,
  '.flutter_photokit.FetchAssetsInCollectionResponse': FetchAssetsInCollectionResponse$json,
  '.flutter_photokit.PHFetchResultPHAsset': PHFetchResultPHAsset$json,
  '.flutter_photokit.PHAsset': PHAsset$json,
  '.google.protobuf.Duration': $1.Duration$json,
  '.flutter_photokit.FetchAssetsRequest': FetchAssetsRequest$json,
  '.flutter_photokit.FetchAssetsResponse': FetchAssetsResponse$json,
  '.flutter_photokit.RequestImageForAssetRequest': RequestImageForAssetRequest$json,
  '.flutter_photokit.RequestImageForAssetResponse': RequestImageForAssetResponse$json,
  '.flutter_photokit.RequestMetadataForAssetRequest': RequestMetadataForAssetRequest$json,
  '.flutter_photokit.RequestMetadataForAssetResponse': RequestMetadataForAssetResponse$json,
  '.flutter_photokit.MetadataNode': MetadataNode$json,
  '.flutter_photokit.MetadataNode.ChildrenEntry': MetadataNode_ChildrenEntry$json,
  '.flutter_photokit.MetadataNode.LeafsEntry': MetadataNode_LeafsEntry$json,
  '.flutter_photokit.MetadataLeaf': MetadataLeaf$json,
  '.flutter_photokit.AssetResourcesForAssetRequest': AssetResourcesForAssetRequest$json,
  '.flutter_photokit.AssetResourcesForAssetResponse': AssetResourcesForAssetResponse$json,
  '.flutter_photokit.PHAssetResource': PHAssetResource$json,
};

