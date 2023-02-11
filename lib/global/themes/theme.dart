import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/utils/colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: CollorPallete.white,
    fontFamily: "Poppins",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
