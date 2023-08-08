import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'firstflutterplugin_method_channel.dart';

abstract class FirstflutterpluginPlatform extends PlatformInterface {
  /// Constructs a FirstflutterpluginPlatform.
  FirstflutterpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FirstflutterpluginPlatform _instance = MethodChannelFirstflutterplugin();

  /// The default instance of [FirstflutterpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFirstflutterplugin].
  static FirstflutterpluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FirstflutterpluginPlatform] when
  /// they register themselves.
  static set instance(FirstflutterpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
