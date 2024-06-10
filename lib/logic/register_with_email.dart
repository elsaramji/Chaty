import 'package:flutter/material.dart';
import 'package:massage/widgets/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

// logic/register_with_email.dart

class RegisterWithEmail {
  String? email;
  String? password;
  String? name;
  final GlobalKey<FormState> formkey;
  RegisterWithEmail(
      {required this.email,
      required this.password,
      required this.formkey,
      required this.name});
  Future<UserCredential?> regesterWithEmail(BuildContext context) async {
    if (formkey.currentState!.validate() &&
        email != null &&
        password != null &&
        name != null) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );

        FirebaseAuth.instance.currentUser!.updateDisplayName(name!);
        Snackmassage.snackException(context, "user created");
        return credential;
      } on FirebaseAuthException catch (e) {
        Snackmassage.snackException(context, e.message.toString());
      } catch (ex) {
        Snackmassage.snackException(context, ex.toString());
      }
    }
    Snackmassage.snackException(context, "error input");
    return null;
  }
}
