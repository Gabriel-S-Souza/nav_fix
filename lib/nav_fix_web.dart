// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'nav_fix_platform_interface.dart';

class NavFixWeb extends NavFixPlatform {
  NavFixWeb();

  static void registerWith(Registrar registrar) {
    NavFixPlatform.instance = NavFixWeb();
  }

  @override
  void pop() {
    window.history.back();
  }

  @override
  void updateUrl(String url) {
    window.history.pushState(null, '', url);
  }
}
