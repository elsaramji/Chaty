// widgets/button_elevated.dart
import 'package:flutter/material.dart';

// widgets/button_elevated.dart

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const CustomElevatedButton({super.key, required this.title, this.onPressed});

  @override
/// Builds an [ElevatedButton] widget with a custom style, onPressed callback, and a centered [Text] child.
///
/// The button's style is obtained from the current [Theme] using [Theme.of(context).elevatedButtonTheme.style].
/// The button's onPressed callback is set to the provided [onPressed] callback.
/// The button's child is a [SizedBox] with a width of [double.maxFinite], a height of 50, and a centered [Text] child.
/// The [Text] child displays the provided [title] and uses the current [Theme]'s [TextTheme.headlineSmall] style.
///
/// Parameters:
/// - `context`: The [BuildContext] in which the widget is being built.
///
/// Returns:
/// An [ElevatedButton] widget with the specified style, onPressed callback, and child.
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
      onPressed: onPressed,
      child: SizedBox(
          width: double.maxFinite,
          height: 50,
          child: Center(
              child: Text(title,
                  style: Theme.of(context).textTheme.headlineSmall))),
    );
  }
}
