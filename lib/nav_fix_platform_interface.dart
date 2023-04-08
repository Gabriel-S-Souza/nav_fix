import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nav_fix_method_channel.dart';

abstract class NavFixPlatform extends PlatformInterface {
  /// Constructs a NavFixPlatform.
  NavFixPlatform() : super(token: _token);

  static final Object _token = Object();

  static NavFixPlatform _instance = MethodChannelNavFix();

  /// The default instance of [NavFixPlatform] to use.
  ///
  /// Defaults to [MethodChannelNavFix].
  static NavFixPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NavFixPlatform] when
  /// they register themselves.
  static set instance(NavFixPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  void pop();
}
