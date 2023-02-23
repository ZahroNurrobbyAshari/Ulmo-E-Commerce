import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/colors.dart';

import 'package:get/get.dart';
import '../../infrastructure/theme/utils/typography.dart';
import '../../infrastructure/theme/utils/size.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size().init(context);
    return Scaffold(
      body: Container(
        color: CollorPallete.charizard300,
        child: Center(
          child: Text(
            'Ulmo',
            style: headingStyle(
                isPrimaryText: true, fontWeight: "semibold", heading: 1),
          ),
        ),
      ),
    );
  }
}
