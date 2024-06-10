// widgets/snack_bar.dart
import 'package:flutter/material.dart';

import 'package:massage/logic/constans.dart';
// widgets/snack_bar.dart

class Snackmassage {
  static void snackException(BuildContext context, String e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(
          child: Text(
        e,
        style: TextStyle(
          color: kColorSnackBarText,
          fontSize: 12.5,
        ),
      )),
      /* padding:
          const EdgeInsets.only(right: 100, left: 100, top: 10, bottom: 10),*/
      behavior: SnackBarBehavior.floating,
      width: MediaQuery.of(context).size.width * 0.25,
      backgroundColor: kColorSnackBarBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ));
  }
}
