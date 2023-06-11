import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doc_saver/doc_saver_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDocSaver platform = MethodChannelDocSaver();
  const MethodChannel channel = MethodChannel('doc_saver');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getDownloadPath(), '42');
  });
}
