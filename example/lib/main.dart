import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:doc_saver/doc_saver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String _downloadPath = 'Unknown';

  @override
  void initState() {
    super.initState();
    getDownloadPath();
  }

  Future<void> getDownloadPath() async {
    late String downloadPath;
    try {
      downloadPath =
          await DocSaver().getDownloadPath() ?? 'Unknown download path';
    } on PlatformException {
      downloadPath = 'Failed to get platform download path.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _downloadPath = downloadPath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green[50]),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'download path:\n$_downloadPath',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
