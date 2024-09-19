import 'package:flutter/material.dart';
import '../reply_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String replyScreen = '/reply_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    replyScreen: (context) => ReplyScreen(),
    initialRoute: (context) => ReplyScreen()
  };
}
