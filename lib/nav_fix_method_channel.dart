import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nav_fix_platform_interface.dart';

class MethodChannelNavFix extends NavFixPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('nav_fix');

  @override
  Future<void> pop() async {}
}
