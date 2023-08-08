import 'package:flutter_test/flutter_test.dart';
import 'package:firstflutterplugin/firstflutterplugin.dart';
import 'package:firstflutterplugin/firstflutterplugin_platform_interface.dart';
import 'package:firstflutterplugin/firstflutterplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirstflutterpluginPlatform
    with MockPlatformInterfaceMixin
    implements FirstflutterpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FirstflutterpluginPlatform initialPlatform = FirstflutterpluginPlatform.instance;

  test('$MethodChannelFirstflutterplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFirstflutterplugin>());
  });

  test('getPlatformVersion', () async {
    Firstflutterplugin firstflutterpluginPlugin = Firstflutterplugin();
    MockFirstflutterpluginPlatform fakePlatform = MockFirstflutterpluginPlatform();
    FirstflutterpluginPlatform.instance = fakePlatform;

    expect(await firstflutterpluginPlugin.getPlatformVersion(), '42');
  });
}
