import 'nav_fix_platform_interface.dart';

class NavFix {
  /// Goes back to the previous screen registered in the navigation history.
  static void pop() {
    return NavFixPlatform.instance.pop();
  }
}
