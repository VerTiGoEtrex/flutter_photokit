import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_photokit/flutter_photokit.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthorizationStatus _authorizationStatus =
      AuthorizationStatus.AUTHORIZATION_STATUS_NOT_DETERMINED;
  FlutterPhotokit plugin = FlutterPhotokit();

  @override
  void initState() {
    super.initState();
    initAuthState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initAuthState() async {
    AuthorizationStatus status;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      status = await plugin.requestAuth();
    } on PlatformException catch (e) {
      print("Error getting auth status: $e");
      status = AuthorizationStatus.AUTHORIZATION_STATUS_INVALID;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _authorizationStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    final rootPage = _authorizationStatus ==
            AuthorizationStatus.AUTHORIZATION_STATUS_AUTHORIZED
        ? CollectionListPage()
        : UnauthedPage(_authorizationStatus);
    return Provider.value(
      value: plugin,
      child: MaterialApp(
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case "collectionList":
              return MaterialPageRoute(
                  settings: settings,
                  builder: (ctx) => CollectionListPage(
                      collectionList: settings.arguments as PHCollectionList));
            case "assetCollection":
              return MaterialPageRoute(
                  settings: settings,
                  builder: (ctx) => AssetCollectionPage(
                      assetCollection:
                          settings.arguments as PHAssetCollection));

            case "asset":
              return MaterialPageRoute(
                settings: settings,
                builder: (ctx) =>
                    AssetPage(asset: settings.arguments as PHAsset),
              );
            default:
              throw Exception("unexpected route name ${settings.name}");
          }
        },
        home: rootPage,
      ),
    );
  }

  Future<void> recurse(
      List<AssetCollectionOrCollectionList> res, int indent) async {
    final indentStr = Iterable.generate(indent, (i) => "\t").join() + "|";
    void printt(Object object) {
      String objStr = "$object";
      print("\n$indentStr${objStr.replaceAll("\n", "\n$indentStr")}");
    }

    for (final item in res) {
      if (item.hasAssetCollection()) {
        printt(item.assetCollection);
      } else if (item.hasCollectionList()) {
        printt("RECURSING ON LIST ${item.collectionList.base.localizedTitle}");
        recurse(
            await plugin.fetchCollectionsInCollectionList(item.collectionList),
            indent + 1);
        printt(
            "DONE RECURSING ON LIST ${item.collectionList.base.localizedTitle}");
      }
    }
  }
}

class UnauthedPage extends StatelessWidget {
  final AuthorizationStatus authorizationStatus;
  UnauthedPage(this.authorizationStatus);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    switch (authorizationStatus) {
      case AuthorizationStatus.AUTHORIZATION_STATUS_NOT_DETERMINED:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 16.0),
            Text("Waiting for user permission!"),
          ],
        );
      default:
        return Text(
          "App needs permission to access photos. Please fix this in settings! Current auth status is $authorizationStatus",
        );
    }
  }
}

class CollectionListPage extends StatelessWidget {
  final PHCollectionList collectionList;

  const CollectionListPage({Key key, this.collectionList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FlutterPhotokit>(
      builder: (BuildContext context, FlutterPhotokit plugin, Widget _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(collectionList?.base?.localizedTitle ?? "Albums"),
          ),
          body: FutureBuilder<List<AssetCollectionOrCollectionList>>(
            future: collectionList != null
                ? plugin.fetchCollectionsInCollectionList(collectionList)
                : plugin.fetchTopLevelUserCollections(),
            builder: (BuildContext context,
                AsyncSnapshot<List<AssetCollectionOrCollectionList>> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot?.error}"),
                );
              } else if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(getIcon(snapshot.data[index])),
                      title: Text(getTitle(snapshot.data[index])),
                      onTap: () => navTo(context, snapshot.data[index]),
                    );
                  },
                  padding: MediaQuery.of(context).padding,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        );
      },
    );
  }

  static IconData getIcon(AssetCollectionOrCollectionList data) {
    return data.hasCollectionList() ? Icons.grid_on : Icons.list;
  }

  static String getTitle(AssetCollectionOrCollectionList data) {
    return data.hasAssetCollection()
        ? data.assetCollection.base.localizedTitle
        : data.collectionList.base.localizedTitle;
  }

  static navTo(BuildContext context, AssetCollectionOrCollectionList data) {
    if (data.hasAssetCollection()) {
      Navigator.of(context)
          .pushNamed("assetCollection", arguments: data.assetCollection);
    } else {
      Navigator.of(context)
          .pushNamed("collectionList", arguments: data.collectionList);
    }
  }
}

class AssetCollectionPage extends StatelessWidget {
  final PHAssetCollection assetCollection;

  const AssetCollectionPage({Key key, @required this.assetCollection})
      : assert(assetCollection != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FlutterPhotokit>(
      builder: (BuildContext context, FlutterPhotokit plugin, Widget _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(assetCollection?.base?.localizedTitle),
          ),
          body: FutureBuilder<List<PHAsset>>(
            future: plugin.fetchAssetsInCollection(assetCollection),
            builder:
                (BuildContext context, AsyncSnapshot<List<PHAsset>> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot?.error}"),
                );
              } else if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(getContents(snapshot.data[index])),
                      onTap: () => navTo(context, snapshot.data[index]),
                      onLongPress: () =>
                          displayInfo(context, snapshot.data[index]),
                      subtitle: Text(snapshot.data[index].mediaType.toString()),
                    );
                  },
                  padding: MediaQuery.of(context).padding,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        );
      },
    );
  }

  static String getContents(PHAsset data) {
    return data.base.localIdentifier;
  }

  static displayInfo(BuildContext context, PHAsset data) {
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(data.toString()),
        ),
      );
  }

  static navTo(BuildContext context, PHAsset data) {
    Navigator.of(context).pushNamed("asset", arguments: data);
  }
}

class AssetPage extends StatelessWidget {
  final PHAsset asset;

  const AssetPage({Key key, this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FlutterPhotokit>(
      builder: (BuildContext context, FlutterPhotokit plugin, Widget _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(asset.creationDate.toDateTime().toString()),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: FutureBuilder<MetadataNode>(
                  future: plugin.requestMetadataForAsset(asset),
                  builder: (BuildContext context,
                      AsyncSnapshot<MetadataNode> snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot?.error}"),
                      );
                    } else if (snapshot.hasData) {
                      final dateData = extractDates(snapshot.data);
                      return SingleChildScrollView(
                        child: Text(
                          dateData.toString(),
                          softWrap: true,
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              Expanded(
                child: FutureBuilder<List<PHAssetResource>>(
                  future: plugin.assetResourcesForAsset(asset),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<PHAssetResource>> snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot?.error}"),
                      );
                    } else if (snapshot.hasData) {
                      return SingleChildScrollView(
                        child: Text(
                          snapshot.data.toString(),
                          softWrap: true,
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              Expanded(
                child: FutureBuilder<Uint8List>(
                  future: plugin.requestImage(asset),
                  builder: (BuildContext context,
                      AsyncSnapshot<Uint8List> snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("${snapshot?.error}"),
                      );
                    } else if (snapshot.hasData) {
                      return Center(
                        child: Image.memory(snapshot.data),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Map<String, DateTime> extractDates(final MetadataNode root) {
    // TODO: [{GPS}: [TimeStamp]]
    print(root);
    Map<String, DateTime> dates = {};
    final IPTCnode = root.children["{IPTC}"];
    if (IPTCnode != null) {
      // {IPTC}: [DateCreated, TimeCreated, DigitalCreationDate, DigitalCreationTime]
      if ((IPTCnode.leafs["DateCreated"]?.hasStringValue() ?? false) &&
          (IPTCnode.leafs["TimeCreated"]?.hasStringValue() ?? false)) {
        dates["IPTC/Created"] = DateTime.parse(
            IPTCnode.leafs["DateCreated"].stringValue +
                " " +
                IPTCnode.leafs["TimeCreated"].stringValue);
      }
      if ((IPTCnode.leafs["DigitalCreationDate"]?.hasStringValue() ?? false) &&
          (IPTCnode.leafs["DigitalCreationTime"]?.hasStringValue() ?? false)) {
        dates["IPTC/DigitalCreation"] = DateTime.parse(
            IPTCnode.leafs["DigitalCreationDate"].stringValue +
                " " +
                IPTCnode.leafs["DigitalCreationTime"].stringValue);
      }
    }
    final TIFFnode = root.children["{TIFF}"];
    if (TIFFnode != null) {
      // {TIFF}: [DateTime]
      if (TIFFnode.leafs["DateTime"]?.hasStringValue() ?? false) {
        var formatter = DateFormat("yyyy:MM:DD HH:mm:ss");
        dates["TIFF/DateTime"] =
            formatter.parse(TIFFnode.leafs["DateTime"].stringValue);
      }
    }
    final EXIFnode = root.children["{Exif}"];
    if (EXIFnode != null) {
      // {Exif}: [DateTimeOriginal, DateTimeDigitized, SubsecTime, SubsecTimeDigitized]
      final formatter = DateFormat("yyyy:MM:DD HH:mm:ss");
      if (EXIFnode.leafs["DateTimeOriginal"]?.hasStringValue() ?? false) {
        dates["EXIF/DateTimeOriginal"] = formatter.parse(
            EXIFnode.leafs["DateTimeOriginal"].stringValue +
                ((EXIFnode.leafs["SubsecTime"]?.hasStringValue() ?? false)
                    ? ".${EXIFnode.leafs["SubsecTime"].stringValue}"
                    : ""));
      }
      if (EXIFnode.leafs["DateTimeDigitized"]?.hasStringValue() ?? false) {
        dates["EXIF/DateTimeDigitized"] = formatter.parse(EXIFnode
                .leafs["DateTimeDigitized"].stringValue +
            ((EXIFnode.leafs["SubsecTimeDigitized"]?.hasStringValue() ?? false)
                ? ".${EXIFnode.leafs["SubsecTimeDigitized"].stringValue}"
                : ""));
      }
    }
    final PNGnode = root.children["{PNG}"];
    if (PNGnode != null) {
      // {PNG}: [Creation Time, ModificationTime]
      if (PNGnode.leafs["CreationTime"]?.hasStringValue() ?? false) {
        dates["PNG/CreationTime"] =
            DateTime.parse(PNGnode.leafs["CreationTime"].stringValue);
      }
      if (PNGnode.leafs["ModificationTime"]?.hasStringValue() ?? false) {
        dates["PNG/ModificationTime"] =
            DateTime.parse(PNGnode.leafs["ModificationTime"].stringValue);
      }
    }
    return dates;
  }
}
