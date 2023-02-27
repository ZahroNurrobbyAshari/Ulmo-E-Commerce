// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../utils/size.dart';
import '../utils/typography.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget {
  final String type, title, subtitle, iconImage, actionLabel, buttonLabel;
  final bool leftIcon, transparent, large;
  final void onPress;

  const CustomAppBar({
    required this.type,
    this.title = '',
    this.subtitle = '',
    this.iconImage = 'icons/heart.svg',
    required this.leftIcon,
    required this.transparent,
    required this.large,
    this.actionLabel = 'actionLabel',
    required this.onPress,
    this.buttonLabel = 'buttonLabel',
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  late Color bgColor;

  @override
  Widget build(BuildContext context) {
    Size().init(context);

    // check transparent
    if ((widget.transparent == true)) {
      bgColor = Colors.transparent;
    } else {
      bgColor = CollorPallete.white;
    }

    return (widget.large == false) ? _buildSmallButton() : _buildLargeButton();
  }

  Widget _buildLargeButton() {
    return Container(
      padding: EdgeInsets.only(
          right: getProportionateScreenWidth(16),
          left: getProportionateScreenWidth(16),
          top: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(186),
      color: bgColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // left icon
              if (widget.leftIcon == true)
                InkWell(
                  // onTap: () => print('tapped'),
                  onTap: () => Get.back(),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset(
                      'icons/arrow-left.svg',
                      width: getProportionateScreenWidth(24),
                      height: getProportionateScreenHeight(24),
                    ),
                  ),
                )
              else
                SizedBox(
                  width: getProportionateScreenWidth(30),
                ),

              // 3rd column
              if (widget.type == 'icon')
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    widget.iconImage,
                    width: getProportionateScreenWidth(24),
                    height: getProportionateScreenHeight(24),
                  ),
                )
              else if (widget.type == 'action')
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    constraints: BoxConstraints.tightFor(
                        width: getProportionateScreenWidth(79),
                        height: getProportionateScreenHeight(36)),
                    child: TextButton(
                      onPressed: widget.onPress as void Function()?,
                      child: Text(
                        widget.actionLabel,
                        style: bodyStyle(
                          isPrimaryText: true,
                          fontWeight: 'regular',
                          body: 1,
                        ),
                      ),
                    ),
                  ),
                )
              else if (widget.type == 'button')
                Container(
                  constraints: BoxConstraints.tightFor(
                      width: getProportionateScreenWidth(79),
                      height: getProportionateScreenHeight(36)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(
                                        color: CollorPallete.charizard400))),
                        backgroundColor: MaterialStateProperty.all(
                            CollorPallete.charizard400)),
                    onPressed: widget.onPress as void Function()?,
                    child: Text(
                      widget.buttonLabel,
                      style: bodyStyle(
                        isPrimaryText: true,
                        fontWeight: 'regular',
                        body: 1,
                      ),
                    ),
                  ),
                )
              else
                SizedBox(
                  width: getProportionateScreenWidth(30),
                ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
              style: headingStyle(
                isPrimaryText: true,
                fontWeight: 'semibold',
                heading: 1,
              ),
            ),
          ),
          if (widget.subtitle != '')
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.subtitle,
                style: bodyStyle(
                    isPrimaryText: false, fontWeight: "regular", body: 1),
              ),
            )
          else
            SizedBox(
              height: 0,
            )
        ],
      ),
    );
  }

  Widget _buildSmallButton() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
      height: getProportionateScreenHeight(100),
      color: bgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // first column
          if (widget.leftIcon == true)
            InkWell(
              // onTap: () => print('tapped'),
              onTap: () => Get.back(),
              child: Container(
                clipBehavior: Clip.antiAlias,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SvgPicture.asset(
                  'icons/arrow-left.svg',
                  width: getProportionateScreenWidth(24),
                  height: getProportionateScreenHeight(24),
                ),
              ),
            )
          else
            SizedBox(
              width: getProportionateScreenWidth(30),
            ),
          // 2nd column
          if (widget.subtitle == '')
            Container(
              child: Text(
                widget.title,
                style: bodyStyle(
                  isPrimaryText: true,
                  fontWeight: 'regular',
                  body: 1,
                ),
              ),
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    widget.title,
                    style: bodyStyle(
                      isPrimaryText: true,
                      fontWeight: 'regular',
                      body: 1,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    widget.subtitle,
                    style: bodyStyle(
                      isPrimaryText: false,
                      fontWeight: 'regular',
                      body: 3,
                    ),
                  ),
                )
              ],
            ),

          // 3rd column
          if (widget.type == 'icon')
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset(
                widget.iconImage,
                width: getProportionateScreenWidth(24),
                height: getProportionateScreenHeight(24),
              ),
            )
          else if (widget.type == 'action')
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                constraints: BoxConstraints.tightFor(
                    width: getProportionateScreenWidth(79),
                    height: getProportionateScreenHeight(36)),
                child: TextButton(
                  onPressed: widget.onPress as void Function()?,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(4)),
                    child: Text(
                      widget.actionLabel,
                      style: bodyStyle(
                        isPrimaryText: true,
                        fontWeight: 'regular',
                        body: 1,
                      ),
                    ),
                  ),
                ),
              ),
            )
          else if (widget.type == 'button')
            Container(
              constraints: BoxConstraints.tightFor(
                  width: getProportionateScreenWidth(79),
                  height: getProportionateScreenHeight(36)),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side:
                                BorderSide(color: CollorPallete.charizard400))),
                    backgroundColor:
                        MaterialStateProperty.all(CollorPallete.charizard400)),
                onPressed: widget.onPress as void Function()?,
                child: Container(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(4)),
                  child: Text(
                    widget.buttonLabel,
                    style: bodyStyle(
                      isPrimaryText: true,
                      fontWeight: 'regular',
                      body: 1,
                    ),
                  ),
                ),
              ),
            )
          else
            SizedBox(
              width: getProportionateScreenWidth(30),
            ),
        ],
      ),
    );
  }
}
