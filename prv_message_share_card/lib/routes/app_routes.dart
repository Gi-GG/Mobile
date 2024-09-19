import 'package:flutter/material.dart';
import '../prv_message_share_card_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String prvMessageShareCardScreen =
      '/prv_message_share_card_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    prvMessageShareCardScreen: (context) => PrvMessageShareCardScreen(),
    initialRoute: (context) => PrvMessageShareCardScreen()
  };
}
