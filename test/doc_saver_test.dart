import 'package:flutter_test/flutter_test.dart';
import 'package:doc_saver/doc_saver.dart';
import 'package:doc_saver/doc_saver_platform_interface.dart';
import 'package:doc_saver/doc_saver_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDocSaverPlatform
    with MockPlatformInterfaceMixin
    implements DocSaverPlatform {
  @override
  Future<String?> getDownloadPath() => Future.value('42');
}

void main() {
  final DocSaverPlatform initialPlatform = DocSaverPlatform.instance;

  test('$MethodChannelDocSaver is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDocSaver>());
  });

  test('getPlatformVersion', () async {
    DocSaver docSaverPlugin = DocSaver();
    MockDocSaverPlatform fakePlatform = MockDocSaverPlatform();
    DocSaverPlatform.instance = fakePlatform;

    expect(await docSaverPlugin.getDownloadPath(), '42');
  });
}
