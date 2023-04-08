import 'nav_fix_platform_interface.dart';

class NavFix {
  static void pop() {
    return NavFixPlatform.instance.pop();
  }
}
