// logic/login_with_email.dart
import 'package:flutter/material.dart';
import 'package:massage/widgets/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

// logic/login_with_email.dart

class LoginWithEmail {
  Future<UserCredential?> loginWithEmail(
    BuildContext context, {
    required GlobalKey<FormState> formkey,
    required String? email,
    required String? password,
  }) async {
    if (formkey.currentState!.validate() && email != null && password != null) {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        Snackmassage.snackException(context, "user created");
        return credential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Snackmassage.snackException(
              context, "'No user found for that email.");
        } else if (e.code == 'wrong-password') {
          Snackmassage.snackException(
              context, 'Wrong password provided for that user.');
        }
      } catch (ex) {
        Snackmassage.snackException(context, ex.toString());
      }
    }
    Snackmassage.snackException(context, "input error");
    return null;
  }
}
