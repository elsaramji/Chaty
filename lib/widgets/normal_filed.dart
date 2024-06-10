// widgets/normal_filed.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:massage/widgets/decortion_init.dart';
// widgets/normal_filed.dart

class TextfiledNormal extends StatelessWidget {
  final String title;
  final Function(String)? onChanged;
  final String? Function(String?) onValied;
  Icon? sficon;
  VoidCallback? onPressedicon;
  TextfiledNormal({
    super.key,
    this.onPressedicon,
    this.sficon,
    required this.title,
    required this.onChanged,
    required this.onValied,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
            : SizedBox(),
        enabledBorder: Decortioninputer.bordertextfiled,
        focusedBorder: Decortioninputer.bordertextfiled,
        errorBorder: Decortioninputer.errorbordertextfiled,
        focusedErrorBorder: Decortioninputer.errorbordertextfiled,
      ),
    );
  }
}
