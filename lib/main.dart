// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/dependency_injection.dart';
import 'package:flutter_application_1/presentation/screens.dart';

import 'package:get/get.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
  DependencyInjection.init();
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      initialBinding: SplashControllerBinding(),
      getPages: Nav.routes,
      unknownRoute: Nav.routes[2],
    );
  }
}
