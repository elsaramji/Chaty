// widgets/bottomcontroler.dart
import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/logic/screen_Size_contorl.dart';

class BottomControler extends StatelessWidget {
  const BottomControler({super.key});

  @override

  /// Builds the bottom app bar for the application.
  ///
  /// The bottom app bar contains two IconButton widgets:
  /// - The first button navigates to the [SelecetStateViwe] screen when pressed.
  /// - The second button navigates to the [Addingcityview] screen when pressed.
  ///
  /// The bottom app bar has a height of 60, an elevation of 1, a shadow color of [0xff202B3B], and a background color of [0xff0B131E].
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: Sizer.percentHeight(context: context, percent: 10),
        elevation: 1,
        color: kColorbackgroundbutton,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: const Icon(color: kColorbackgroundLight, Icons.add),
              tooltip: 'new chat',
              onPressed: () {}),
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
