// widgets/bottomcontroler.dart

import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';

class BottomControler extends StatelessWidget {
  final VoidCallback? onPressed;
  const BottomControler({super.key, required this.onPressed});

  @override

  /// Builds the widget tree for the bottom app bar.
  ///
  /// The [context] parameter is the build context for the widget.
  ///
  /// Returns a [BottomAppBar] widget that represents the bottom app bar.
  /// The height of the bottom app bar is calculated using the [Sizer.percentHeight] method,
  /// with the provided [context] and a percentage of 10. The elevation is set to 1.
  /// The color of the bottom app bar is set to [kColorbackgroundbutton].
  /// The child of the bottom app bar is a [Row] widget with [MainAxisAlignment.spaceAround] alignment.
  /// The row contains two [IconButton] widgets.
  /// The first icon button displays an [Icon] with the [Icons.add] icon and a tooltip of 'new chat'.
  /// The onPressed callback for the first icon button is set to the provided [onPressed] callback.
  /// The second icon button displays an [Icon] with the [Icons.logout_outlined] icon and a tooltip of 'logout'.
  /// The onPressed callback for the second icon button is an empty function.
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: Sizer.percentHeight(context: context, percent: 10),
        elevation: 1,
        color: kColorbackgroundbutton,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: const Icon(color: kColorbackgroundLight, Icons.add),
              tooltip: 'new chat',
              onPressed: onPressed),
          IconButton(
              icon: const Icon(
                Icons.logout_outlined,
                color: kColorbackgroundLight,
              ),
              tooltip: 'logout',
              onPressed: () {})
        ]));
  }
}
