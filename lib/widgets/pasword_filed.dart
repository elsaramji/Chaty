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
