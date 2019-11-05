///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'photokit.pb.dart' as $2;
import 'photokit.pbjson.dart';

export 'photokit.pb.dart';

abstract class PhotoKitServiceBase extends $pb.GeneratedService {
  $async.Future<$2.TriggerResponse> trigger($pb.ServerContext ctx, $2.TriggerRequest request);
  $async.Future<$2.GetAuthorizationStatusResponse> getAuthorizationStatus($pb.ServerContext ctx, $2.GetAuthorizationStatusRequest request);
  $async.Future<$2.RequestAuthorizationResponse> requestAuthorization($pb.ServerContext ctx, $2.RequestAuthorizationRequest request);
  $async.Future<$2.OpenSettingsResponse> openSettings($pb.ServerContext ctx, $2.OpenSettingsRequest request);
  $async.Future<$2.FetchTopLevelUserCollectionsResponse> fetchTopLevelUserCollections($pb.ServerContext ctx, $2.FetchTopLevelUserCollectionsRequest request);
  $async.Future<$2.FetchCollectionsInCollectionListResponse> fetchCollectionsInCollectionList($pb.ServerContext ctx, $2.FetchCollectionsInCollectionListRequest request);
  $async.Future<$2.FetchAssetsInCollectionResponse> fetchAssetsInCollection($pb.ServerContext ctx, $2.FetchAssetsInCollectionRequest request);
  $async.Future<$2.FetchAssetsResponse> fetchAssets($pb.ServerContext ctx, $2.FetchAssetsRequest request);
  $async.Future<$2.RequestImageForAssetResponse> requestImageForAsset($pb.ServerContext ctx, $2.RequestImageForAssetRequest request);
  $async.Future<$2.RequestMetadataForAssetResponse> requestMetadataForAsset($pb.ServerContext ctx, $2.RequestMetadataForAssetRequest request);
  $async.Future<$2.AssetResourcesForAssetResponse> assetResourcesForAsset($pb.ServerContext ctx, $2.AssetResourcesForAssetRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Trigger': return $2.TriggerRequest();
      case 'GetAuthorizationStatus': return $2.GetAuthorizationStatusRequest();
      case 'RequestAuthorization': return $2.RequestAuthorizationRequest();
      case 'OpenSettings': return $2.OpenSettingsRequest();
      case 'FetchTopLevelUserCollections': return $2.FetchTopLevelUserCollectionsRequest();
      case 'FetchCollectionsInCollectionList': return $2.FetchCollectionsInCollectionListRequest();
      case 'FetchAssetsInCollection': return $2.FetchAssetsInCollectionRequest();
      case 'FetchAssets': return $2.FetchAssetsRequest();
      case 'RequestImageForAsset': return $2.RequestImageForAssetRequest();
      case 'RequestMetadataForAsset': return $2.RequestMetadataForAssetRequest();
      case 'AssetResourcesForAsset': return $2.AssetResourcesForAssetRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Trigger': return this.trigger(ctx, request);
      case 'GetAuthorizationStatus': return this.getAuthorizationStatus(ctx, request);
      case 'RequestAuthorization': return this.requestAuthorization(ctx, request);
      case 'OpenSettings': return this.openSettings(ctx, request);
      case 'FetchTopLevelUserCollections': return this.fetchTopLevelUserCollections(ctx, request);
      case 'FetchCollectionsInCollectionList': return this.fetchCollectionsInCollectionList(ctx, request);
      case 'FetchAssetsInCollection': return this.fetchAssetsInCollection(ctx, request);
      case 'FetchAssets': return this.fetchAssets(ctx, request);
      case 'RequestImageForAsset': return this.requestImageForAsset(ctx, request);
      case 'RequestMetadataForAsset': return this.requestMetadataForAsset(ctx, request);
      case 'AssetResourcesForAsset': return this.assetResourcesForAsset(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PhotoKitServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PhotoKitServiceBase$messageJson;
}

