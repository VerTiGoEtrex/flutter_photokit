///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'photokit.pbenum.dart';

export 'photokit.pbenum.dart';

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
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, AuthorizationStatus.NOT_DETERMINED, AuthorizationStatus.valueOf, AuthorizationStatus.values)
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

class RequestAuthorizationStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationStatusRequest', package: const $pb.PackageName('flutter_photokit'))
    ..hasRequiredFields = false
  ;

  RequestAuthorizationStatusRequest._() : super();
  factory RequestAuthorizationStatusRequest() => create();
  factory RequestAuthorizationStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestAuthorizationStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestAuthorizationStatusRequest clone() => RequestAuthorizationStatusRequest()..mergeFromMessage(this);
  RequestAuthorizationStatusRequest copyWith(void Function(RequestAuthorizationStatusRequest) updates) => super.copyWith((message) => updates(message as RequestAuthorizationStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationStatusRequest create() => RequestAuthorizationStatusRequest._();
  RequestAuthorizationStatusRequest createEmptyInstance() => create();
  static $pb.PbList<RequestAuthorizationStatusRequest> createRepeated() => $pb.PbList<RequestAuthorizationStatusRequest>();
  static RequestAuthorizationStatusRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RequestAuthorizationStatusRequest _defaultInstance;
}

class RequestAuthorizationStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RequestAuthorizationStatusResponse', package: const $pb.PackageName('flutter_photokit'))
    ..e<AuthorizationStatus>(1, 'status', $pb.PbFieldType.OE, AuthorizationStatus.NOT_DETERMINED, AuthorizationStatus.valueOf, AuthorizationStatus.values)
    ..hasRequiredFields = false
  ;

  RequestAuthorizationStatusResponse._() : super();
  factory RequestAuthorizationStatusResponse() => create();
  factory RequestAuthorizationStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestAuthorizationStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RequestAuthorizationStatusResponse clone() => RequestAuthorizationStatusResponse()..mergeFromMessage(this);
  RequestAuthorizationStatusResponse copyWith(void Function(RequestAuthorizationStatusResponse) updates) => super.copyWith((message) => updates(message as RequestAuthorizationStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestAuthorizationStatusResponse create() => RequestAuthorizationStatusResponse._();
  RequestAuthorizationStatusResponse createEmptyInstance() => create();
  static $pb.PbList<RequestAuthorizationStatusResponse> createRepeated() => $pb.PbList<RequestAuthorizationStatusResponse>();
  static RequestAuthorizationStatusResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RequestAuthorizationStatusResponse _defaultInstance;

  AuthorizationStatus get status => $_getN(0);
  set status(AuthorizationStatus v) { setField(1, v); }
  $core.bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);
}

class PhotoKitApi {
  $pb.RpcClient _client;
  PhotoKitApi(this._client);

  $async.Future<GetAuthorizationStatusResponse> getAuthorizationStatus($pb.ClientContext ctx, GetAuthorizationStatusRequest request) {
    var emptyResponse = GetAuthorizationStatusResponse();
    return _client.invoke<GetAuthorizationStatusResponse>(ctx, 'PhotoKit', 'getAuthorizationStatus', request, emptyResponse);
  }
  $async.Future<RequestAuthorizationStatusResponse> requestAuthorization($pb.ClientContext ctx, RequestAuthorizationStatusRequest request) {
    var emptyResponse = RequestAuthorizationStatusResponse();
    return _client.invoke<RequestAuthorizationStatusResponse>(ctx, 'PhotoKit', 'requestAuthorization', request, emptyResponse);
  }
}

