// widgets/normal_filed.dart
import 'package:flutter/material.dart';
import 'package:massage/widgets/decortion_init.dart';
// widgets/normal_filed.dart

class TextfiledNormal extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  final String? Function(String?)? onValied;
  final Widget? sficon;
  final VoidCallback? onPressedicon;
  final TextEditingController? controller;
  const TextfiledNormal({
    super.key,
    this.onPressedicon,
    this.sficon,
    this.controller,
    this.onValied,
    required this.title,
    required this.onChanged,
  });

  @override
  /// Builds a [TextFormField] widget.
  ///
  /// The [TextFormField] widget is a form input field that allows users to enter
  /// text. It is typically used within a [Form] widget.
  ///
  /// The [controller] parameter is the [TextEditingController] that controls the
  /// text being edited.
  ///
  /// The [onChanged] parameter is a callback function that is called whenever the
  /// text in the field changes.
  ///
  /// The [onValied] parameter is a callback function that is called when the field
  /// loses focus. It is used to validate the input.
  ///
  /// The [sficon] parameter is the icon to be displayed as a suffix. If it is
  /// `null`, no suffix icon is displayed.
  ///
  /// The [onPressedicon] parameter is the callback function to be called when the
  /// suffix icon is pressed.
  ///
  /// The [title] parameter is the label for the input field.
  ///
  /// Returns a [TextFormField] widget.
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: onValied,
      decoration: InputDecoration(
        hintText: title,
        label: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        suffixIcon: sficon != null
            ? IconButton(
                icon: sficon!,
                onPressed: onPressedicon,
              )
            : const SizedBox(),
        enabledBorder: Decortioninputer.bordertextfiled,
        focusedBorder: Decortioninputer.bordertextfiled,
        errorBorder: Decortioninputer.errorbordertextfiled,
        focusedErrorBorder: Decortioninputer.errorbordertextfiled,
      ),
    );
  }
}
