import 'package:flutter/material.dart';
import '../concert_card_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String concertCardScreen = '/concert_card_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    concertCardScreen: (context) => ConcertCardScreen(),
    initialRoute: (context) => ConcertCardScreen()
  };
}
