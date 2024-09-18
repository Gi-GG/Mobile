import 'package:flutter/material.dart';
import '../search_half_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String searchHalfScreen = '/search_half_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    searchHalfScreen: (context) => SearchHalfScreen(),
    initialRoute: (context) => SearchHalfScreen()
  };
}
