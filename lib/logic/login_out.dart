// logic/login_out.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:massage/Screens/login_screen.dart';
import 'package:massage/widgets/snack_bar.dart';

class LoginOut {
  static   Future<void> loginOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
    } catch (e) {
      Snackmassage.snackException(context, e.toString());
    }
  }
}
