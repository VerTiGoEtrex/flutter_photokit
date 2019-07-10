///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core show String, Map, ArgumentError, dynamic;
import 'photokit.pb.dart' as $0;
import 'photokit.pbjson.dart';

export 'photokit.pb.dart';

abstract class PhotoKitServiceBase extends $pb.GeneratedService {
  $async.Future<$0.GetAuthorizationStatusResponse> getAuthorizationStatus($pb.ServerContext ctx, $0.GetAuthorizationStatusRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'getAuthorizationStatus': return $0.GetAuthorizationStatusRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'getAuthorizationStatus': return this.getAuthorizationStatus(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PhotoKitServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PhotoKitServiceBase$messageJson;
}

