import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/endpoints/routes.dart';
import 'package:flutter_application_1/global/themes/theme.dart';
import 'package:flutter_application_1/modules/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ulmo',
        initialRoute: SplashView.routeName,
        routes: routes,
        theme: theme());
  }
}
