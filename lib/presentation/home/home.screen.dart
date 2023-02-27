// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/infrastructure/theme/utils/colors.dart';
import 'package:get/get.dart';
import '../../infrastructure/theme/widgets/custom_app_bar.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: CustomAppBar(
          type: "plane",
          title: "Title",
          subtitle: "Subtitle",
          // iconImage: "icons/heart.svg",
          leftIcon: true,
          transparent: true,
          large: true,
          actionLabel: 'Action',
          buttonLabel: 'Button',
          // ignore: void_checks
          onPress: () {
            print('tapped');
          },
        ),
      ),
      body: Center(
        child: Text(
          'HomeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
