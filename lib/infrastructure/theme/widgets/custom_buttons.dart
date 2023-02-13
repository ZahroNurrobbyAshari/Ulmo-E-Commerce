// ignore_for_file: non_constant_identifier_names, unrelated_type_equality_checks, deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/infrastructure/theme/size.dart';
import 'package:flutter_application_1/infrastructure/theme/colors.dart';
import '../theme/typography.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtons extends StatelessWidget {
  bool? isActive, isLarge;
  String buttonType, iconImage, iconPosition, label;
  final Function? press;

  CustomButtons({
    required this.isActive,
    required this.isLarge,
    required this.buttonType,
    required this.label,
    this.iconImage = "",
    required this.iconPosition,
    required this.press,
    super.key,
  });

  Widget disabledText() {
    return Text(
      label,
      style: bodyStyle(isPrimaryText: false, fontWeight: "regular", body: 1),
    );
  }

  Widget enabledText() {
    return Text(
      label,
      style: bodyStyle(isPrimaryText: true, fontWeight: "regular", body: 1),
    );
  }

  Widget stuckRightIcon() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (isActive == true) ? enabledText() : disabledText(),
        SizedBox(
          width: getProportionateScreenWidth(6),
        ),
        SvgPicture.asset(
          iconImage,
          height: (isLarge == true)
              ? getProportionateScreenHeight(24)
              : getProportionateScreenHeight(18),
          width: (isLarge == true)
              ? getProportionateScreenWidth(24)
              : getProportionateScreenWidth(18),
          color: (isActive == true)
              ? CollorPallete.black
              : CollorPallete.girantina500,
        ),
      ],
    );
  }

  Widget stuckLeftIcon() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconImage,
          height: (isLarge == true)
              ? getProportionateScreenHeight(24)
              : getProportionateScreenHeight(18),
          width: (isLarge == true)
              ? getProportionateScreenWidth(24)
              : getProportionateScreenWidth(18),
          color: (isActive == true)
              ? CollorPallete.black
              : CollorPallete.girantina500,
        ),
        SizedBox(
          width: getProportionateScreenWidth(6),
        ),
        (isActive == true) ? enabledText() : disabledText(),
      ],
    );
  }

  Widget RightIcon() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(0),
        ),
        (isActive == true) ? enabledText() : disabledText(),
        SvgPicture.asset(
          iconImage,
          height: (isLarge == true)
              ? getProportionateScreenHeight(24)
              : getProportionateScreenHeight(18),
          width: (isLarge == true)
              ? getProportionateScreenWidth(24)
              : getProportionateScreenWidth(18),
          color: (isActive == true)
              ? CollorPallete.black
              : CollorPallete.girantina500,
        ),
      ],
    );
  }

  Widget LeftIcon() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          iconImage,
          height: (isLarge == true)
              ? getProportionateScreenHeight(24)
              : getProportionateScreenHeight(18),
          width: (isLarge == true)
              ? getProportionateScreenWidth(24)
              : getProportionateScreenWidth(18),
          color: (isActive == true)
              ? CollorPallete.black
              : CollorPallete.girantina500,
        ),
        (isActive == true) ? enabledText() : disabledText(),
        SizedBox(
          width: getProportionateScreenWidth(0),
        ),
      ],
    );
  }

  Widget primaryButton() {
    return InkWell(
      onTap: (isActive == false) ? () {} : press as void Function()?,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: (isLarge == true)
            ? getProportionateScreenHeight(64)
            : getProportionateScreenHeight(36),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: (isActive == true)
              ? CollorPallete.charizard400
              : CollorPallete.girantina300,
        ),
        child: (iconImage == "")
            ? Center(
                child: (isActive == "true") ? enabledText() : disabledText())
            : (iconPosition == "right")
                ? RightIcon()
                : (iconPosition == "left")
                    ? LeftIcon()
                    : (iconPosition == "stuckRight")
                        ? stuckRightIcon()
                        : (iconPosition == "stuckLeft")
                            ? stuckLeftIcon()
                            : Center(
                                child: enabledText(),
                              ),
      ),
    );
  }

  Widget secondaryButton() {
    return InkWell(
      onTap: (isActive == false) ? () {} : press as void Function()?,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: (isLarge == true)
            ? getProportionateScreenHeight(64)
            : getProportionateScreenHeight(36),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: (isActive == true)
              ? CollorPallete.girantina100
              : CollorPallete.girantina300,
        ),
        child: (iconImage == "")
            ? Center(
                child: (isActive == "true") ? enabledText() : disabledText())
            : (iconPosition == "right")
                ? RightIcon()
                : (iconPosition == "left")
                    ? LeftIcon()
                    : (iconPosition == "stuckRight")
                        ? stuckRightIcon()
                        : (iconPosition == "stuckLeft")
                            ? stuckLeftIcon()
                            : Center(
                                child: (isActive == "true")
                                    ? enabledText()
                                    : disabledText(),
                              ),
      ),
    );
  }

  Widget outlineButton() {
    return InkWell(
      onTap: (isActive == false) ? () {} : press as void Function()?,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: (isLarge == true)
            ? getProportionateScreenHeight(64)
            : getProportionateScreenHeight(36),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: CollorPallete.white,
            border: Border.all(
                style: BorderStyle.solid,
                width: getProportionateScreenWidth(2),
                color: (isActive == true)
                    ? CollorPallete.black
                    : CollorPallete.girantina500)),
        child: (iconImage == "")
            ? Center(
                child: (isActive == "true") ? enabledText() : disabledText())
            : (iconPosition == "right")
                ? RightIcon()
                : (iconPosition == "left")
                    ? LeftIcon()
                    : (iconPosition == "stuckRight")
                        ? stuckRightIcon()
                        : (iconPosition == "stuckLeft")
                            ? stuckLeftIcon()
                            : Center(
                                child: (isActive == "true")
                                    ? enabledText()
                                    : disabledText(),
                              ),
      ),
    );
  }

  Widget ghostButton() {
    return InkWell(
      onTap: (isActive == false) ? () {} : press as void Function()?,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: (isLarge == true)
            ? getProportionateScreenHeight(64)
            : getProportionateScreenHeight(36),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: CollorPallete.white,
          border: Border.all(
            color: CollorPallete.white,
          ),
        ),
        child: (iconImage == "")
            ? Center(
                child: (isActive == "true") ? enabledText() : disabledText())
            : (iconPosition == "right")
                ? RightIcon()
                : (iconPosition == "left")
                    ? LeftIcon()
                    : (iconPosition == "stuckRight")
                        ? stuckRightIcon()
                        : (iconPosition == "stuckLeft")
                            ? stuckLeftIcon()
                            : Center(
                                child: (isActive == "true")
                                    ? enabledText()
                                    : disabledText(),
                              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (buttonType == "primary")
        ? primaryButton()
        : (buttonType == "secondary")
            ? secondaryButton()
            : (buttonType == "outline")
                ? outlineButton()
                : (buttonType == "ghost")
                    ? outlineButton()
                    : primaryButton();
  }
}
