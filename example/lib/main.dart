import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_photokit/flutter_photokit.dart';
import 'package:flutter_photokit/proto/photokit.pb.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthorizationStatus _platformVersion;
  FlutterPhotokit plugin = FlutterPhotokit();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    AuthorizationStatus status;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      status = await plugin.authorizationStatus;
    } on PlatformException {
      status = AuthorizationStatus.RESTRICTED;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Running on: $_platformVersion\n'),
              RaisedButton(
                child: Text("request auth"),
                onPressed: () async {
                  plugin
                      .requestAuth()
                      .then((data) => setState(() => _platformVersion = data));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
