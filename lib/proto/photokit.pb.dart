///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;
import 'google/protobuf/duration.pb.dart' as $1;

import 'photokit.pbenum.dart';

export 'photokit.pbenum.dart';

class TriggerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TriggerRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TriggerRequest._() : super();
  factory TriggerRequest() => create();
  factory TriggerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TriggerRequest clone() => TriggerRequest()..mergeFromMessage(this);
  TriggerRequest copyWith(void Function(TriggerRequest) updates) => super.copyWith((message) => updates(message as TriggerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TriggerRequest create() => TriggerRequest._();
  TriggerRequest createEmptyInstance() => create();
  static $pb.PbList<TriggerRequest> createRepeated() => $pb.PbList<TriggerRequest>();
  @$core.pragma('dart2js:noInline')
  static TriggerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TriggerRequest>(create);
  static TriggerRequest _defaultInstance;
}

class TriggerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TriggerResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TriggerResponse._() : super();
  factory TriggerResponse() => create();
  factory TriggerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TriggerResponse clone() => TriggerResponse()..mergeFromMessage(this);
  TriggerResponse copyWith(void Function(TriggerResponse) updates) => super.copyWith((message) => updates(message as TriggerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TriggerResponse create() => TriggerResponse._();
  TriggerResponse createEmptyInstance() => create();
  static $pb.PbList<TriggerResponse> createRepeated() => $pb.PbList<TriggerResponse>();
  @$core.pragma('dart2js:noInline')
  static TriggerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TriggerResponse>(create);
  static TriggerResponse _defaultInstance;
}

class GetAuthorizationStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthorizationStatusRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAuthorizationStatusRequest._() : super();
  factory GetAuthorizationStatusRequest() => create();
  factory GetAuthorizationStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthorizationStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAuthorizationStatusRequest clone() => GetAuthorizationStatusRequest()..mergeFromMessage(this);
  GetAuthorizationStatusRequest copyWith(void Function(GetAuthorizationStatusRequest) updates) => super.copyWith((message) => updates(message as GetAuthorizationStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthorizationStatusRequest create() => GetAuthorizationStatusRequest._();
  GetAuthorizationStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetAuthorizationStatusRequest> createRepeated() => $pb.PbList<GetAuthorizationStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAuthorizationStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAuthorizationStatusRequest>(create);
  static GetAuthorizationStatusRequest _defaultInstance;
}

class GetAuthorizationStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthorizationStatusResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: AuthorizationStatus.AUTHORIZATION_STATUS_INVALID, valueOf: AuthorizationStatus.valueOf, enumValues: AuthorizationStatus.values)
    ..hasRequiredFields = false
  ;

  GetAuthorizationStatusResponse._() : super();
  factory GetAuthorizationStatusResponse() => create();
  factory GetAuthorizationStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthorizationStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAuthorizationStatusResponse clone() => GetAuthorizationStatusResponse()..mergeFromMessage(this);
  GetAuthorizationStatusResponse copyWith(void Function(GetAuthorizationStatusResponse) updates) => super.copyWith((message) => updates(message as GetAuthorizationStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthorizationStatusResponse create() => GetAuthorizationStatusResponse._();
  GetAuthorizationStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetAuthorizationStatusResponse> createRepeated() => $pb.PbList<GetAuthorizationStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAuthorizationStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAuthorizationStatusResponse>(create);
  static GetAuthorizationStatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  AuthorizationStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AuthorizationStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RequestAuthorizationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RequestAuthorizationRequest._() : super();
  factory RequestAuthorizationRequest() => create();
  factory RequestAuthorizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestAuthorizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestAuthorizationRequest clone() => RequestAuthorizationRequest()..mergeFromMessage(this);
  RequestAuthorizationRequest copyWith(void Function(RequestAuthorizationRequest) updates) => super.copyWith((message) => updates(message as RequestAuthorizationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationRequest create() => RequestAuthorizationRequest._();
  RequestAuthorizationRequest createEmptyInstance() => create();
  static $pb.PbList<RequestAuthorizationRequest> createRepeated() => $pb.PbList<RequestAuthorizationRequest>();
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestAuthorizationRequest>(create);
  static RequestAuthorizationRequest _defaultInstance;
}

class RequestAuthorizationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, defaultOrMaker: AuthorizationStatus.AUTHORIZATION_STATUS_INVALID, valueOf: AuthorizationStatus.valueOf, enumValues: AuthorizationStatus.values)
    ..hasRequiredFields = false
  ;

  RequestAuthorizationResponse._() : super();
  factory RequestAuthorizationResponse() => create();
  factory RequestAuthorizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestAuthorizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestAuthorizationResponse clone() => RequestAuthorizationResponse()..mergeFromMessage(this);
  RequestAuthorizationResponse copyWith(void Function(RequestAuthorizationResponse) updates) => super.copyWith((message) => updates(message as RequestAuthorizationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationResponse create() => RequestAuthorizationResponse._();
  RequestAuthorizationResponse createEmptyInstance() => create();
  static $pb.PbList<RequestAuthorizationResponse> createRepeated() => $pb.PbList<RequestAuthorizationResponse>();
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestAuthorizationResponse>(create);
  static RequestAuthorizationResponse _defaultInstance;

  @$pb.TagNumber(1)
  AuthorizationStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(AuthorizationStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class OpenSettingsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenSettingsRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  OpenSettingsRequest._() : super();
  factory OpenSettingsRequest() => create();
  factory OpenSettingsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenSettingsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenSettingsRequest clone() => OpenSettingsRequest()..mergeFromMessage(this);
  OpenSettingsRequest copyWith(void Function(OpenSettingsRequest) updates) => super.copyWith((message) => updates(message as OpenSettingsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenSettingsRequest create() => OpenSettingsRequest._();
  OpenSettingsRequest createEmptyInstance() => create();
  static $pb.PbList<OpenSettingsRequest> createRepeated() => $pb.PbList<OpenSettingsRequest>();
  @$core.pragma('dart2js:noInline')
  static OpenSettingsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenSettingsRequest>(create);
  static OpenSettingsRequest _defaultInstance;
}

class OpenSettingsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenSettingsResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  OpenSettingsResponse._() : super();
  factory OpenSettingsResponse() => create();
  factory OpenSettingsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenSettingsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  OpenSettingsResponse clone() => OpenSettingsResponse()..mergeFromMessage(this);
  OpenSettingsResponse copyWith(void Function(OpenSettingsResponse) updates) => super.copyWith((message) => updates(message as OpenSettingsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenSettingsResponse create() => OpenSettingsResponse._();
  OpenSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<OpenSettingsResponse> createRepeated() => $pb.PbList<OpenSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static OpenSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenSettingsResponse>(create);
  static OpenSettingsResponse _defaultInstance;
}

class FetchTopLevelUserCollectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchTopLevelUserCollectionsRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchOptions>(1, 'fetchOptions', subBuilder: PHFetchOptions.create)
    ..hasRequiredFields = false
  ;

  FetchTopLevelUserCollectionsRequest._() : super();
  factory FetchTopLevelUserCollectionsRequest() => create();
  factory FetchTopLevelUserCollectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTopLevelUserCollectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchTopLevelUserCollectionsRequest clone() => FetchTopLevelUserCollectionsRequest()..mergeFromMessage(this);
  FetchTopLevelUserCollectionsRequest copyWith(void Function(FetchTopLevelUserCollectionsRequest) updates) => super.copyWith((message) => updates(message as FetchTopLevelUserCollectionsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTopLevelUserCollectionsRequest create() => FetchTopLevelUserCollectionsRequest._();
  FetchTopLevelUserCollectionsRequest createEmptyInstance() => create();
  static $pb.PbList<FetchTopLevelUserCollectionsRequest> createRepeated() => $pb.PbList<FetchTopLevelUserCollectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchTopLevelUserCollectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTopLevelUserCollectionsRequest>(create);
  static FetchTopLevelUserCollectionsRequest _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchOptions get fetchOptions => $_getN(0);
  @$pb.TagNumber(1)
  set fetchOptions(PHFetchOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFetchOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearFetchOptions() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchOptions ensureFetchOptions() => $_ensure(0);
}

class FetchTopLevelUserCollectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchTopLevelUserCollectionsResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchResultPHCollection>(1, 'result', subBuilder: PHFetchResultPHCollection.create)
    ..hasRequiredFields = false
  ;

  FetchTopLevelUserCollectionsResponse._() : super();
  factory FetchTopLevelUserCollectionsResponse() => create();
  factory FetchTopLevelUserCollectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTopLevelUserCollectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchTopLevelUserCollectionsResponse clone() => FetchTopLevelUserCollectionsResponse()..mergeFromMessage(this);
  FetchTopLevelUserCollectionsResponse copyWith(void Function(FetchTopLevelUserCollectionsResponse) updates) => super.copyWith((message) => updates(message as FetchTopLevelUserCollectionsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTopLevelUserCollectionsResponse create() => FetchTopLevelUserCollectionsResponse._();
  FetchTopLevelUserCollectionsResponse createEmptyInstance() => create();
  static $pb.PbList<FetchTopLevelUserCollectionsResponse> createRepeated() => $pb.PbList<FetchTopLevelUserCollectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchTopLevelUserCollectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTopLevelUserCollectionsResponse>(create);
  static FetchTopLevelUserCollectionsResponse _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchResultPHCollection get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(PHFetchResultPHCollection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchResultPHCollection ensureResult() => $_ensure(0);
}

class FetchCollectionsInCollectionListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchCollectionsInCollectionListRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'collectionListLocalIdentifier')
    ..aOM<PHFetchOptions>(2, 'options', subBuilder: PHFetchOptions.create)
    ..hasRequiredFields = false
  ;

  FetchCollectionsInCollectionListRequest._() : super();
  factory FetchCollectionsInCollectionListRequest() => create();
  factory FetchCollectionsInCollectionListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCollectionsInCollectionListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchCollectionsInCollectionListRequest clone() => FetchCollectionsInCollectionListRequest()..mergeFromMessage(this);
  FetchCollectionsInCollectionListRequest copyWith(void Function(FetchCollectionsInCollectionListRequest) updates) => super.copyWith((message) => updates(message as FetchCollectionsInCollectionListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCollectionsInCollectionListRequest create() => FetchCollectionsInCollectionListRequest._();
  FetchCollectionsInCollectionListRequest createEmptyInstance() => create();
  static $pb.PbList<FetchCollectionsInCollectionListRequest> createRepeated() => $pb.PbList<FetchCollectionsInCollectionListRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchCollectionsInCollectionListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCollectionsInCollectionListRequest>(create);
  static FetchCollectionsInCollectionListRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionListLocalIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionListLocalIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionListLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionListLocalIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  PHFetchOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(PHFetchOptions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  PHFetchOptions ensureOptions() => $_ensure(1);
}

class FetchCollectionsInCollectionListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchCollectionsInCollectionListResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchResultPHCollection>(1, 'fetchResult', subBuilder: PHFetchResultPHCollection.create)
    ..hasRequiredFields = false
  ;

  FetchCollectionsInCollectionListResponse._() : super();
  factory FetchCollectionsInCollectionListResponse() => create();
  factory FetchCollectionsInCollectionListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCollectionsInCollectionListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchCollectionsInCollectionListResponse clone() => FetchCollectionsInCollectionListResponse()..mergeFromMessage(this);
  FetchCollectionsInCollectionListResponse copyWith(void Function(FetchCollectionsInCollectionListResponse) updates) => super.copyWith((message) => updates(message as FetchCollectionsInCollectionListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCollectionsInCollectionListResponse create() => FetchCollectionsInCollectionListResponse._();
  FetchCollectionsInCollectionListResponse createEmptyInstance() => create();
  static $pb.PbList<FetchCollectionsInCollectionListResponse> createRepeated() => $pb.PbList<FetchCollectionsInCollectionListResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchCollectionsInCollectionListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCollectionsInCollectionListResponse>(create);
  static FetchCollectionsInCollectionListResponse _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchResultPHCollection get fetchResult => $_getN(0);
  @$pb.TagNumber(1)
  set fetchResult(PHFetchResultPHCollection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFetchResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearFetchResult() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchResultPHCollection ensureFetchResult() => $_ensure(0);
}

class FetchAssetsInCollectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchAssetsInCollectionRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'collectionLocalIdentifier')
    ..aOM<PHFetchOptions>(2, 'options', subBuilder: PHFetchOptions.create)
    ..hasRequiredFields = false
  ;

  FetchAssetsInCollectionRequest._() : super();
  factory FetchAssetsInCollectionRequest() => create();
  factory FetchAssetsInCollectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAssetsInCollectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchAssetsInCollectionRequest clone() => FetchAssetsInCollectionRequest()..mergeFromMessage(this);
  FetchAssetsInCollectionRequest copyWith(void Function(FetchAssetsInCollectionRequest) updates) => super.copyWith((message) => updates(message as FetchAssetsInCollectionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchAssetsInCollectionRequest create() => FetchAssetsInCollectionRequest._();
  FetchAssetsInCollectionRequest createEmptyInstance() => create();
  static $pb.PbList<FetchAssetsInCollectionRequest> createRepeated() => $pb.PbList<FetchAssetsInCollectionRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchAssetsInCollectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAssetsInCollectionRequest>(create);
  static FetchAssetsInCollectionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get collectionLocalIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set collectionLocalIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionLocalIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  PHFetchOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(PHFetchOptions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  PHFetchOptions ensureOptions() => $_ensure(1);
}

class FetchAssetsInCollectionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchAssetsInCollectionResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchResultPHAsset>(1, 'fetchResult', subBuilder: PHFetchResultPHAsset.create)
    ..hasRequiredFields = false
  ;

  FetchAssetsInCollectionResponse._() : super();
  factory FetchAssetsInCollectionResponse() => create();
  factory FetchAssetsInCollectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAssetsInCollectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchAssetsInCollectionResponse clone() => FetchAssetsInCollectionResponse()..mergeFromMessage(this);
  FetchAssetsInCollectionResponse copyWith(void Function(FetchAssetsInCollectionResponse) updates) => super.copyWith((message) => updates(message as FetchAssetsInCollectionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchAssetsInCollectionResponse create() => FetchAssetsInCollectionResponse._();
  FetchAssetsInCollectionResponse createEmptyInstance() => create();
  static $pb.PbList<FetchAssetsInCollectionResponse> createRepeated() => $pb.PbList<FetchAssetsInCollectionResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchAssetsInCollectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAssetsInCollectionResponse>(create);
  static FetchAssetsInCollectionResponse _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchResultPHAsset get fetchResult => $_getN(0);
  @$pb.TagNumber(1)
  set fetchResult(PHFetchResultPHAsset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFetchResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearFetchResult() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchResultPHAsset ensureFetchResult() => $_ensure(0);
}

class FetchAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchAssetsRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchOptions>(1, 'options', subBuilder: PHFetchOptions.create)
    ..hasRequiredFields = false
  ;

  FetchAssetsRequest._() : super();
  factory FetchAssetsRequest() => create();
  factory FetchAssetsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAssetsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchAssetsRequest clone() => FetchAssetsRequest()..mergeFromMessage(this);
  FetchAssetsRequest copyWith(void Function(FetchAssetsRequest) updates) => super.copyWith((message) => updates(message as FetchAssetsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchAssetsRequest create() => FetchAssetsRequest._();
  FetchAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<FetchAssetsRequest> createRepeated() => $pb.PbList<FetchAssetsRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchAssetsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAssetsRequest>(create);
  static FetchAssetsRequest _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchOptions get options => $_getN(0);
  @$pb.TagNumber(1)
  set options(PHFetchOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptions() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchOptions ensureOptions() => $_ensure(0);
}

class FetchAssetsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchAssetsResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHFetchResultPHAsset>(1, 'fetchResult', subBuilder: PHFetchResultPHAsset.create)
    ..hasRequiredFields = false
  ;

  FetchAssetsResponse._() : super();
  factory FetchAssetsResponse() => create();
  factory FetchAssetsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchAssetsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FetchAssetsResponse clone() => FetchAssetsResponse()..mergeFromMessage(this);
  FetchAssetsResponse copyWith(void Function(FetchAssetsResponse) updates) => super.copyWith((message) => updates(message as FetchAssetsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchAssetsResponse create() => FetchAssetsResponse._();
  FetchAssetsResponse createEmptyInstance() => create();
  static $pb.PbList<FetchAssetsResponse> createRepeated() => $pb.PbList<FetchAssetsResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchAssetsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchAssetsResponse>(create);
  static FetchAssetsResponse _defaultInstance;

  @$pb.TagNumber(1)
  PHFetchResultPHAsset get fetchResult => $_getN(0);
  @$pb.TagNumber(1)
  set fetchResult(PHFetchResultPHAsset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFetchResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearFetchResult() => clearField(1);
  @$pb.TagNumber(1)
  PHFetchResultPHAsset ensureFetchResult() => $_ensure(0);
}

class RequestImageForAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestImageForAssetRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'assetLocalIdentifier')
    ..hasRequiredFields = false
  ;

  RequestImageForAssetRequest._() : super();
  factory RequestImageForAssetRequest() => create();
  factory RequestImageForAssetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestImageForAssetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestImageForAssetRequest clone() => RequestImageForAssetRequest()..mergeFromMessage(this);
  RequestImageForAssetRequest copyWith(void Function(RequestImageForAssetRequest) updates) => super.copyWith((message) => updates(message as RequestImageForAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestImageForAssetRequest create() => RequestImageForAssetRequest._();
  RequestImageForAssetRequest createEmptyInstance() => create();
  static $pb.PbList<RequestImageForAssetRequest> createRepeated() => $pb.PbList<RequestImageForAssetRequest>();
  @$core.pragma('dart2js:noInline')
  static RequestImageForAssetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestImageForAssetRequest>(create);
  static RequestImageForAssetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetLocalIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetLocalIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetLocalIdentifier() => clearField(1);
}

class RequestImageForAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestImageForAssetResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'imageData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RequestImageForAssetResponse._() : super();
  factory RequestImageForAssetResponse() => create();
  factory RequestImageForAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestImageForAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestImageForAssetResponse clone() => RequestImageForAssetResponse()..mergeFromMessage(this);
  RequestImageForAssetResponse copyWith(void Function(RequestImageForAssetResponse) updates) => super.copyWith((message) => updates(message as RequestImageForAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestImageForAssetResponse create() => RequestImageForAssetResponse._();
  RequestImageForAssetResponse createEmptyInstance() => create();
  static $pb.PbList<RequestImageForAssetResponse> createRepeated() => $pb.PbList<RequestImageForAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static RequestImageForAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestImageForAssetResponse>(create);
  static RequestImageForAssetResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get imageData => $_getN(0);
  @$pb.TagNumber(1)
  set imageData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageData() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageData() => clearField(1);
}

class RequestMetadataForAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestMetadataForAssetRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'assetLocalIdentifier')
    ..hasRequiredFields = false
  ;

  RequestMetadataForAssetRequest._() : super();
  factory RequestMetadataForAssetRequest() => create();
  factory RequestMetadataForAssetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMetadataForAssetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestMetadataForAssetRequest clone() => RequestMetadataForAssetRequest()..mergeFromMessage(this);
  RequestMetadataForAssetRequest copyWith(void Function(RequestMetadataForAssetRequest) updates) => super.copyWith((message) => updates(message as RequestMetadataForAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestMetadataForAssetRequest create() => RequestMetadataForAssetRequest._();
  RequestMetadataForAssetRequest createEmptyInstance() => create();
  static $pb.PbList<RequestMetadataForAssetRequest> createRepeated() => $pb.PbList<RequestMetadataForAssetRequest>();
  @$core.pragma('dart2js:noInline')
  static RequestMetadataForAssetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMetadataForAssetRequest>(create);
  static RequestMetadataForAssetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetLocalIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetLocalIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetLocalIdentifier() => clearField(1);
}

class RequestMetadataForAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestMetadataForAssetResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<MetadataNode>(1, 'root', subBuilder: MetadataNode.create)
    ..hasRequiredFields = false
  ;

  RequestMetadataForAssetResponse._() : super();
  factory RequestMetadataForAssetResponse() => create();
  factory RequestMetadataForAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMetadataForAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestMetadataForAssetResponse clone() => RequestMetadataForAssetResponse()..mergeFromMessage(this);
  RequestMetadataForAssetResponse copyWith(void Function(RequestMetadataForAssetResponse) updates) => super.copyWith((message) => updates(message as RequestMetadataForAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestMetadataForAssetResponse create() => RequestMetadataForAssetResponse._();
  RequestMetadataForAssetResponse createEmptyInstance() => create();
  static $pb.PbList<RequestMetadataForAssetResponse> createRepeated() => $pb.PbList<RequestMetadataForAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static RequestMetadataForAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMetadataForAssetResponse>(create);
  static RequestMetadataForAssetResponse _defaultInstance;

  @$pb.TagNumber(1)
  MetadataNode get root => $_getN(0);
  @$pb.TagNumber(1)
  set root(MetadataNode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoot() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoot() => clearField(1);
  @$pb.TagNumber(1)
  MetadataNode ensureRoot() => $_ensure(0);
}

class AssetResourcesForAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetResourcesForAssetRequest', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'assetLocalIdentifier')
    ..hasRequiredFields = false
  ;

  AssetResourcesForAssetRequest._() : super();
  factory AssetResourcesForAssetRequest() => create();
  factory AssetResourcesForAssetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetResourcesForAssetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetResourcesForAssetRequest clone() => AssetResourcesForAssetRequest()..mergeFromMessage(this);
  AssetResourcesForAssetRequest copyWith(void Function(AssetResourcesForAssetRequest) updates) => super.copyWith((message) => updates(message as AssetResourcesForAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetResourcesForAssetRequest create() => AssetResourcesForAssetRequest._();
  AssetResourcesForAssetRequest createEmptyInstance() => create();
  static $pb.PbList<AssetResourcesForAssetRequest> createRepeated() => $pb.PbList<AssetResourcesForAssetRequest>();
  @$core.pragma('dart2js:noInline')
  static AssetResourcesForAssetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetResourcesForAssetRequest>(create);
  static AssetResourcesForAssetRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get assetLocalIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set assetLocalIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssetLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetLocalIdentifier() => clearField(1);
}

class AssetResourcesForAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetResourcesForAssetResponse', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..pc<PHAssetResource>(1, 'resources', $pb.PbFieldType.PM, subBuilder: PHAssetResource.create)
    ..hasRequiredFields = false
  ;

  AssetResourcesForAssetResponse._() : super();
  factory AssetResourcesForAssetResponse() => create();
  factory AssetResourcesForAssetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetResourcesForAssetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetResourcesForAssetResponse clone() => AssetResourcesForAssetResponse()..mergeFromMessage(this);
  AssetResourcesForAssetResponse copyWith(void Function(AssetResourcesForAssetResponse) updates) => super.copyWith((message) => updates(message as AssetResourcesForAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetResourcesForAssetResponse create() => AssetResourcesForAssetResponse._();
  AssetResourcesForAssetResponse createEmptyInstance() => create();
  static $pb.PbList<AssetResourcesForAssetResponse> createRepeated() => $pb.PbList<AssetResourcesForAssetResponse>();
  @$core.pragma('dart2js:noInline')
  static AssetResourcesForAssetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetResourcesForAssetResponse>(create);
  static AssetResourcesForAssetResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PHAssetResource> get resources => $_getList(0);
}

class MetadataNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MetadataNode', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..m<$core.String, MetadataNode>(1, 'children', entryClassName: 'MetadataNode.ChildrenEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MetadataNode.create, packageName: const $pb.PackageName('flutter_photokit'))
    ..m<$core.String, MetadataLeaf>(2, 'leafs', entryClassName: 'MetadataNode.LeafsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MetadataLeaf.create, packageName: const $pb.PackageName('flutter_photokit'))
    ..hasRequiredFields = false
  ;

  MetadataNode._() : super();
  factory MetadataNode() => create();
  factory MetadataNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetadataNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MetadataNode clone() => MetadataNode()..mergeFromMessage(this);
  MetadataNode copyWith(void Function(MetadataNode) updates) => super.copyWith((message) => updates(message as MetadataNode));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetadataNode create() => MetadataNode._();
  MetadataNode createEmptyInstance() => create();
  static $pb.PbList<MetadataNode> createRepeated() => $pb.PbList<MetadataNode>();
  @$core.pragma('dart2js:noInline')
  static MetadataNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetadataNode>(create);
  static MetadataNode _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, MetadataNode> get children => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, MetadataLeaf> get leafs => $_getMap(1);
}

enum MetadataLeaf_Data {
  unknown, 
  stringValue, 
  floatValue, 
  doubleValue, 
  int32Value, 
  int64Value, 
  notSet
}

class MetadataLeaf extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, MetadataLeaf_Data> _MetadataLeaf_DataByTag = {
    1 : MetadataLeaf_Data.unknown,
    2 : MetadataLeaf_Data.stringValue,
    3 : MetadataLeaf_Data.floatValue,
    4 : MetadataLeaf_Data.doubleValue,
    5 : MetadataLeaf_Data.int32Value,
    6 : MetadataLeaf_Data.int64Value,
    0 : MetadataLeaf_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MetadataLeaf', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOS(1, 'unknown')
    ..aOS(2, 'stringValue')
    ..a<$core.double>(3, 'floatValue', $pb.PbFieldType.OF)
    ..a<$core.double>(4, 'doubleValue', $pb.PbFieldType.OD)
    ..a<$core.int>(5, 'int32Value', $pb.PbFieldType.O3)
    ..aInt64(6, 'int64Value')
    ..hasRequiredFields = false
  ;

  MetadataLeaf._() : super();
  factory MetadataLeaf() => create();
  factory MetadataLeaf.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetadataLeaf.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MetadataLeaf clone() => MetadataLeaf()..mergeFromMessage(this);
  MetadataLeaf copyWith(void Function(MetadataLeaf) updates) => super.copyWith((message) => updates(message as MetadataLeaf));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetadataLeaf create() => MetadataLeaf._();
  MetadataLeaf createEmptyInstance() => create();
  static $pb.PbList<MetadataLeaf> createRepeated() => $pb.PbList<MetadataLeaf>();
  @$core.pragma('dart2js:noInline')
  static MetadataLeaf getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetadataLeaf>(create);
  static MetadataLeaf _defaultInstance;

  MetadataLeaf_Data whichData() => _MetadataLeaf_DataByTag[$_whichOneof(0)];
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get unknown => $_getSZ(0);
  @$pb.TagNumber(1)
  set unknown($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnknown() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnknown() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get floatValue => $_getN(2);
  @$pb.TagNumber(3)
  set floatValue($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFloatValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloatValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get doubleValue => $_getN(3);
  @$pb.TagNumber(4)
  set doubleValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDoubleValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoubleValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get int32Value => $_getIZ(4);
  @$pb.TagNumber(5)
  set int32Value($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasInt32Value() => $_has(4);
  @$pb.TagNumber(5)
  void clearInt32Value() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get int64Value => $_getI64(5);
  @$pb.TagNumber(6)
  set int64Value($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInt64Value() => $_has(5);
  @$pb.TagNumber(6)
  void clearInt64Value() => clearField(6);
}

class PHObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHObject', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOS(1, 'localIdentifier')
    ..hasRequiredFields = false
  ;

  PHObject._() : super();
  factory PHObject() => create();
  factory PHObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHObject clone() => PHObject()..mergeFromMessage(this);
  PHObject copyWith(void Function(PHObject) updates) => super.copyWith((message) => updates(message as PHObject));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHObject create() => PHObject._();
  PHObject createEmptyInstance() => create();
  static $pb.PbList<PHObject> createRepeated() => $pb.PbList<PHObject>();
  @$core.pragma('dart2js:noInline')
  static PHObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHObject>(create);
  static PHObject _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set localIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalIdentifier() => clearField(1);
}

class PHCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHCollection', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHObject>(1, 'base', subBuilder: PHObject.create)
    ..aOS(2, 'localizedTitle')
    ..aOB(3, 'canContainAssets')
    ..aOB(4, 'canContainCollections')
    ..hasRequiredFields = false
  ;

  PHCollection._() : super();
  factory PHCollection() => create();
  factory PHCollection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHCollection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHCollection clone() => PHCollection()..mergeFromMessage(this);
  PHCollection copyWith(void Function(PHCollection) updates) => super.copyWith((message) => updates(message as PHCollection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHCollection create() => PHCollection._();
  PHCollection createEmptyInstance() => create();
  static $pb.PbList<PHCollection> createRepeated() => $pb.PbList<PHCollection>();
  @$core.pragma('dart2js:noInline')
  static PHCollection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHCollection>(create);
  static PHCollection _defaultInstance;

  @$pb.TagNumber(1)
  PHObject get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(PHObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  PHObject ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get localizedTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set localizedTitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocalizedTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalizedTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get canContainAssets => $_getBF(2);
  @$pb.TagNumber(3)
  set canContainAssets($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCanContainAssets() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanContainAssets() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get canContainCollections => $_getBF(3);
  @$pb.TagNumber(4)
  set canContainCollections($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCanContainCollections() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanContainCollections() => clearField(4);
}

class PHCollectionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHCollectionList', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHCollection>(1, 'base', subBuilder: PHCollection.create)
    ..e<PHCollectionListType>(2, 'collectionListType', $pb.PbFieldType.OE, defaultOrMaker: PHCollectionListType.PH_COLLECTION_LIST_TYPE_INVALID, valueOf: PHCollectionListType.valueOf, enumValues: PHCollectionListType.values)
    ..e<PHCollectionListSubtype>(3, 'collectionListSubtype', $pb.PbFieldType.OE, defaultOrMaker: PHCollectionListSubtype.PH_COLLECTION_LIST_SUBTYPE_INVALID, valueOf: PHCollectionListSubtype.valueOf, enumValues: PHCollectionListSubtype.values)
    ..aOM<$0.Timestamp>(4, 'startDate', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, 'endDate', subBuilder: $0.Timestamp.create)
    ..pPS(6, 'localizedLocationNames')
    ..hasRequiredFields = false
  ;

  PHCollectionList._() : super();
  factory PHCollectionList() => create();
  factory PHCollectionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHCollectionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHCollectionList clone() => PHCollectionList()..mergeFromMessage(this);
  PHCollectionList copyWith(void Function(PHCollectionList) updates) => super.copyWith((message) => updates(message as PHCollectionList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHCollectionList create() => PHCollectionList._();
  PHCollectionList createEmptyInstance() => create();
  static $pb.PbList<PHCollectionList> createRepeated() => $pb.PbList<PHCollectionList>();
  @$core.pragma('dart2js:noInline')
  static PHCollectionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHCollectionList>(create);
  static PHCollectionList _defaultInstance;

  @$pb.TagNumber(1)
  PHCollection get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(PHCollection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  PHCollection ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  PHCollectionListType get collectionListType => $_getN(1);
  @$pb.TagNumber(2)
  set collectionListType(PHCollectionListType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionListType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionListType() => clearField(2);

  @$pb.TagNumber(3)
  PHCollectionListSubtype get collectionListSubtype => $_getN(2);
  @$pb.TagNumber(3)
  set collectionListSubtype(PHCollectionListSubtype v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCollectionListSubtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearCollectionListSubtype() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get startDate => $_getN(3);
  @$pb.TagNumber(4)
  set startDate($0.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDate() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureStartDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Timestamp get endDate => $_getN(4);
  @$pb.TagNumber(5)
  set endDate($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDate() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureEndDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get localizedLocationNames => $_getList(5);
}

class CLLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CLLocation', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CLLocation._() : super();
  factory CLLocation() => create();
  factory CLLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CLLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CLLocation clone() => CLLocation()..mergeFromMessage(this);
  CLLocation copyWith(void Function(CLLocation) updates) => super.copyWith((message) => updates(message as CLLocation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CLLocation create() => CLLocation._();
  CLLocation createEmptyInstance() => create();
  static $pb.PbList<CLLocation> createRepeated() => $pb.PbList<CLLocation>();
  @$core.pragma('dart2js:noInline')
  static CLLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CLLocation>(create);
  static CLLocation _defaultInstance;
}

class PHAssetCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHAssetCollection', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHCollection>(1, 'base', subBuilder: PHCollection.create)
    ..e<PHAssetCollectionType>(2, 'assetCollectionType', $pb.PbFieldType.OE, defaultOrMaker: PHAssetCollectionType.PH_ASSET_COLLECTION_TYPE_INVALID, valueOf: PHAssetCollectionType.valueOf, enumValues: PHAssetCollectionType.values)
    ..e<PHAssetCollectionSubtype>(3, 'assetCollectionSubtype', $pb.PbFieldType.OE, defaultOrMaker: PHAssetCollectionSubtype.PH_ASSET_COLLECTION_SUBTYPE_INVALID, valueOf: PHAssetCollectionSubtype.valueOf, enumValues: PHAssetCollectionSubtype.values)
    ..aInt64(4, 'estimatedAssetCount')
    ..aOM<$0.Timestamp>(5, 'startDate', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, 'endDate', subBuilder: $0.Timestamp.create)
    ..aOM<CLLocation>(7, 'approximateLocation', subBuilder: CLLocation.create)
    ..pPS(8, 'localizedLocationNames')
    ..hasRequiredFields = false
  ;

  PHAssetCollection._() : super();
  factory PHAssetCollection() => create();
  factory PHAssetCollection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHAssetCollection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHAssetCollection clone() => PHAssetCollection()..mergeFromMessage(this);
  PHAssetCollection copyWith(void Function(PHAssetCollection) updates) => super.copyWith((message) => updates(message as PHAssetCollection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHAssetCollection create() => PHAssetCollection._();
  PHAssetCollection createEmptyInstance() => create();
  static $pb.PbList<PHAssetCollection> createRepeated() => $pb.PbList<PHAssetCollection>();
  @$core.pragma('dart2js:noInline')
  static PHAssetCollection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHAssetCollection>(create);
  static PHAssetCollection _defaultInstance;

  @$pb.TagNumber(1)
  PHCollection get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(PHCollection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  PHCollection ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  PHAssetCollectionType get assetCollectionType => $_getN(1);
  @$pb.TagNumber(2)
  set assetCollectionType(PHAssetCollectionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetCollectionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetCollectionType() => clearField(2);

  @$pb.TagNumber(3)
  PHAssetCollectionSubtype get assetCollectionSubtype => $_getN(2);
  @$pb.TagNumber(3)
  set assetCollectionSubtype(PHAssetCollectionSubtype v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssetCollectionSubtype() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssetCollectionSubtype() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get estimatedAssetCount => $_getI64(3);
  @$pb.TagNumber(4)
  set estimatedAssetCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEstimatedAssetCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearEstimatedAssetCount() => clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get startDate => $_getN(4);
  @$pb.TagNumber(5)
  set startDate($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartDate() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureStartDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get endDate => $_getN(5);
  @$pb.TagNumber(6)
  set endDate($0.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndDate() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureEndDate() => $_ensure(5);

  @$pb.TagNumber(7)
  CLLocation get approximateLocation => $_getN(6);
  @$pb.TagNumber(7)
  set approximateLocation(CLLocation v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasApproximateLocation() => $_has(6);
  @$pb.TagNumber(7)
  void clearApproximateLocation() => clearField(7);
  @$pb.TagNumber(7)
  CLLocation ensureApproximateLocation() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.List<$core.String> get localizedLocationNames => $_getList(7);
}

class PHAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHAsset', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOM<PHObject>(1, 'base', subBuilder: PHObject.create)
    ..e<PHAssetMediaType>(2, 'mediaType', $pb.PbFieldType.OE, defaultOrMaker: PHAssetMediaType.PH_ASSET_MEDIA_TYPE_INVALID, valueOf: PHAssetMediaType.valueOf, enumValues: PHAssetMediaType.values)
    ..aInt64(5, 'pixelWidth')
    ..aInt64(6, 'pixelHeight')
    ..aOM<$0.Timestamp>(7, 'creationDate', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, 'modificationDate', subBuilder: $0.Timestamp.create)
    ..aOM<CLLocation>(9, 'location', subBuilder: CLLocation.create)
    ..aOM<$1.Duration>(10, 'duration', subBuilder: $1.Duration.create)
    ..aOB(11, 'isFavorite')
    ..aOB(12, 'isHidden')
    ..e<PHAssetPlaybackStyle>(13, 'playbackStyle', $pb.PbFieldType.OE, defaultOrMaker: PHAssetPlaybackStyle.PH_ASSET_PLAYBACK_STYLE_INVALID, valueOf: PHAssetPlaybackStyle.valueOf, enumValues: PHAssetPlaybackStyle.values)
    ..aOS(14, 'burstIdentifier')
    ..aOB(16, 'representsBurst')
    ..hasRequiredFields = false
  ;

  PHAsset._() : super();
  factory PHAsset() => create();
  factory PHAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHAsset clone() => PHAsset()..mergeFromMessage(this);
  PHAsset copyWith(void Function(PHAsset) updates) => super.copyWith((message) => updates(message as PHAsset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHAsset create() => PHAsset._();
  PHAsset createEmptyInstance() => create();
  static $pb.PbList<PHAsset> createRepeated() => $pb.PbList<PHAsset>();
  @$core.pragma('dart2js:noInline')
  static PHAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHAsset>(create);
  static PHAsset _defaultInstance;

  @$pb.TagNumber(1)
  PHObject get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(PHObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  PHObject ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  PHAssetMediaType get mediaType => $_getN(1);
  @$pb.TagNumber(2)
  set mediaType(PHAssetMediaType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMediaType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMediaType() => clearField(2);

  @$pb.TagNumber(5)
  $fixnum.Int64 get pixelWidth => $_getI64(2);
  @$pb.TagNumber(5)
  set pixelWidth($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasPixelWidth() => $_has(2);
  @$pb.TagNumber(5)
  void clearPixelWidth() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get pixelHeight => $_getI64(3);
  @$pb.TagNumber(6)
  set pixelHeight($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasPixelHeight() => $_has(3);
  @$pb.TagNumber(6)
  void clearPixelHeight() => clearField(6);

  @$pb.TagNumber(7)
  $0.Timestamp get creationDate => $_getN(4);
  @$pb.TagNumber(7)
  set creationDate($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreationDate() => $_has(4);
  @$pb.TagNumber(7)
  void clearCreationDate() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureCreationDate() => $_ensure(4);

  @$pb.TagNumber(8)
  $0.Timestamp get modificationDate => $_getN(5);
  @$pb.TagNumber(8)
  set modificationDate($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasModificationDate() => $_has(5);
  @$pb.TagNumber(8)
  void clearModificationDate() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureModificationDate() => $_ensure(5);

  @$pb.TagNumber(9)
  CLLocation get location => $_getN(6);
  @$pb.TagNumber(9)
  set location(CLLocation v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLocation() => $_has(6);
  @$pb.TagNumber(9)
  void clearLocation() => clearField(9);
  @$pb.TagNumber(9)
  CLLocation ensureLocation() => $_ensure(6);

  @$pb.TagNumber(10)
  $1.Duration get duration => $_getN(7);
  @$pb.TagNumber(10)
  set duration($1.Duration v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDuration() => $_has(7);
  @$pb.TagNumber(10)
  void clearDuration() => clearField(10);
  @$pb.TagNumber(10)
  $1.Duration ensureDuration() => $_ensure(7);

  @$pb.TagNumber(11)
  $core.bool get isFavorite => $_getBF(8);
  @$pb.TagNumber(11)
  set isFavorite($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsFavorite() => $_has(8);
  @$pb.TagNumber(11)
  void clearIsFavorite() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get isHidden => $_getBF(9);
  @$pb.TagNumber(12)
  set isHidden($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsHidden() => $_has(9);
  @$pb.TagNumber(12)
  void clearIsHidden() => clearField(12);

  @$pb.TagNumber(13)
  PHAssetPlaybackStyle get playbackStyle => $_getN(10);
  @$pb.TagNumber(13)
  set playbackStyle(PHAssetPlaybackStyle v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlaybackStyle() => $_has(10);
  @$pb.TagNumber(13)
  void clearPlaybackStyle() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get burstIdentifier => $_getSZ(11);
  @$pb.TagNumber(14)
  set burstIdentifier($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(14)
  $core.bool hasBurstIdentifier() => $_has(11);
  @$pb.TagNumber(14)
  void clearBurstIdentifier() => clearField(14);

  @$pb.TagNumber(16)
  $core.bool get representsBurst => $_getBF(12);
  @$pb.TagNumber(16)
  set representsBurst($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(16)
  $core.bool hasRepresentsBurst() => $_has(12);
  @$pb.TagNumber(16)
  void clearRepresentsBurst() => clearField(16);
}

enum AssetCollectionOrCollectionList_Collection {
  collectionList, 
  assetCollection, 
  notSet
}

class AssetCollectionOrCollectionList extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AssetCollectionOrCollectionList_Collection> _AssetCollectionOrCollectionList_CollectionByTag = {
    1 : AssetCollectionOrCollectionList_Collection.collectionList,
    2 : AssetCollectionOrCollectionList_Collection.assetCollection,
    0 : AssetCollectionOrCollectionList_Collection.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetCollectionOrCollectionList', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<PHCollectionList>(1, 'collectionList', subBuilder: PHCollectionList.create)
    ..aOM<PHAssetCollection>(2, 'assetCollection', subBuilder: PHAssetCollection.create)
    ..hasRequiredFields = false
  ;

  AssetCollectionOrCollectionList._() : super();
  factory AssetCollectionOrCollectionList() => create();
  factory AssetCollectionOrCollectionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetCollectionOrCollectionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AssetCollectionOrCollectionList clone() => AssetCollectionOrCollectionList()..mergeFromMessage(this);
  AssetCollectionOrCollectionList copyWith(void Function(AssetCollectionOrCollectionList) updates) => super.copyWith((message) => updates(message as AssetCollectionOrCollectionList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetCollectionOrCollectionList create() => AssetCollectionOrCollectionList._();
  AssetCollectionOrCollectionList createEmptyInstance() => create();
  static $pb.PbList<AssetCollectionOrCollectionList> createRepeated() => $pb.PbList<AssetCollectionOrCollectionList>();
  @$core.pragma('dart2js:noInline')
  static AssetCollectionOrCollectionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetCollectionOrCollectionList>(create);
  static AssetCollectionOrCollectionList _defaultInstance;

  AssetCollectionOrCollectionList_Collection whichCollection() => _AssetCollectionOrCollectionList_CollectionByTag[$_whichOneof(0)];
  void clearCollection() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PHCollectionList get collectionList => $_getN(0);
  @$pb.TagNumber(1)
  set collectionList(PHCollectionList v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCollectionList() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionList() => clearField(1);
  @$pb.TagNumber(1)
  PHCollectionList ensureCollectionList() => $_ensure(0);

  @$pb.TagNumber(2)
  PHAssetCollection get assetCollection => $_getN(1);
  @$pb.TagNumber(2)
  set assetCollection(PHAssetCollection v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetCollection() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetCollection() => clearField(2);
  @$pb.TagNumber(2)
  PHAssetCollection ensureAssetCollection() => $_ensure(1);
}

class PHFetchResultPHCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHFetchResultPHCollection', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..pc<AssetCollectionOrCollectionList>(1, 'results', $pb.PbFieldType.PM, subBuilder: AssetCollectionOrCollectionList.create)
    ..hasRequiredFields = false
  ;

  PHFetchResultPHCollection._() : super();
  factory PHFetchResultPHCollection() => create();
  factory PHFetchResultPHCollection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHFetchResultPHCollection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHFetchResultPHCollection clone() => PHFetchResultPHCollection()..mergeFromMessage(this);
  PHFetchResultPHCollection copyWith(void Function(PHFetchResultPHCollection) updates) => super.copyWith((message) => updates(message as PHFetchResultPHCollection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHFetchResultPHCollection create() => PHFetchResultPHCollection._();
  PHFetchResultPHCollection createEmptyInstance() => create();
  static $pb.PbList<PHFetchResultPHCollection> createRepeated() => $pb.PbList<PHFetchResultPHCollection>();
  @$core.pragma('dart2js:noInline')
  static PHFetchResultPHCollection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHFetchResultPHCollection>(create);
  static PHFetchResultPHCollection _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AssetCollectionOrCollectionList> get results => $_getList(0);
}

class PHFetchOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHFetchOptions', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..aOB(1, 'includeAllBurstAssets')
    ..aOB(2, 'includeHiddenAssets')
    ..hasRequiredFields = false
  ;

  PHFetchOptions._() : super();
  factory PHFetchOptions() => create();
  factory PHFetchOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHFetchOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHFetchOptions clone() => PHFetchOptions()..mergeFromMessage(this);
  PHFetchOptions copyWith(void Function(PHFetchOptions) updates) => super.copyWith((message) => updates(message as PHFetchOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHFetchOptions create() => PHFetchOptions._();
  PHFetchOptions createEmptyInstance() => create();
  static $pb.PbList<PHFetchOptions> createRepeated() => $pb.PbList<PHFetchOptions>();
  @$core.pragma('dart2js:noInline')
  static PHFetchOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHFetchOptions>(create);
  static PHFetchOptions _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeAllBurstAssets => $_getBF(0);
  @$pb.TagNumber(1)
  set includeAllBurstAssets($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeAllBurstAssets() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeAllBurstAssets() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeHiddenAssets => $_getBF(1);
  @$pb.TagNumber(2)
  set includeHiddenAssets($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeHiddenAssets() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeHiddenAssets() => clearField(2);
}

class PHFetchResultPHAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHFetchResultPHAsset', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..pc<PHAsset>(1, 'results', $pb.PbFieldType.PM, subBuilder: PHAsset.create)
    ..hasRequiredFields = false
  ;

  PHFetchResultPHAsset._() : super();
  factory PHFetchResultPHAsset() => create();
  factory PHFetchResultPHAsset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHFetchResultPHAsset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHFetchResultPHAsset clone() => PHFetchResultPHAsset()..mergeFromMessage(this);
  PHFetchResultPHAsset copyWith(void Function(PHFetchResultPHAsset) updates) => super.copyWith((message) => updates(message as PHFetchResultPHAsset));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHFetchResultPHAsset create() => PHFetchResultPHAsset._();
  PHFetchResultPHAsset createEmptyInstance() => create();
  static $pb.PbList<PHFetchResultPHAsset> createRepeated() => $pb.PbList<PHFetchResultPHAsset>();
  @$core.pragma('dart2js:noInline')
  static PHFetchResultPHAsset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHFetchResultPHAsset>(create);
  static PHFetchResultPHAsset _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PHAsset> get results => $_getList(0);
}

class PHAssetResource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHAssetResource', package: const $pb.PackageName('flutter_photokit'), createEmptyInstance: create)
    ..e<PHAssetResourceType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: PHAssetResourceType.PH_ASSET_RESOURCE_TYPE_INVALID, valueOf: PHAssetResourceType.valueOf, enumValues: PHAssetResourceType.values)
    ..aOS(2, 'assetLocalIdentifier', protoName: 'assetLocalIdentifier')
    ..aOS(3, 'uniformTypeIdentifier', protoName: 'uniformTypeIdentifier')
    ..aOS(4, 'originalFilename', protoName: 'originalFilename')
    ..hasRequiredFields = false
  ;

  PHAssetResource._() : super();
  factory PHAssetResource() => create();
  factory PHAssetResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PHAssetResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PHAssetResource clone() => PHAssetResource()..mergeFromMessage(this);
  PHAssetResource copyWith(void Function(PHAssetResource) updates) => super.copyWith((message) => updates(message as PHAssetResource));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PHAssetResource create() => PHAssetResource._();
  PHAssetResource createEmptyInstance() => create();
  static $pb.PbList<PHAssetResource> createRepeated() => $pb.PbList<PHAssetResource>();
  @$core.pragma('dart2js:noInline')
  static PHAssetResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PHAssetResource>(create);
  static PHAssetResource _defaultInstance;

  @$pb.TagNumber(1)
  PHAssetResourceType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PHAssetResourceType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assetLocalIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set assetLocalIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssetLocalIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssetLocalIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get uniformTypeIdentifier => $_getSZ(2);
  @$pb.TagNumber(3)
  set uniformTypeIdentifier($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUniformTypeIdentifier() => $_has(2);
  @$pb.TagNumber(3)
  void clearUniformTypeIdentifier() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get originalFilename => $_getSZ(3);
  @$pb.TagNumber(4)
  set originalFilename($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOriginalFilename() => $_has(3);
  @$pb.TagNumber(4)
  void clearOriginalFilename() => clearField(4);
}

class PhotoKitApi {
  $pb.RpcClient _client;
  PhotoKitApi(this._client);

  $async.Future<TriggerResponse> trigger($pb.ClientContext ctx, TriggerRequest request) {
    var emptyResponse = TriggerResponse();
    return _client.invoke<TriggerResponse>(ctx, 'PhotoKit', 'Trigger', request, emptyResponse);
  }
  $async.Future<GetAuthorizationStatusResponse> getAuthorizationStatus($pb.ClientContext ctx, GetAuthorizationStatusRequest request) {
    var emptyResponse = GetAuthorizationStatusResponse();
    return _client.invoke<GetAuthorizationStatusResponse>(ctx, 'PhotoKit', 'GetAuthorizationStatus', request, emptyResponse);
  }
  $async.Future<RequestAuthorizationResponse> requestAuthorization($pb.ClientContext ctx, RequestAuthorizationRequest request) {
    var emptyResponse = RequestAuthorizationResponse();
    return _client.invoke<RequestAuthorizationResponse>(ctx, 'PhotoKit', 'RequestAuthorization', request, emptyResponse);
  }
  $async.Future<OpenSettingsResponse> openSettings($pb.ClientContext ctx, OpenSettingsRequest request) {
    var emptyResponse = OpenSettingsResponse();
    return _client.invoke<OpenSettingsResponse>(ctx, 'PhotoKit', 'OpenSettings', request, emptyResponse);
  }
  $async.Future<FetchTopLevelUserCollectionsResponse> fetchTopLevelUserCollections($pb.ClientContext ctx, FetchTopLevelUserCollectionsRequest request) {
    var emptyResponse = FetchTopLevelUserCollectionsResponse();
    return _client.invoke<FetchTopLevelUserCollectionsResponse>(ctx, 'PhotoKit', 'FetchTopLevelUserCollections', request, emptyResponse);
  }
  $async.Future<FetchCollectionsInCollectionListResponse> fetchCollectionsInCollectionList($pb.ClientContext ctx, FetchCollectionsInCollectionListRequest request) {
    var emptyResponse = FetchCollectionsInCollectionListResponse();
    return _client.invoke<FetchCollectionsInCollectionListResponse>(ctx, 'PhotoKit', 'FetchCollectionsInCollectionList', request, emptyResponse);
  }
  $async.Future<FetchAssetsInCollectionResponse> fetchAssetsInCollection($pb.ClientContext ctx, FetchAssetsInCollectionRequest request) {
    var emptyResponse = FetchAssetsInCollectionResponse();
    return _client.invoke<FetchAssetsInCollectionResponse>(ctx, 'PhotoKit', 'FetchAssetsInCollection', request, emptyResponse);
  }
  $async.Future<FetchAssetsResponse> fetchAssets($pb.ClientContext ctx, FetchAssetsRequest request) {
    var emptyResponse = FetchAssetsResponse();
    return _client.invoke<FetchAssetsResponse>(ctx, 'PhotoKit', 'FetchAssets', request, emptyResponse);
  }
  $async.Future<RequestImageForAssetResponse> requestImageForAsset($pb.ClientContext ctx, RequestImageForAssetRequest request) {
    var emptyResponse = RequestImageForAssetResponse();
    return _client.invoke<RequestImageForAssetResponse>(ctx, 'PhotoKit', 'RequestImageForAsset', request, emptyResponse);
  }
  $async.Future<RequestMetadataForAssetResponse> requestMetadataForAsset($pb.ClientContext ctx, RequestMetadataForAssetRequest request) {
    var emptyResponse = RequestMetadataForAssetResponse();
    return _client.invoke<RequestMetadataForAssetResponse>(ctx, 'PhotoKit', 'RequestMetadataForAsset', request, emptyResponse);
  }
  $async.Future<AssetResourcesForAssetResponse> assetResourcesForAsset($pb.ClientContext ctx, AssetResourcesForAssetRequest request) {
    var emptyResponse = AssetResourcesForAssetResponse();
    return _client.invoke<AssetResourcesForAssetResponse>(ctx, 'PhotoKit', 'AssetResourcesForAsset', request, emptyResponse);
  }
}

