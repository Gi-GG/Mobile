import 'package:flutter/material.dart';
import '../star_rating_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String starRatingScreen = '/star_rating_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    starRatingScreen: (context) => StarRatingScreen(),
    initialRoute: (context) => StarRatingScreen()
  };
}
