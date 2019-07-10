///
//  Generated code. Do not modify.
//  source: photokit.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AuthorizationStatus$json = const {
  '1': 'AuthorizationStatus',
  '2': const [
    const {'1': 'NOT_DETERMINED', '2': 0},
    const {'1': 'RESTRICTED', '2': 1},
    const {'1': 'DENIED', '2': 2},
    const {'1': 'AUTHORIZED', '2': 3},
  ],
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

const PhotoKitServiceBase$json = const {
  '1': 'PhotoKit',
  '2': const [
    const {'1': 'getAuthorizationStatus', '2': '.flutter_photokit.GetAuthorizationStatusRequest', '3': '.flutter_photokit.GetAuthorizationStatusResponse', '4': const {}},
  ],
};

const PhotoKitServiceBase$messageJson = const {
  '.flutter_photokit.GetAuthorizationStatusRequest': GetAuthorizationStatusRequest$json,
  '.flutter_photokit.GetAuthorizationStatusResponse': GetAuthorizationStatusResponse$json,
};

