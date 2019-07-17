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
            case "GetAuthorizationStatus":
                response = try execGeneric(requestData: argData, funct: self.getAuthorizationStatus)
                break
            case "RequestAuthorization":
                response = try execGeneric(requestData: argData, funct: self.requestAuthorization)
                break
            case "FetchTopLevelUserCollections":
                response = try execGeneric(requestData: argData, funct: self.fetchTopLevelUserCollections)
                break
            case "FetchCollectionsInCollectionList":
                response = try execGeneric(requestData: argData, funct: self.fetchCollectionsInCollectionList)
                break
            case "FetchAssetsInCollection":
                response = try execGeneric(requestData: argData, funct: self.fetchAssetsInCollection)
                break
            case "FetchAssets":
                response = try execGeneric(requestData: argData, funct: self.fetchAssets)
                break
            case "Trigger":
                response = try execGeneric(requestData: argData, funct: self.trigger)
                break
            case "RequestImageForAsset":
                response = try execGeneric(requestData: argData, funct: self.requestImageForAsset)
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
    
    private func fetchCollectionsInCollectionList(_ request: FlutterPhotokit_FetchCollectionsInCollectionListRequest) -> Promise<FlutterPhotokit_FetchCollectionsInCollectionListResponse> {
        return Promise {seal in
            var response = FlutterPhotokit_FetchCollectionsInCollectionListResponse()
            let options = request.hasOptions ? convert(request.options) : nil
            let collections = PHCollectionList.fetchCollectionLists(withLocalIdentifiers: [request.collectionListLocalIdentifier], options: nil)
            guard collections.count == 1 else {
                seal.reject(MyError.runtimeError("PHCollectionList with id \(request.collectionListLocalIdentifier) cannot be loaded to enumerate collections within"))
                return
            }
            response.fetchResult.results.append(contentsOf: try! convert(PHCollection.fetchCollections(in: collections[0], options: options)))
            seal.fulfill(response)
        }
    }
    
    private func getAuthorizationStatus(_ request: FlutterPhotokit_GetAuthorizationStatusRequest) -> Promise<FlutterPhotokit_GetAuthorizationStatusResponse> {
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
    
    private func requestAuthorization(_ request: FlutterPhotokit_RequestAuthorizationRequest) -> Promise<FlutterPhotokit_RequestAuthorizationResponse> {
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
    
    private func fetchAssetsInCollection(_ request: FlutterPhotokit_FetchAssetsInCollectionRequest) -> Promise<FlutterPhotokit_FetchAssetsInCollectionResponse> {
        return Promise {seal in
            var response = FlutterPhotokit_FetchAssetsInCollectionResponse()
            let options = request.hasOptions ? convert(request.options) : nil
            let collections = PHAssetCollection.fetchAssetCollections(withLocalIdentifiers: [request.collectionLocalIdentifier], options: nil)
            guard collections.count == 1 else {
                seal.reject(MyError.runtimeError("PHCollection with id \(request.collectionLocalIdentifier) cannot be loaded to enumerate assets within"))
                return
            }
            response.fetchResult.results.append(contentsOf: convert(PHAsset.fetchAssets(in: collections[0], options: options)))
            seal.fulfill(response)
        }
    }
    
    private func fetchAssets(_ request: FlutterPhotokit_FetchAssetsRequest) -> Promise<FlutterPhotokit_FetchAssetsResponse> {
        return Promise {seal in
            var response = FlutterPhotokit_FetchAssetsResponse()
            let assets = PHAsset.fetchAssets(with: nil)
            response.fetchResult.results.append(contentsOf: convert(assets))
            seal.fulfill(response)
        }
    }
    
    private func requestImageForAsset(_ request:FlutterPhotokit_RequestImageForAssetRequest) -> Promise<FlutterPhotokit_RequestImageForAssetResponse> {
        return Promise { seal in
            let options = PHImageRequestOptions()
            options.resizeMode = .fast
            options.isNetworkAccessAllowed = true
            options.deliveryMode = .highQualityFormat
            let assets = PHAsset.fetchAssets(withLocalIdentifiers: [request.assetLocalIdentifier], options: nil)
            guard assets.count == 1 else {
                seal.reject(MyError.runtimeError("PHAsset with id \(request.assetLocalIdentifier) cannot be loaded to fetch image"))
                return
            }
            PHImageManager.default().requestImage(for: assets[0], targetSize: CGSize(width: 100, height: 100), contentMode: .aspectFill, options: options) { (result, info) in
                let downloadFinished = !(info![PHImageCancelledKey] as? Bool ?? false) && info![PHImageErrorKey]  == nil
                if (!downloadFinished) {
                    return
                }
                let data = UIImageJPEGRepresentation(result!, 100)
                var response = FlutterPhotokit_RequestImageForAssetResponse()
                response.imageData = data!
                seal.fulfill(response)
            }
        }
    }
    
    private func convert(_ input: PHFetchResult<PHAsset>) -> [FlutterPhotokit_PHAsset] {
        var output:[FlutterPhotokit_PHAsset] = []
        for i in 0..<input.count {
            output.append(convert(input[i]))
        }
        return output
    }
    
    private func convert(_ input: PHAsset) -> FlutterPhotokit_PHAsset {
        var output = FlutterPhotokit_PHAsset()
        output.base = convert(input as PHObject)
        output.mediaType = convert(input.mediaType)
        output.pixelWidth = Int64(input.pixelWidth)
        output.pixelHeight = Int64(input.pixelHeight)
        if let creationDate =  input.creationDate {
            output.creationDate = Google_Protobuf_Timestamp(date: creationDate)
        }
        if let modificationDate =  input.modificationDate {
            output.modificationDate = Google_Protobuf_Timestamp(date: modificationDate)
        }
        if let location = input.location {
            output.location = convert(location)
        }
        output.duration = Google_Protobuf_Duration(timeInterval: input.duration)
        output.isFavorite = input.isFavorite
        output.isHidden = input.isHidden
        if #available(iOS 11.0, *) {
            output.playbackStyle = convert(input.playbackStyle)
        }
        if let burstIdentifier = input.burstIdentifier {
            output.burstIdentifier = burstIdentifier
        }
        output.representsBurst = input.representsBurst
        return output
    }
    
    private func convert(_ input: PHAssetMediaType) -> FlutterPhotokit_PHAssetMediaType {
        switch input {
        case .unknown:
            return .unknown
        case .image:
            return .image
        case .video:
            return .video
        case .audio:
            return .audio
        }
    }
    
    @available(iOS 11.0, *)
    private func convert(_ input:PHAsset.PlaybackStyle) -> FlutterPhotokit_PHAssetPlaybackStyle {
        switch input {
        case .unsupported:
            return .unsupported
        case .image:
            return .image
        case .imageAnimated:
            return .imageAnimated
        case .livePhoto:
            return .livePhoto
        case .video:
            return .video
        case .videoLooping:
            return .videoLooping
        }
    }
    
    private func convert(_ input: PHFetchResult<PHCollection>) throws  -> [FlutterPhotokit_AssetCollectionOrCollectionList] {
        var output:[FlutterPhotokit_AssetCollectionOrCollectionList] = []
        for i in 0..<input.count {
            var elt = FlutterPhotokit_AssetCollectionOrCollectionList()
            let res = input[i]
            switch res {
            case let collectionList as PHCollectionList:
                elt.collectionList = convert(collectionList)
                break;
            case let assetCollection as PHAssetCollection:
                elt.assetCollection = convert(assetCollection)
                break;
            default:
                throw MyError.runtimeError("unsupported type in collection")
            }
            output.append(elt)
        }
        return output
    }
    
    private func convert(_ input: FlutterPhotokit_PHFetchOptions) -> PHFetchOptions {
        let options = PHFetchOptions()
        options.includeAllBurstAssets = input.includeAllBurstAssets
        options.includeHiddenAssets = input.includeHiddenAssets
        return options
    }
    
    private func fetchTopLevelUserCollections(_ request: FlutterPhotokit_FetchTopLevelUserCollectionsRequest) -> Promise<FlutterPhotokit_FetchTopLevelUserCollectionsResponse> {
        return Promise {seal in
            let options = request.hasFetchOptions ? convert(request.fetchOptions) : nil
            let topLevelCollections = PHCollection.fetchTopLevelUserCollections(with: options)
            var response = FlutterPhotokit_FetchTopLevelUserCollectionsResponse()
            response.result.results.append(contentsOf: try convert(topLevelCollections))
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
    
    private func trigger(_ request: FlutterPhotokit_TriggerRequest) -> Promise<FlutterPhotokit_TriggerResponse> {
        return Promise { seal in
            
            seal.fulfill(FlutterPhotokit_TriggerResponse())
        }
    }
}

enum MyError: Error {
    case runtimeError(String)
}
