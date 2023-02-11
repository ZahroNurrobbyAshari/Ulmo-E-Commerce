import 'package:flutter/material.dart';
import '../../../global/utils/typography.dart';
import '../../../global/utils/colors.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CollorPallete.charizard300,
      child: Center(
        child: Text(
          "ulmo",
          style: headingStyle(
              isPrimaryText: true, fontWeight: "semibold", heading: 1),
        ),
      ),
    );
  }
}
