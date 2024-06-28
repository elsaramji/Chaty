// widgets/pasword_filed.dart
import 'package:flutter/material.dart';
import '../widgets/decortion_init.dart';
// widgets/pasword_filed.dart

class TextfiledPassword extends StatefulWidget {
  final Function(String)? onChanged;
  final String? Function(String?) onValied;
  const TextfiledPassword({
    super.key,
    required this.onChanged,
    required this.onValied,
  });

  @override
  State<TextfiledPassword> createState() => _TextfiledPasswordState();
}

class _TextfiledPasswordState extends State<TextfiledPassword> {
  bool obscureText = true;
  void showpassword() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override

  /// Builds the widget tree for this [TextFormField] widget.
  ///
  /// The [TextFormField] widget is used to collect user input. It has a [validator]
  /// function to validate the input, an [onChanged] function to be called when the
  /// input changes, and a [decoration] to customize the appearance of the input.
  ///
  /// The [validator] function is called when the input changes and returns a string
  /// if the input is invalid. The [onChanged] function is called when the input changes
  /// and is passed the new value of the input. The [decoration] is an [InputDecoration]
  /// that customizes the appearance of the input.
  ///
  /// The [enabledBorder], [focusedBorder], [errorBorder], and [focusedErrorBorder]
  /// properties of the [InputDecoration] are used to customize the appearance of the
  /// input when it is enabled, focused, has an error, and is focused with an error,
  /// respectively. The [suffixIcon] property is an [IconButton] that shows a visibility
  /// icon and toggles the visibility of the input when pressed.
  ///
  /// The [obscureText] property is a boolean that determines whether the input is
  /// obscured or not. It is initially set to `true`.
  ///
  /// Returns a [TextFormField] widget.
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.onValied,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: "password",
        label: const Text(
          "password",
          style: TextStyle(color: Colors.black),
        ),
        enabledBorder: Decortioninputer.bordertextfiled,
        focusedBorder: Decortioninputer.bordertextfiled,
        errorBorder: Decortioninputer.errorbordertextfiled,
        focusedErrorBorder: Decortioninputer.errorbordertextfiled,
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: showpassword,
        ),
      ),
      obscureText: obscureText,
    );
  }
}
