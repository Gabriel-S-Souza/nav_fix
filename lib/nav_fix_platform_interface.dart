import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nav_fix_method_channel.dart';

abstract class NavFixPlatform extends PlatformInterface {
  NavFixPlatform() : super(token: _token);

  static final Object _token = Object();

  static NavFixPlatform _instance = MethodChannelNavFix();

  static NavFixPlatform get instance => _instance;

  static set instance(NavFixPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  void pop();

  void updateUrl(String url);
}
