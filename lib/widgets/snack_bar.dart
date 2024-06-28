// widgets/snack_bar.dart
import 'package:flutter/material.dart';

import 'package:massage/logic/constans.dart';
// widgets/snack_bar.dart

class Snackmassage {
  /// Displays a snackbar with the given error message [e] on the [context].
  ///
  /// The snackbar is displayed using the [ScaffoldMessenger] and is styled
  /// with the [kColorSnackBarText] and [kColorSnackBarBackground] colors. The
  /// snackbar is displayed with a floating behavior and has a width of 25% of
  /// the screen width. The snackbar also has rounded corners with a border
  /// radius of 25.
  ///
  /// Parameters:
  /// - [context]: The build context used to display the snackbar.
  /// - [e]: The error message to be displayed in the snackbar.
  ///
  /// Returns: None.
  static void snackException(BuildContext context, String e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Center(
          child: Text(
        e,
        style: const TextStyle(
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
