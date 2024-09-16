import 'package:flutter/material.dart';
import '../profile_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String profileScreen = '/profile_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    profileScreen: (context) => ProfileScreen(),
    initialRoute: (context) => ProfileScreen()
  };
}
