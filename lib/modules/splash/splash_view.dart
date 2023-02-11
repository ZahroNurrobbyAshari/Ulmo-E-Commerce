// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/splash/widgets/body.dart';
import '../../global/utils/size.dart';

class SplashView extends StatelessWidget {
  static String routeName = "/splash";

  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Size().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
