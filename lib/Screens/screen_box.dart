// Screens/screen_box.dart
import 'package:flutter/material.dart';

class ScreenBox extends StatelessWidget {
  final Widget content;
  const ScreenBox({super.key, required this.content});

  @override
  /// Builds the widget tree for this [ScreenBox].
  ///
  /// The [BuildContext] is used to access the current build environment.
  ///
  /// Returns a [Scaffold] widget that contains a [SafeArea] widget with a
  /// [Padding] widget as its child. The [Padding] widget has an 8.0 pixel
  /// padding on all sides and wraps around the [content] widget.
  ///
  /// The [content] widget is the main content of the screen.
  ///
  /// This method does not take any parameters.
  ///
  /// Returns a [Widget] representing the built widget tree.
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: content,
    )));
  }
}
