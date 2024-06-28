// Screens/builder_dialog.dart

import 'package:flutter/material.dart';
import 'package:massage/widgets/create_chat.dart';

class BuilderDialog {
  static void createContant(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CreateChat();
        });
  }
}
