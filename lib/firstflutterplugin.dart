
import 'firstflutterplugin_platform_interface.dart';

class Firstflutterplugin {
  Future<String?> getPlatformVersion() {
    return FirstflutterpluginPlatform.instance.getPlatformVersion();
  }
}
