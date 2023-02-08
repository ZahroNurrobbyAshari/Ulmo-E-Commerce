// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../global/utils/size.dart';

class SplashView extends StatelessWidget {
  static String routeName = "/splash";

  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Size().init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("test"),
        ),
        // body: Body(),
        body: Text("splashview"));
  }
}
