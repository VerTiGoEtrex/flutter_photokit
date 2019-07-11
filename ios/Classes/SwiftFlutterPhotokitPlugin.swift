import Flutter
import UIKit
import PromiseKit
import Photos
import SwiftProtobuf

public class SwiftFlutterPhotokitPlugin: NSObject, FlutterPlugin {
    
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_photokit", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPhotokitPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let argData = (call.arguments as! FlutterStandardTypedData).data
    var response:Promise<Message>
    do {
    switch call.method {
    case "getAuthorizationStatus":
        response = try execGeneric(requestData: argData, funct: self.getAuthorizationStatus)
        break
    case "requestAuthorization":
        response = try execGeneric(requestData: argData, funct: self.requestAuthorization)
        break
    default:
        result(FlutterMethodNotImplemented)
        return
    }
    } catch {
        result(FlutterError(code: "error", message: error.localizedDescription, details: nil))
        return
    }
    response.done({ (response) in
        let responseData = try response.serializedData()
        result(responseData)
    }).catch { (err) in
        result(FlutterError(code: "responseSerializeError", message: err.localizedDescription, details: nil))
    };
  }
    private func execGeneric<TRequest: Message, TResponse: Message>(
        requestData:Data,
        funct:(TRequest)->(Promise<TResponse>)) throws -> Promise<Message> {
        return try exec(requestData:requestData, funct: funct).map({ (typedMessage) -> Message in
            typedMessage as Message
        });
    }
    
    private func exec<TRequest: Message, TResponse: Message>(
        requestData:Data,
        funct:(TRequest)->(Promise<TResponse>)) throws -> Promise<TResponse> {
        let request = try TRequest(serializedData: requestData)
        return funct(request)
    }
    
    private func getAuthorizationStatus(request: FlutterPhotokit_GetAuthorizationStatusRequest) -> Promise<FlutterPhotokit_GetAuthorizationStatusResponse> {
        var response = FlutterPhotokit_GetAuthorizationStatusResponse();
        let statusMapping = [
            PHAuthorizationStatus.authorized: FlutterPhotokit_AuthorizationStatus.authorized,
            PHAuthorizationStatus.denied: FlutterPhotokit_AuthorizationStatus.denied,
            PHAuthorizationStatus.notDetermined: FlutterPhotokit_AuthorizationStatus.notDetermined,
            PHAuthorizationStatus.restricted: FlutterPhotokit_AuthorizationStatus.restricted,
        ]
        response.status = statusMapping[PHPhotoLibrary.authorizationStatus()]!;
        return Promise.value(response);
    }
    
    private func requestAuthorization(request: FlutterPhotokit_RequestAuthorizationStatusRequest) -> Promise<FlutterPhotokit_RequestAuthorizationStatusResponse> {
        return Promise { seal in
            PHPhotoLibrary.requestAuthorization({ (status) in
                var response = FlutterPhotokit_RequestAuthorizationStatusResponse();
                let statusMapping = [
                    PHAuthorizationStatus.authorized: FlutterPhotokit_AuthorizationStatus.authorized,
                    PHAuthorizationStatus.denied: FlutterPhotokit_AuthorizationStatus.denied,
                    PHAuthorizationStatus.notDetermined: FlutterPhotokit_AuthorizationStatus.notDetermined,
                    PHAuthorizationStatus.restricted: FlutterPhotokit_AuthorizationStatus.restricted,
                ]
                response.status = statusMapping[status]!;
                seal.fulfill(response)
            })
        }
    }
}
