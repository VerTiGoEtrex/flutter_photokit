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
            case "fetchTopLevelUserCollections":
                response = try execGeneric(requestData: argData, funct: self.fetchTopLevelUserCollections)
                break
            case "trigger":
                response = try execGeneric(requestData: argData, funct: self.trigger)
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
    
    private func requestAuthorization(request: FlutterPhotokit_RequestAuthorizationRequest) -> Promise<FlutterPhotokit_RequestAuthorizationResponse> {
        return Promise { seal in
            PHPhotoLibrary.requestAuthorization({ (status) in
                var response = FlutterPhotokit_RequestAuthorizationResponse()
                let statusMapping = [
                    PHAuthorizationStatus.authorized: FlutterPhotokit_AuthorizationStatus.authorized,
                    PHAuthorizationStatus.denied: FlutterPhotokit_AuthorizationStatus.denied,
                    PHAuthorizationStatus.notDetermined: FlutterPhotokit_AuthorizationStatus.notDetermined,
                    PHAuthorizationStatus.restricted: FlutterPhotokit_AuthorizationStatus.restricted,
                ]
                response.status = statusMapping[status]!
                seal.fulfill(response)
            })
        }
    }
    
    private func fetchTopLevelUserCollections(request: FlutterPhotokit_FetchTopLevelUserCollectionsRequest) -> Promise<FlutterPhotokit_FetchTopLevelUserCollectionsResponse> {
        return Promise {seal in
            var options: PHFetchOptions?
            if request.hasFetchOptions {
                options = PHFetchOptions()
                options?.includeAllBurstAssets = request.fetchOptions.includeAllBurstAssets
                options?.includeHiddenAssets = request.fetchOptions.includeHiddenAssets
            }
            let topLevelCollections = PHCollection.fetchTopLevelUserCollections(with: options)
            var response = FlutterPhotokit_FetchTopLevelUserCollectionsResponse()
            for i in 0..<topLevelCollections.count {
                var elt = FlutterPhotokit_AssetCollectionOrCollectionList()
                let res = topLevelCollections[i]
                switch res {
                    case let collectionList as PHCollectionList:
                        elt.collectionList = convert(collectionList)
                        break;
                    case let assetCollection as PHAssetCollection:
                        elt.assetCollection = convert(assetCollection)
                        break;
                    default:
                        seal.reject(MyError.runtimeError("unsupported type in collection"))
                }
                response.result.results.append(elt)
            }
            seal.fulfill(response)
        }
    }
    
    private func convert(_ input:PHAssetCollection) -> FlutterPhotokit_PHAssetCollection {
        var output = FlutterPhotokit_PHAssetCollection()
        output.base = convert(input as PHCollection)
        output.assetCollectionType = convert(input.assetCollectionType)
        output.assetCollectionSubtype = convert(input.assetCollectionSubtype)
        output.estimatedAssetCount = Int64(input.estimatedAssetCount)
        if let startDate =  input.startDate {
            output.startDate = Google_Protobuf_Timestamp(date: startDate)
        }
        if let endDate = input.endDate {
            output.endDate = Google_Protobuf_Timestamp(date: endDate)
        }
        if let approximateLocation = input.approximateLocation {
            output.approximateLocation = convert(approximateLocation)
        }
        output.localizedLocationNames.append(contentsOf: input.localizedLocationNames)
        return output
    }
    
    private func convert(_ input: CLLocation) -> FlutterPhotokit_CLLocation {
        // TODO
        return FlutterPhotokit_CLLocation()
    }
    
    private func convert(_ input: PHAssetCollectionSubtype) -> FlutterPhotokit_PHAssetCollectionSubtype {
        switch input {
        case .albumRegular:
            return .albumRegular
        case .albumSyncedEvent:
            return .albumSyncedEvent
        case .albumSyncedFaces:
            return .albumSyncedFaces
        case .albumSyncedAlbum:
            return .albumSyncedAlbum
        case .albumImported:
            return .albumImported
        case .albumMyPhotoStream:
            return .albumMyPhotoStream
        case .albumCloudShared:
            return .albumCloudShared
        case .smartAlbumGeneric:
            return .smartAlbumGeneric
        case .smartAlbumPanoramas:
            return .smartAlbumPanoramas
        case .smartAlbumVideos:
            return .smartAlbumVideos
        case .smartAlbumFavorites:
            return .smartAlbumFavorites
        case .smartAlbumTimelapses:
            return .smartAlbumTimelapses
        case .smartAlbumAllHidden:
            return .smartAlbumAllHidden
        case .smartAlbumRecentlyAdded:
            return .smartAlbumRecentlyAdded
        case .smartAlbumBursts:
            return .smartAlbumBursts
        case .smartAlbumSlomoVideos:
            return .smartAlbumSlomoVideos
        case .smartAlbumUserLibrary:
            return .smartAlbumUserLibrary
        case .smartAlbumSelfPortraits:
            return .smartAlbumSelfPortraits
        case .smartAlbumScreenshots:
            return .smartAlbumScreenshots
        case .smartAlbumDepthEffect:
            return .smartAlbumDepthEffect
        case .smartAlbumLivePhotos:
            return .smartAlbumLivePhotos
        case .smartAlbumAnimated:
            return .smartAlbumAnimated
        case .smartAlbumLongExposures:
            return .smartAlbumLongExposures
        case .any:
            return .any
        }
    }
    
    private func convert(_ input: PHAssetCollectionType) -> FlutterPhotokit_PHAssetCollectionType {
        switch input {
        case .album:
            return .album
        case .smartAlbum:
            return .smartAlbum
        case .moment:
            return .moment
        }
    }
    
    private func trigger(request: FlutterPhotokit_TriggerRequest) -> Promise<FlutterPhotokit_TriggerResponse> {
        return Promise { seal in
            seal.fulfill(FlutterPhotokit_TriggerResponse())
        }
    }
    
    private func convert(_ input: PHCollectionList) -> FlutterPhotokit_PHCollectionList {
        var output = FlutterPhotokit_PHCollectionList()
        output.base = convert(input as PHCollection)
        output.collectionListType = convert(input.collectionListType)
        output.collectionListSubtype = convert(input.collectionListSubtype)
        if let startDate =  input.startDate {
            output.startDate = Google_Protobuf_Timestamp(date: startDate)
        }
        if let endDate = input.endDate {
            output.endDate = Google_Protobuf_Timestamp(date: endDate)
        }
        output.localizedLocationNames.append(contentsOf: input.localizedLocationNames)
        return output
    }
    
    private func convert(_ input: PHCollectionListSubtype) -> FlutterPhotokit_PHCollectionListSubtype {
        switch input {
        case .momentListCluster:
            return .momentListCluster
        case .momentListYear:
            return .momentListYear
        case .regularFolder:
            return .regularFolder
        case .smartFolderEvents:
            return .smartFolderEvents
        case .smartFolderFaces:
            return .smartFolderFaces
        case .any:
            return .any
        }
    }
    
    private func convert(_ input: PHCollectionListType) -> FlutterPhotokit_PHCollectionListType {
        switch input {
        case .momentList:
            return .momentList
        case .folder:
            return .folder
        case .smartFolder:
            return .smartFolder
        }
    }
    
    private func convert(_ input: PHCollection) -> FlutterPhotokit_PHCollection {
        var output = FlutterPhotokit_PHCollection()
        output.base = convert(input as PHObject)
        if let localizedTitle = input.localizedTitle {
            output.localizedTitle = localizedTitle
        }
        output.canContainAssets = input.canContainAssets
        output.canContainCollections = input.canContainCollections
        return output
    }
    
    private func convert(_ input: PHObject) -> FlutterPhotokit_PHObject {
        var output = FlutterPhotokit_PHObject()
        output.localIdentifier = input.localIdentifier
        return output
    }
}

enum MyError: Error {
    case runtimeError(String)
}
