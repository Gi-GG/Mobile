import 'package:flutter/material.dart';
import '../music_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String musicScreen = '/music_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    musicScreen: (context) => MusicScreen(),
    initialRoute: (context) => MusicScreen()
  };
}
