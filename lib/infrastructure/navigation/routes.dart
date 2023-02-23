import 'package:flutter/material.dart';

class Routes {
  static Future<String> get initialRoute async {
    return SPLASH;
  }

  static const HOME = '/home';
  static const SPLASH = '/splash';
  static const UNKNOWN = '/unknown';
}
