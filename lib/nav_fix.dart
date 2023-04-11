import 'nav_fix_platform_interface.dart';

/// Plugin to work around Modular 5.0.3 history loss issue in Flutter Web.
class NavFix {
  /// Goes back to the previous page registered in the navigator history.
  static void pop() {
    return NavFixPlatform.instance.pop();
  }

  /// Updates the URL without changing the current page.
  static void updateUrl(String url) {
    return NavFixPlatform.instance.updateUrl(url);
  }
}
