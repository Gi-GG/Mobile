import 'package:flutter/material.dart';
import '../followers_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String followersScreen = '/followers_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    followersScreen: (context) => FollowersScreen(),
    initialRoute: (context) => FollowersScreen()
  };
}
