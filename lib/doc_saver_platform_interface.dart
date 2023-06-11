import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'doc_saver_method_channel.dart';

abstract class DocSaverPlatform extends PlatformInterface {
  /// Constructs a DocSaverPlatform.
  DocSaverPlatform() : super(token: _token);

  static final Object _token = Object();

  static DocSaverPlatform _instance = MethodChannelDocSaver();

  /// The default instance of [DocSaverPlatform] to use.
  ///
  /// Defaults to [MethodChannelDocSaver].
  static DocSaverPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DocSaverPlatform] when
  /// they register themselves.
  static set instance(DocSaverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getDownloadPath() {
    throw UnimplementedError('getDownloadPath() has not been implemented.');
  }
}
