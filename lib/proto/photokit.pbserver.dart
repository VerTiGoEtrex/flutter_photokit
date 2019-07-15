///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core show String, Map, ArgumentError, dynamic;
import 'photokit.pb.dart' as $2;
import 'photokit.pbjson.dart';

export 'photokit.pb.dart';

abstract class PhotoKitServiceBase extends $pb.GeneratedService {
  $async.Future<$2.TriggerResponse> trigger($pb.ServerContext ctx, $2.TriggerRequest request);
  $async.Future<$2.GetAuthorizationStatusResponse> getAuthorizationStatus($pb.ServerContext ctx, $2.GetAuthorizationStatusRequest request);
  $async.Future<$2.RequestAuthorizationResponse> requestAuthorization($pb.ServerContext ctx, $2.RequestAuthorizationRequest request);
  $async.Future<$2.FetchTopLevelUserCollectionsResponse> fetchTopLevelUserCollections($pb.ServerContext ctx, $2.FetchTopLevelUserCollectionsRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Trigger': return $2.TriggerRequest();
      case 'GetAuthorizationStatus': return $2.GetAuthorizationStatusRequest();
      case 'RequestAuthorization': return $2.RequestAuthorizationRequest();
      case 'FetchTopLevelUserCollections': return $2.FetchTopLevelUserCollectionsRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Trigger': return this.trigger(ctx, request);
      case 'GetAuthorizationStatus': return this.getAuthorizationStatus(ctx, request);
      case 'RequestAuthorization': return this.requestAuthorization(ctx, request);
      case 'FetchTopLevelUserCollections': return this.fetchTopLevelUserCollections(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PhotoKitServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PhotoKitServiceBase$messageJson;
}

