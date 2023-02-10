// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/common/custom_buttons.dart';
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
      body: Container(
        margin: EdgeInsets.all(5),
        child: CustomButtons(
          isActive: true,
          isLarge: false,
          buttonType: "secondary",
          label: "Test",
          iconPosition: "right",
          press: () {},
          iconImage: 'assets/icons/star.svg',
        ),
      ),
    );
  }
}
