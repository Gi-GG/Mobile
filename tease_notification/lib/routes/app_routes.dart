import 'package:flutter/material.dart';
import '../tease_notification_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String teaseNotificationScreen = '/tease_notification_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    teaseNotificationScreen: (context) => TeaseNotificationScreen(),
    initialRoute: (context) => TeaseNotificationScreen()
  };
}
