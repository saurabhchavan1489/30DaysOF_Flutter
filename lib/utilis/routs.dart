import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.widgets/home_page.dart' hide HomePage;
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/widgets/Titan_header.dart' show HomePage;

class MyRoutes {
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
  static const String helplineRoute = '/helpline';
}

final Map<String, WidgetBuilder> routes = {
  MyRoutes.loginRoute: (context) => const LoginPage(),
  MyRoutes.homeRoute: (context) => const HomePage(),
  // Additional routes can be added here as needed.
};