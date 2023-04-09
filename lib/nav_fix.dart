import 'nav_fix_platform_interface.dart';

class NavFix {
  /// Goes back to the previous screen registered in the navigator history.
  static void pop() {
    return NavFixPlatform.instance.pop();
  }
}
