// widgets/button_elevated.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
// widgets/button_elevated.dart

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  final String title;
  VoidCallback? onPressed;
  CustomElevatedButton({super.key, required this.title, this.onPressed});

  @override
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
