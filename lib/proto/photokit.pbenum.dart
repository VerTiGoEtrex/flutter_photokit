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
  static const AuthorizationStatus NOT_DETERMINED = AuthorizationStatus._(0, 'NOT_DETERMINED');
  static const AuthorizationStatus RESTRICTED = AuthorizationStatus._(1, 'RESTRICTED');
  static const AuthorizationStatus DENIED = AuthorizationStatus._(2, 'DENIED');
  static const AuthorizationStatus AUTHORIZED = AuthorizationStatus._(3, 'AUTHORIZED');

  static const $core.List<AuthorizationStatus> values = <AuthorizationStatus> [
    NOT_DETERMINED,
    RESTRICTED,
    DENIED,
    AUTHORIZED,
  ];

  static final $core.Map<$core.int, AuthorizationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthorizationStatus valueOf($core.int value) => _byValue[value];

  const AuthorizationStatus._($core.int v, $core.String n) : super(v, n);
}

