// widgets/logo_bulider.dart
import 'package:flutter/material.dart';
import 'package:massage/logic/screen_Size_contorl.dart';

class Logobuilder extends StatelessWidget {
  const Logobuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/massage.png",
      height: Sizer.percentHeight(context: context, percent: 15),
    );
  }
}
