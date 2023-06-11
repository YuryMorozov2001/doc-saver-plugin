import 'doc_saver_platform_interface.dart';

class DocSaver {
  Future<String?> getDownloadPath() {
    return DocSaverPlatform.instance.getDownloadPath();
  }
}
