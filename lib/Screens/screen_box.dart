// Screens/screen_box.dart
import 'package:flutter/material.dart';
import 'package:massage/widgets/bottomcontroler.dart';

class ScreenBox extends StatelessWidget {
  final Widget content;
  const ScreenBox({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: content,
        )));
  }
}
