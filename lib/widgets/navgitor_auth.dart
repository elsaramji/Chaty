// widgets/navgitor_auth.dart
import 'package:flutter/material.dart';
// widgets/navgitor_auth.dart

// ignore: must_be_immutable
class NavigetorAuth extends StatelessWidget {
  final String qusetion;
  final String answer;
  VoidCallback onTap;
  NavigetorAuth({
    super.key,
    required this.onTap,
    required this.qusetion,
    required this.answer,
  });

  @override
  // Builds a row widget with a text widget displaying the question styled with a font size of 12, black color, and italic font style. 
  // Additionally, a GestureDetector widget is included with a text widget displaying the answer styled with a font size of 12 and a custom color.
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          qusetion,
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontStyle: FontStyle.italic),
        ),
        GestureDetector(
            onTap: onTap,
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xff35d97e),
              ),
            )),
      ],
    );
  }
}
