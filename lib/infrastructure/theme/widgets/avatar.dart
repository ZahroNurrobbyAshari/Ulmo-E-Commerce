// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/size.dart';

class Avatar extends StatelessWidget {
  String imagePath;
  bool isUploaded, isLarge, isMedium, isLight;

  double large = 56;
  double medium = 36;
  double light = 24;

  Avatar({
    this.isLarge = false,
    this.isMedium = false,
    this.isLight = false,
    this.isUploaded = true,
    this.imagePath = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        width: (isLarge == true)
            ? getProportionateScreenWidth(large)
            : (isMedium == true)
                ? getProportionateScreenWidth(medium)
                : (isLight == true)
                    ? getProportionateScreenWidth(light)
                    : getProportionateScreenWidth(medium),
        height: (isLarge == true)
            ? getProportionateScreenHeight(large)
            : (isMedium == true)
                ? getProportionateScreenHeight(medium)
                : (isLight == true)
                    ? getProportionateScreenHeight(light)
                    : getProportionateScreenHeight(medium),
        child: ClipOval(
          child: Image.asset(
            (imagePath == "") ? "assets/icons/camera.svg" : imagePath,
          ),
        ),
      ),
    );
  }
}
