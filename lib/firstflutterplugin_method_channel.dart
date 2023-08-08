import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'firstflutterplugin_platform_interface.dart';

/// An implementation of [FirstflutterpluginPlatform] that uses method channels.
class MethodChannelFirstflutterplugin extends FirstflutterpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('firstflutterplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
