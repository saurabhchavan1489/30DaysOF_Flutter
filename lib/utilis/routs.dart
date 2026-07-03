import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';

final routes = {
  MyRouts.loginrout: (context) => const LoginPage(),
  MyRouts.homerout: (context) => const HomePage(),
};

class MyRouts {
  static String loginrout = "/login";
  static String homerout = "/homerout";
}
