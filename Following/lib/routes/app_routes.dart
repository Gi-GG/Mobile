import 'package:flutter/material.dart';
import '../following_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String followingScreen = '/following_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    followingScreen: (context) => FollowingScreen(),
    initialRoute: (context) => FollowingScreen()
  };
}
