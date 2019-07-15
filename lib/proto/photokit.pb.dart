///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;
import 'google/protobuf/duration.pb.dart' as $1;

import 'photokit.pbenum.dart';

export 'photokit.pbenum.dart';

class TriggerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TriggerRequest', package: const $pb.PackageName('flutter_photokit'))
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
  static TriggerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static TriggerRequest _defaultInstance;
}

class TriggerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TriggerResponse', package: const $pb.PackageName('flutter_photokit'))
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
  static TriggerResponse getDefault() => _defaultInstance ??= create()..freeze();
  static TriggerResponse _defaultInstance;
}

class GetAuthorizationStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthorizationStatusRequest', package: const $pb.PackageName('flutter_photokit'))
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
  static GetAuthorizationStatusRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetAuthorizationStatusRequest _defaultInstance;
}

class GetAuthorizationStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthorizationStatusResponse', package: const $pb.PackageName('flutter_photokit'))
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, AuthorizationStatus.AUTHORIZATION_STATUS_INVALID, AuthorizationStatus.valueOf, AuthorizationStatus.values)
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
  static GetAuthorizationStatusResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetAuthorizationStatusResponse _defaultInstance;

  AuthorizationStatus get status => $_getN(0);
  set status(AuthorizationStatus v) { setField(1, v); }
  $core.bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);
}

class RequestAuthorizationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationRequest', package: const $pb.PackageName('flutter_photokit'))
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
  static RequestAuthorizationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RequestAuthorizationRequest _defaultInstance;
}

class RequestAuthorizationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationResponse', package: const $pb.PackageName('flutter_photokit'))
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, AuthorizationStatus.AUTHORIZATION_STATUS_INVALID, AuthorizationStatus.valueOf, AuthorizationStatus.values)
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
  static RequestAuthorizationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RequestAuthorizationResponse _defaultInstance;

  AuthorizationStatus get status => $_getN(0);
  set status(AuthorizationStatus v) { setField(1, v); }
  $core.bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);
}

class FetchTopLevelUserCollectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchTopLevelUserCollectionsRequest', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHFetchOptions>(1, 'fetchOptions', $pb.PbFieldType.OM, PHFetchOptions.getDefault, PHFetchOptions.create)
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
  static FetchTopLevelUserCollectionsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static FetchTopLevelUserCollectionsRequest _defaultInstance;

  PHFetchOptions get fetchOptions => $_getN(0);
  set fetchOptions(PHFetchOptions v) { setField(1, v); }
  $core.bool hasFetchOptions() => $_has(0);
  void clearFetchOptions() => clearField(1);
}

class FetchTopLevelUserCollectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FetchTopLevelUserCollectionsResponse', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHFetchResultPHCollection>(1, 'result', $pb.PbFieldType.OM, PHFetchResultPHCollection.getDefault, PHFetchResultPHCollection.create)
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
  static FetchTopLevelUserCollectionsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FetchTopLevelUserCollectionsResponse _defaultInstance;

  PHFetchResultPHCollection get result => $_getN(0);
  set result(PHFetchResultPHCollection v) { setField(1, v); }
  $core.bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class PHObject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHObject', package: const $pb.PackageName('flutter_photokit'))
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
  static PHObject getDefault() => _defaultInstance ??= create()..freeze();
  static PHObject _defaultInstance;

  $core.String get localIdentifier => $_getS(0, '');
  set localIdentifier($core.String v) { $_setString(0, v); }
  $core.bool hasLocalIdentifier() => $_has(0);
  void clearLocalIdentifier() => clearField(1);
}

class PHCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHCollection', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHObject>(1, 'base', $pb.PbFieldType.OM, PHObject.getDefault, PHObject.create)
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
  static PHCollection getDefault() => _defaultInstance ??= create()..freeze();
  static PHCollection _defaultInstance;

  PHObject get base => $_getN(0);
  set base(PHObject v) { setField(1, v); }
  $core.bool hasBase() => $_has(0);
  void clearBase() => clearField(1);

  $core.String get localizedTitle => $_getS(1, '');
  set localizedTitle($core.String v) { $_setString(1, v); }
  $core.bool hasLocalizedTitle() => $_has(1);
  void clearLocalizedTitle() => clearField(2);

  $core.bool get canContainAssets => $_get(2, false);
  set canContainAssets($core.bool v) { $_setBool(2, v); }
  $core.bool hasCanContainAssets() => $_has(2);
  void clearCanContainAssets() => clearField(3);

  $core.bool get canContainCollections => $_get(3, false);
  set canContainCollections($core.bool v) { $_setBool(3, v); }
  $core.bool hasCanContainCollections() => $_has(3);
  void clearCanContainCollections() => clearField(4);
}

class PHCollectionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHCollectionList', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHCollection>(1, 'base', $pb.PbFieldType.OM, PHCollection.getDefault, PHCollection.create)
    ..e<PHCollectionListType>(2, 'collectionListType', $pb.PbFieldType.OE, PHCollectionListType.PH_COLLECTION_LIST_TYPE_INVALID, PHCollectionListType.valueOf, PHCollectionListType.values)
    ..e<PHCollectionListSubtype>(3, 'collectionListSubtype', $pb.PbFieldType.OE, PHCollectionListSubtype.PH_COLLECTION_LIST_SUBTYPE_INVALID, PHCollectionListSubtype.valueOf, PHCollectionListSubtype.values)
    ..a<$0.Timestamp>(4, 'startDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<$0.Timestamp>(5, 'endDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
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
  static PHCollectionList getDefault() => _defaultInstance ??= create()..freeze();
  static PHCollectionList _defaultInstance;

  PHCollection get base => $_getN(0);
  set base(PHCollection v) { setField(1, v); }
  $core.bool hasBase() => $_has(0);
  void clearBase() => clearField(1);

  PHCollectionListType get collectionListType => $_getN(1);
  set collectionListType(PHCollectionListType v) { setField(2, v); }
  $core.bool hasCollectionListType() => $_has(1);
  void clearCollectionListType() => clearField(2);

  PHCollectionListSubtype get collectionListSubtype => $_getN(2);
  set collectionListSubtype(PHCollectionListSubtype v) { setField(3, v); }
  $core.bool hasCollectionListSubtype() => $_has(2);
  void clearCollectionListSubtype() => clearField(3);

  $0.Timestamp get startDate => $_getN(3);
  set startDate($0.Timestamp v) { setField(4, v); }
  $core.bool hasStartDate() => $_has(3);
  void clearStartDate() => clearField(4);

  $0.Timestamp get endDate => $_getN(4);
  set endDate($0.Timestamp v) { setField(5, v); }
  $core.bool hasEndDate() => $_has(4);
  void clearEndDate() => clearField(5);

  $core.List<$core.String> get localizedLocationNames => $_getList(5);
}

class CLLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CLLocation', package: const $pb.PackageName('flutter_photokit'))
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
  static CLLocation getDefault() => _defaultInstance ??= create()..freeze();
  static CLLocation _defaultInstance;
}

class PHAssetCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHAssetCollection', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHCollection>(1, 'base', $pb.PbFieldType.OM, PHCollection.getDefault, PHCollection.create)
    ..e<PHAssetCollectionType>(2, 'assetCollectionType', $pb.PbFieldType.OE, PHAssetCollectionType.PH_ASSET_COLLECTION_TYPE_INVALID, PHAssetCollectionType.valueOf, PHAssetCollectionType.values)
    ..e<PHAssetCollectionSubtype>(3, 'assetCollectionSubtype', $pb.PbFieldType.OE, PHAssetCollectionSubtype.PH_ASSET_COLLECTION_SUBTYPE_INVALID, PHAssetCollectionSubtype.valueOf, PHAssetCollectionSubtype.values)
    ..aInt64(4, 'estimatedAssetCount')
    ..a<$0.Timestamp>(5, 'startDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<$0.Timestamp>(6, 'endDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<CLLocation>(7, 'approximateLocation', $pb.PbFieldType.OM, CLLocation.getDefault, CLLocation.create)
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
  static PHAssetCollection getDefault() => _defaultInstance ??= create()..freeze();
  static PHAssetCollection _defaultInstance;

  PHCollection get base => $_getN(0);
  set base(PHCollection v) { setField(1, v); }
  $core.bool hasBase() => $_has(0);
  void clearBase() => clearField(1);

  PHAssetCollectionType get assetCollectionType => $_getN(1);
  set assetCollectionType(PHAssetCollectionType v) { setField(2, v); }
  $core.bool hasAssetCollectionType() => $_has(1);
  void clearAssetCollectionType() => clearField(2);

  PHAssetCollectionSubtype get assetCollectionSubtype => $_getN(2);
  set assetCollectionSubtype(PHAssetCollectionSubtype v) { setField(3, v); }
  $core.bool hasAssetCollectionSubtype() => $_has(2);
  void clearAssetCollectionSubtype() => clearField(3);

  Int64 get estimatedAssetCount => $_getI64(3);
  set estimatedAssetCount(Int64 v) { $_setInt64(3, v); }
  $core.bool hasEstimatedAssetCount() => $_has(3);
  void clearEstimatedAssetCount() => clearField(4);

  $0.Timestamp get startDate => $_getN(4);
  set startDate($0.Timestamp v) { setField(5, v); }
  $core.bool hasStartDate() => $_has(4);
  void clearStartDate() => clearField(5);

  $0.Timestamp get endDate => $_getN(5);
  set endDate($0.Timestamp v) { setField(6, v); }
  $core.bool hasEndDate() => $_has(5);
  void clearEndDate() => clearField(6);

  CLLocation get approximateLocation => $_getN(6);
  set approximateLocation(CLLocation v) { setField(7, v); }
  $core.bool hasApproximateLocation() => $_has(6);
  void clearApproximateLocation() => clearField(7);

  $core.List<$core.String> get localizedLocationNames => $_getList(7);
}

class PHAsset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHAsset', package: const $pb.PackageName('flutter_photokit'))
    ..a<PHObject>(1, 'base', $pb.PbFieldType.OM, PHObject.getDefault, PHObject.create)
    ..e<PHAssetMediaType>(2, 'mediaType', $pb.PbFieldType.OE, PHAssetMediaType.PH_ASSET_MEDIA_TYPE_INVALID, PHAssetMediaType.valueOf, PHAssetMediaType.values)
    ..aInt64(5, 'pixelWidth')
    ..aInt64(6, 'pixelHeight')
    ..a<$0.Timestamp>(7, 'creationDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<$0.Timestamp>(8, 'modificationDate', $pb.PbFieldType.OM, $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<CLLocation>(9, 'location', $pb.PbFieldType.OM, CLLocation.getDefault, CLLocation.create)
    ..a<$1.Duration>(10, 'duration', $pb.PbFieldType.OM, $1.Duration.getDefault, $1.Duration.create)
    ..aOB(11, 'isFavorite')
    ..aOB(12, 'isHidden')
    ..aOB(13, 'isSyncFailureHidden')
    ..e<PHAssetPlaybackStyle>(14, 'playbackStyle', $pb.PbFieldType.OE, PHAssetPlaybackStyle.PH_ASSET_PLAYBACK_STYLE_INVALID, PHAssetPlaybackStyle.valueOf, PHAssetPlaybackStyle.values)
    ..aOS(15, 'burstIdentifier')
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
  static PHAsset getDefault() => _defaultInstance ??= create()..freeze();
  static PHAsset _defaultInstance;

  PHObject get base => $_getN(0);
  set base(PHObject v) { setField(1, v); }
  $core.bool hasBase() => $_has(0);
  void clearBase() => clearField(1);

  PHAssetMediaType get mediaType => $_getN(1);
  set mediaType(PHAssetMediaType v) { setField(2, v); }
  $core.bool hasMediaType() => $_has(1);
  void clearMediaType() => clearField(2);

  Int64 get pixelWidth => $_getI64(2);
  set pixelWidth(Int64 v) { $_setInt64(2, v); }
  $core.bool hasPixelWidth() => $_has(2);
  void clearPixelWidth() => clearField(5);

  Int64 get pixelHeight => $_getI64(3);
  set pixelHeight(Int64 v) { $_setInt64(3, v); }
  $core.bool hasPixelHeight() => $_has(3);
  void clearPixelHeight() => clearField(6);

  $0.Timestamp get creationDate => $_getN(4);
  set creationDate($0.Timestamp v) { setField(7, v); }
  $core.bool hasCreationDate() => $_has(4);
  void clearCreationDate() => clearField(7);

  $0.Timestamp get modificationDate => $_getN(5);
  set modificationDate($0.Timestamp v) { setField(8, v); }
  $core.bool hasModificationDate() => $_has(5);
  void clearModificationDate() => clearField(8);

  CLLocation get location => $_getN(6);
  set location(CLLocation v) { setField(9, v); }
  $core.bool hasLocation() => $_has(6);
  void clearLocation() => clearField(9);

  $1.Duration get duration => $_getN(7);
  set duration($1.Duration v) { setField(10, v); }
  $core.bool hasDuration() => $_has(7);
  void clearDuration() => clearField(10);

  $core.bool get isFavorite => $_get(8, false);
  set isFavorite($core.bool v) { $_setBool(8, v); }
  $core.bool hasIsFavorite() => $_has(8);
  void clearIsFavorite() => clearField(11);

  $core.bool get isHidden => $_get(9, false);
  set isHidden($core.bool v) { $_setBool(9, v); }
  $core.bool hasIsHidden() => $_has(9);
  void clearIsHidden() => clearField(12);

  $core.bool get isSyncFailureHidden => $_get(10, false);
  set isSyncFailureHidden($core.bool v) { $_setBool(10, v); }
  $core.bool hasIsSyncFailureHidden() => $_has(10);
  void clearIsSyncFailureHidden() => clearField(13);

  PHAssetPlaybackStyle get playbackStyle => $_getN(11);
  set playbackStyle(PHAssetPlaybackStyle v) { setField(14, v); }
  $core.bool hasPlaybackStyle() => $_has(11);
  void clearPlaybackStyle() => clearField(14);

  $core.String get burstIdentifier => $_getS(12, '');
  set burstIdentifier($core.String v) { $_setString(12, v); }
  $core.bool hasBurstIdentifier() => $_has(12);
  void clearBurstIdentifier() => clearField(15);

  $core.bool get representsBurst => $_get(13, false);
  set representsBurst($core.bool v) { $_setBool(13, v); }
  $core.bool hasRepresentsBurst() => $_has(13);
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AssetCollectionOrCollectionList', package: const $pb.PackageName('flutter_photokit'))
    ..oo(0, [1, 2])
    ..a<PHCollectionList>(1, 'collectionList', $pb.PbFieldType.OM, PHCollectionList.getDefault, PHCollectionList.create)
    ..a<PHAssetCollection>(2, 'assetCollection', $pb.PbFieldType.OM, PHAssetCollection.getDefault, PHAssetCollection.create)
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
  static AssetCollectionOrCollectionList getDefault() => _defaultInstance ??= create()..freeze();
  static AssetCollectionOrCollectionList _defaultInstance;

  AssetCollectionOrCollectionList_Collection whichCollection() => _AssetCollectionOrCollectionList_CollectionByTag[$_whichOneof(0)];
  void clearCollection() => clearField($_whichOneof(0));

  PHCollectionList get collectionList => $_getN(0);
  set collectionList(PHCollectionList v) { setField(1, v); }
  $core.bool hasCollectionList() => $_has(0);
  void clearCollectionList() => clearField(1);

  PHAssetCollection get assetCollection => $_getN(1);
  set assetCollection(PHAssetCollection v) { setField(2, v); }
  $core.bool hasAssetCollection() => $_has(1);
  void clearAssetCollection() => clearField(2);
}

class PHFetchResultPHCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHFetchResultPHCollection', package: const $pb.PackageName('flutter_photokit'))
    ..pc<AssetCollectionOrCollectionList>(1, 'results', $pb.PbFieldType.PM,AssetCollectionOrCollectionList.create)
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
  static PHFetchResultPHCollection getDefault() => _defaultInstance ??= create()..freeze();
  static PHFetchResultPHCollection _defaultInstance;

  $core.List<AssetCollectionOrCollectionList> get results => $_getList(0);
}

class PHFetchOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PHFetchOptions', package: const $pb.PackageName('flutter_photokit'))
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
  static PHFetchOptions getDefault() => _defaultInstance ??= create()..freeze();
  static PHFetchOptions _defaultInstance;

  $core.bool get includeAllBurstAssets => $_get(0, false);
  set includeAllBurstAssets($core.bool v) { $_setBool(0, v); }
  $core.bool hasIncludeAllBurstAssets() => $_has(0);
  void clearIncludeAllBurstAssets() => clearField(1);

  $core.bool get includeHiddenAssets => $_get(1, false);
  set includeHiddenAssets($core.bool v) { $_setBool(1, v); }
  $core.bool hasIncludeHiddenAssets() => $_has(1);
  void clearIncludeHiddenAssets() => clearField(2);
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
  $async.Future<FetchTopLevelUserCollectionsResponse> fetchTopLevelUserCollections($pb.ClientContext ctx, FetchTopLevelUserCollectionsRequest request) {
    var emptyResponse = FetchTopLevelUserCollectionsResponse();
    return _client.invoke<FetchTopLevelUserCollectionsResponse>(ctx, 'PhotoKit', 'FetchTopLevelUserCollections', request, emptyResponse);
  }
}

