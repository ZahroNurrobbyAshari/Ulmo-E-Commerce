import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/theme/utils/size.dart';
import 'colors.dart';

// semibold heading
TextStyle headingStyle({
  required bool? isPrimaryText,
  bool isItalic = false,
  required String? fontWeight,
  required int heading,
}) {
  return TextStyle(
    // if isPrimaryText true then black, else girantina500
    color: (isPrimaryText == true)
        ? CollorPallete.black
        : CollorPallete.girantina500,
    fontFamily: "Poppins",

    // if isItalic true then italic , else normal
    fontStyle: (isItalic == false) ? FontStyle.normal : FontStyle.italic,

    // if fontweight is semibopld then w600, else if regular then w400, else if light then w300 | default w400
    fontWeight: (fontWeight == "semibold")
        ? FontWeight.w600
        : (fontWeight == "regular")
            ? FontWeight.w400
            : (fontWeight == "light")
                ? FontWeight.w300
                : FontWeight.w400,

    //  if head is 0 then 48, else if 1 then 32, else if 2 then 24 | default 24
    fontSize: (heading == 0)
        ? getProportionateScreenWidth(48)
        : (heading == 1)
            ? getProportionateScreenWidth(32)
            : (heading == 2)
                ? getProportionateScreenWidth(24)
                : getProportionateScreenWidth(24),
  );
}

TextStyle bodyStyle({
  required bool? isPrimaryText,
  bool isItalic = false,
  required String? fontWeight,
  required int body,
}) {
  return TextStyle(
    // if isPrimaryText true then black, else girantina500
    color: (isPrimaryText == true)
        ? CollorPallete.black
        : CollorPallete.girantina500,

    fontFamily: "Poppins",

    // if isItalic true then italic , else normal
    fontStyle: (isItalic == false) ? FontStyle.normal : FontStyle.italic,

    // if fontweight is medium then w500, else if regular then w400, else if light then w300 | default w400
    fontWeight: (fontWeight == "medium")
        ? FontWeight.w500
        : (fontWeight == "regular")
            ? FontWeight.w400
            : (fontWeight == "light")
                ? FontWeight.w300
                : FontWeight.w400,

    //  if body is 0 then 18, else if 1 then 16, else if 2 then 14, else if 3 then 12 | default 16
    fontSize: (body == 0)
        ? getProportionateScreenWidth(18)
        : (body == 1)
            ? getProportionateScreenWidth(16)
            : (body == 2)
                ? getProportionateScreenWidth(14)
                : (body == 3)
                    ? getProportionateScreenWidth(12)
                    : getProportionateScreenWidth(16),
  );
}
