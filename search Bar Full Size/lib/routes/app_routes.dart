import 'package:flutter/material.dart';
import '../frame_8399_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String frame8399Screen = '/frame_8399_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    frame8399Screen: (context) => Frame8399Screen(),
    initialRoute: (context) => Frame8399Screen()
  };
}
