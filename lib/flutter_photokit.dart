import 'dart:typed_data';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_photokit/proto/photokit.pbserver.dart';
import 'package:protobuf/protobuf.dart';

class FlutterPhotokit {
  final PhotoKitApi api =
      PhotoKitApi(MethodChannelRpcClient(MethodChannel('flutter_photokit')));
  final ClientContext _ctx = ClientContext();

  Future<AuthorizationStatus> get authorizationStatus async {
    final response =
        await api.getAuthorizationStatus(_ctx, GetAuthorizationStatusRequest());
    return response.status;
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
