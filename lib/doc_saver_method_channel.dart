import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'doc_saver_platform_interface.dart';

/// An implementation of [DocSaverPlatform] that uses method channels.
class MethodChannelDocSaver extends DocSaverPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('doc_saver');

  @override
  Future<String?> getDownloadPath() async {
    final downloadPath =
        await methodChannel.invokeMethod<String>('getDownloadPath');
    return downloadPath;
  }
}
