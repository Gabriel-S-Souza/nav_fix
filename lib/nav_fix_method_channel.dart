import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nav_fix_platform_interface.dart';

/// An implementation of [NavFixPlatform] that uses method channels.
class MethodChannelNavFix extends NavFixPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nav_fix');

  @override
  Future<void> pop() async {}
}
