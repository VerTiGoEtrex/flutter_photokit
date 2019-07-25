import 'dart:typed_data';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_photokit/proto/photokit.pb.dart';
import 'package:flutter_photokit/proto/photokit.pbserver.dart';
import 'package:protobuf/protobuf.dart';

export 'package:flutter_photokit/proto/photokit.pb.dart';

class FlutterPhotokit {
  final PhotoKitApi api =
      PhotoKitApi(MethodChannelRpcClient(MethodChannel('flutter_photokit')));
  final ClientContext _ctx = ClientContext();

  Future<AuthorizationStatus> get authorizationStatus async {
    final response =
        await api.getAuthorizationStatus(_ctx, GetAuthorizationStatusRequest());
    return response.status;
  }

  Future<AuthorizationStatus> requestAuth() async {
    final response =
        await api.requestAuthorization(_ctx, RequestAuthorizationRequest());
    return response.status;
  }

  Future<void> trigger() async {
    final response = await api.trigger(_ctx, TriggerRequest());
  }

  Future<List<AssetCollectionOrCollectionList>>
      fetchTopLevelUserCollections() async {
    final response = await api.fetchTopLevelUserCollections(
        _ctx,
        FetchTopLevelUserCollectionsRequest()
          ..fetchOptions = (PHFetchOptions()..includeHiddenAssets = true));
    return response.result.results;
  }

  Future<List<AssetCollectionOrCollectionList>>
      fetchCollectionsInCollectionList(final PHCollectionList collectionList,
          {final PHFetchOptions fetchOptions}) async {
    final request = FetchCollectionsInCollectionListRequest()
      ..collectionListLocalIdentifier =
          collectionList.base.base.localIdentifier;
    if (fetchOptions != null) request.options = fetchOptions;
    final response = await api.fetchCollectionsInCollectionList(
      _ctx,
      request,
    );
    return response.fetchResult.results;
  }

  Future<List<PHAsset>> fetchAssetsInCollection(
      final PHAssetCollection assetCollection,
      {final PHFetchOptions fetchOptions}) async {
    final request = FetchAssetsInCollectionRequest()
      ..collectionLocalIdentifier = assetCollection.base.base.localIdentifier;
    if (fetchOptions != null) request.options = fetchOptions;
    final response = await api.fetchAssetsInCollection(_ctx, request);
    return response.fetchResult.results;
  }

  Future<List<PHAsset>> fetchAssets({final PHFetchOptions fetchOptions}) async {
    final request = FetchAssetsRequest();
    if (fetchOptions != null) request.options = fetchOptions;
    final response = await api.fetchAssets(_ctx, request);
    return response.fetchResult.results;
  }

  Future<Uint8List> requestImage(final PHAsset asset) async {
    final request = RequestImageForAssetRequest()
      ..assetLocalIdentifier = asset.base.localIdentifier;
    final response = await api.requestImageForAsset(_ctx, request);
    return response.imageData;
  }

  Future<MetadataNode> requestMetadataForAsset(final PHAsset asset) async {
    final request = RequestMetadataForAssetRequest()
      ..assetLocalIdentifier = asset.base.localIdentifier;
    final response = await api.requestMetadataForAsset(_ctx, request);
    return response.root;
  }

  Future<List<PHAssetResource>> assetResourcesForAsset(
      final PHAsset asset) async {
    final request = AssetResourcesForAssetRequest()
      ..assetLocalIdentifier = asset.base.localIdentifier;
    final response = await api.assetResourcesForAsset(_ctx, request);
    return response.resources;
  }
}

class MethodChannelRpcClient extends RpcClient {
  final MethodChannel channel;
  MethodChannelRpcClient(this.channel);

  @override
  Future<T> invoke<T extends GeneratedMessage>(
    ClientContext ctx,
    String serviceName,
    String methodName,
    GeneratedMessage request,
    T emptyResponse,
  ) async {
    final Uint8List res = await channel.invokeMethod(
      methodName,
      request.writeToBuffer(),
    );
    return emptyResponse..mergeFromBuffer(res);
  }
}
